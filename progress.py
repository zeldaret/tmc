
import csv, git, re, argparse, os
from itertools import chain
map = open("tmc.map", "r")

src = 0
asm = 0
srcData = 0
data = 0

parser = argparse.ArgumentParser()
parser.add_argument("-m", "--matching", dest='matching', action='store_true', help="Output matching progress instead of decompilation progress")
args = parser.parse_args()
matching = args.matching

NON_MATCHING_PATTERN = r'((?<=NONMATCH\(")asm/non_matching/.*\.inc)|((?<=NONMATCH\(")asm/non_matching/.*\.s)'
NON_ASM_PATTERN = r'(^\w+:)|(^\s@)|(^\s*\.)|(^\s*thumb_func_start)'

#def remInvalid(x):

def GetNonMatchingFunctions(files):
    functions = []

    for file in files:
        with open(file) as f:
            functions += re.findall(NON_MATCHING_PATTERN, f.read())

    #functions = map(lambda x: x != "", functions)
    return functions

def ReadAllLines(fileName):
    lineList = list()
    with open(fileName) as f:
        lineList = f.readlines()

    return lineList

def GetFiles(path, ext):
    files = []
    for r, d, f in os.walk(path):
        for file in f:
            if file.endswith(ext):
                files.append(os.path.join(r, file))

    return files

nonMatchingFunctions = GetNonMatchingFunctions(GetFiles("src", ".c")) if not args.matching else []

# this is actually the size of all non matching asm, not (total - non matching)
def GetNonMatchingSize(path):
    size = 0

    asmFiles = GetFiles(path, ".s") + GetFiles(path, ".inc")

    for asmFilePath in asmFiles:
        for x in nonMatchingFunctions: # stupid tuple
            if asmFilePath in x:
                asmLines = ReadAllLines(asmFilePath)

                for asmLine in asmLines:
                    if len(re.findall(NON_ASM_PATTERN, asmLine, re.DOTALL)) == 0:
                        size += 2

    return size

nonMatchingASM = GetNonMatchingSize("asm/non_matching")

for line in map:
    reg = re.compile(r"^ \.(\w+)\s+0x[0-9a-f]+\s+(0x[0-9a-f]+) (\w+)\/(.+)\.o")
    matches = reg.split(line)

    if (len(matches) < 5):
        continue

    section = matches[1]
    size = int(matches[2], 16)
    direc = matches[3]
    basename = matches[4]

    # alignment? idk
    if (size & 3):
        size += 4 - (size % 3)

    if (section == "text"):
        if (direc == "src"):
            src += size
        elif (direc == "asm"):
            asm += size
    elif (section == "rodata"):
        if (direc == "src"):
            srcData += size
        elif (direc == "data"):
            data += size

total = src + asm
dataTotal = srcData + data

if matching:
    srcPct = "%.4f" % (100 * (src) / total)
    asmPct = "%.4f" % (100 * (asm) / total)
else:
    srcPct = "%.4f" % (100 * (src + nonMatchingASM) / total)
    asmPct = "%.4f" % (100 * (asm - nonMatchingASM) / total)


srcDataPct = "%.4f" % (100 * srcData / dataTotal)
dataPct = "%.4f" % (100 * data / dataTotal)

version = 1
git_object = git.Repo().head.object
timestamp = str(git_object.committed_date)
git_hash = git_object.hexsha

####################################################

csv_list = [str(version), timestamp, git_hash, str(srcPct), str(asmPct), str(srcDataPct), str(dataPct)]

print(",".join(csv_list))
