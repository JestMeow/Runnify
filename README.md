# Runnify
Runnify is a simple command-line "launcher" for managing and running executables such as AppImages, jar files, binaries, etc from a single directory.

It helps you organize your executables into folders and launches them by name.

## Usage
To run an executable, run the script in the following format:

```bash
runnify <app name>
```

Here, `<app name>` is the name of the folder containing the AppImage (or other file). It is not case-sensitive. For example, `runnify freeCad` is the same as `runnify FrEeCaD`.

## Directory Structure
An example folder structure can be seen below.

```
.
├── FreeCAD
│   └── FreeCAD_1.1.1-Linux-x86_64-py311.AppImage
├── LibreCAD
│   ├── dark.qss
│   └── LibreCAD-v2.2.1.5-x86_64.AppImage
├── MuseScore
│   └── MuseScore-Studio-4.7.4.260706075-x86_64.AppImage
├── ProjectLibre
│   └── projectlibre-1.9.8.jar
├── runnify.toml
└── scripts
    └── runnify
```

## Configuration
Runnify reads its configuration from `runnify.toml`.

The file contains two sections:
- `[executables]`, which maps application name to the executable file that should be run.
- `[commands]` , which maps application name to a shell command that should be executed.

Here's an example:
```toml
[executables]
musescore = "*.AppImage"

[commands]
projectlibre = "java -jar *.jar"

```

More examples can be seen in `runnify.toml.example`


## Requirements
- Linux
- Python 3

Also, this script assumes you have Python 3 to be available at `/bin/python3`.

## Why do This?
I originally made this because I was too lazy to figure out how to create a desktop icon for XFCE... *actually, I don't really use desktop shortcuts. I like my desktop as empty as my wallet.*

