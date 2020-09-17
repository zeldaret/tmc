# TMC-Strings
Extract, edit and pack string tables for `The Legend of Zelda: The Minish Cap`.

## Build requirements
* make
* gcc

## Usage
```
Usage: {} [options...]
Options:
  -x, --extract     Extract string table from ROM and store it in json format. (Default)
  -p, --pack        Pack a string table from json format.
  --region          Specify ROM region. [USA, EU]
  --source          Specify source (-x: ROM, -p: JSON)
  --dest            Specify string table destination.
  --size            Specify string table size.
```

## Extra tools

Requires:
* **us.gba** `sha1: b4bd50e4131b027c334547b4524e2dbbd4227130`
* **eu.gba** `sha1: cff199b36ff173fb6faf152653d1bccf87c26fb7`

command|result
---|---
`make all` | Build program
`make run` | `extract` and `pack`
`make extract` | extract the string table to editable json files
`make pack` | package the json files to string tables again
`make inject` | `pack` and inject these new tables in a rom copy
`make diff` | diff the dumped stringtables with the newly packed ones
`make diff-rom` | diff modified rom with supplied baserom