#!/bin/sh
python3 -m nuitka --mingw64 --onefile --assume-yes-for-downloads --output-dir=build --script-name=main.py --enable-plugin=tk-inter --windows-disable-console