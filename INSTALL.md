# Install
This repository does not include any of the games assets.
To build the game using the decomp you need an original baserom for each version you want to build.
Put them with the appropriate filename into the repository root directory. 
The supported versions are:

| Version               | Filename               | SHA1                                       |
|-----------------------|------------------------|--------------------------------------------|
| USA (project default) | `baserom.gba`          | `b4bd50e4131b027c334547b4524e2dbbd4227130` |
| EU                    | `baserom_eu.gba`       | `cff199b36ff173fb6faf152653d1bccf87c26fb7` |
| JP                    | `baserom_jp.gba`       | `6c5404a1effb17f481f352181d0f1c61a2765c5d` |
| USA (Demo)            | `baserom_demo_usa.gba` | `63fcad218f9047b6a9edbb68c98bd0dec322d7a1` |
| JP (Demo)             | `baserom_demo_jp.gba`  | `9cdb56fa79bba13158b81925c1f3641251326412` |

## Prerequisites

| Linux | macOS                                     | Windows 10 (build 18917+)             | Windows 10 (1709+)                 | Windows 8, 8.1, and 10 (1507, 1511, 1607, 1703) |
|-------|-------------------------------------------|---------------------------------------|------------------------------------|-------------------------------------------------|
| none  | [Xcode Command Line Tools package][xcode] | [Windows Subsystem for Linux 2][wsl2] | [Windows Subsystem for Linux][wsl] | [Cygwin][cygwin]                                |

[xcode]: https://developer.apple.com/library/archive/technotes/tn2339/_index.html#//apple_ref/doc/uid/DTS40014588-CH1-DOWNLOADING_COMMAND_LINE_TOOLS_IS_NOT_AVAILABLE_IN_XCODE_FOR_MACOS_10_9__HOW_CAN_I_INSTALL_THEM_ON_MY_MACHINE_
[wsl2]: https://docs.microsoft.com/windows/wsl/wsl2-install
[wsl]: https://docs.microsoft.com/windows/wsl/install-win10
[cygwin]: https://cygwin.com/install.html

The [prerelease version of the Linux subsystem](https://docs.microsoft.com/windows/wsl/install-legacy) available in the 1607 and 1703 releases of Windows 10 is obsolete so consider uninstalling it.

Make sure that the `build-essential`, `git`, `python3`, `python3-pip`, `cmake` and `libpng-dev` packages are installed. The `build-essential` package includes the `make`, `gcc-core`, and `g++` packages, so they do not have to be obtained separately.

In the case of Cygwin, [include](https://cygwin.com/cygwin-ug-net/setup-net.html#setup-packages) the `make`, `git`, `gcc-core`, `gcc-g++`, and `libpng-devel` packages.

To build the games code, the `arm-none-eabi-gcc` compiler is required.
Both a standalone installation and [devkitPro](https://devkitpro.org/wiki/Getting_Started) are supported.
For devkitPro, install the `gba-dev` package.

If `arm-none-eabi-gcc` is not available through `PATH` use `TOOLCHAIN_PATH=<path>` to indicate its location.
This is not required for devkitPro, the `DEVKITARM` environment variable is used for auto-detection.

Install `python3` and the `pycparser` python package:
`pip3 install pycparser`

## Installation

To set up the repository:
```shell
git clone https://github.com/zeldaret/tmc
git clone https://github.com/pret/agbcc

cd ./agbcc
sh build.sh
sh install.sh ../tmc

cd ../tmc
make tools
```
To build `tmc.gba`:
```shell
make -j$(nproc)
```
>**Note:** If the build command is not recognized on Linux, including the Linux environment used within Windows, run `nproc` and replace `$(nproc)` with the returned value (e.g.: `make -j4`). Because `nproc` is not available on macOS, the alternative is `sysctl -n hw.ncpu`.

You can configure the game version built by using the `GAME_VERSION` variable (ie. `make GAME_VERSION=EU`).
Convenience targets for all 5 versions exist (`make usa eu jp demo_usa demo_jp`).
`make all` builds all 5 versions.

If you modify the game you need to do a custom build.
Use `CUSTOM=1` for that (any nonempty value will enable it, so `CUSTOM=0` will NOT disable it).
There is a convenience target `make custom` that does a custom USA build.

The `COMPARE` variable controls the SHA1 verification check.
It is enabled (`1`) for normal builds and disabled (`0`) for custom builds by default.

### Note for Mac users

The BSD make that comes with Mac XCode can be buggy, so obtain GNU make and sed using [Homebrew](https://brew.sh):
```shell
brew install make gnu-sed
```
When compiling agbcc, substitute the `build.sh` line for
```shell
gsed 's/^make/gmake/g' build.sh | sh
```
Finally, use `gmake` instead of `make` to compile the ROM(s).
