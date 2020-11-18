
import csv, git, re

map = open("tmc.map", "r")

src = 0
asm = 0
srcData = 0
data = 0

for line in map:
    reg = re.compile(r"^ \.(\w+)\s+0x[0-9a-f]+\s+(0x[0-9a-f]+) (\w+)\/(.+)\.o")
    matches = reg.split(line)

    if (len(matches) < 5):
        continue

    section = matches[1]
    size = int(matches[2], 16)
    direc = matches[3]
    basename = matches[4]

    # From original script, not sure what this is doing...
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

srcPct = "%.4f" % (100 * src / total)
asmPct = "%.4f" % (100 * asm / total)

srcDataPct = "%.4f" % (100 * srcData / dataTotal)
dataPct = "%.4f" % (100 * data / dataTotal)

version = 1
git_object = git.Repo().head.object
timestamp = str(git_object.committed_date)
git_hash = git_object.hexsha

####################################################

csv_list = [str(version), timestamp, git_hash, str(srcPct), str(asmPct), str(srcDataPct), str(dataPct)]

print(",".join(csv_list))