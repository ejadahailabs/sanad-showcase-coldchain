#!/usr/bin/env python3
"""Crop a rendered view PNG to its drawing (the headless screenshot is a fixed 3200 x 2400 window). Usage: crop-png.py <png>..."""
import sys
from PIL import Image, ImageChops
for p in sys.argv[1:]:
    im = Image.open(p).convert("RGB"); bg = im.getpixel((im.width - 1, im.height - 1))
    bb = ImageChops.difference(im, Image.new("RGB", im.size, bg)).getbbox()
    if bb: im.crop((max(0, bb[0] - 10), max(0, bb[1] - 10), min(im.width, bb[2] + 10), min(im.height, bb[3] + 10))).save(p)
