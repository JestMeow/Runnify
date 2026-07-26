# Runnify
Runnify is a simple command-line launcher for managing and running Linux AppImages (or other files) from a single directory.

It helps you organize your AppImages (or other files) into folders and launches them by name.

## Usage
To launch an AppImage (or other file), run the script in the following format:

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
├── run.conf
└── scripts
    └── runnify
```

`run.conf` contains a key-value pair of app name (or folder name), and the name of the file to run, or the command to run. in the form of `<folder name>=<file name | command>`. `<folder name>` is not case-sensitive, i.e., it can be exclusively small letters, while the folder contains capital letters.

An example can be seen in `run.conf.example`.

If the 'value' is a command, it will run the command with the given `<folder name>` as the working directory.


## Requirements
- Linux
- Python 3
- AppImage Application(s)

Also, this script assumes you have Python 3 to be available at `/bin/python3`.

## Why do This?
I originally made this because I was too lazy to figure out how to create a desktop icon for XFCE... *actually, I don't really use desktop shortcuts. I like my desktop as empty as my wallet.*

