#!/bin/sh
python3 -m nuitka --mingw64 --onefile --assume-yes-for-downloads --output-dir=build --script-name=src/app.py --enable-plugin=tk-inter --windows-disable-console