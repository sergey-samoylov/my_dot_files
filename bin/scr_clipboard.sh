#!/usr/bin/env bash

# makes screenshot and reads what is written
mkdir -p ~/Pictures/work/tmp
cd ~/Pictures/work/tmp
import clipboard.png
tesseract clipboard.png - | xclip  
