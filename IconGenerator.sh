#!/bin/bash
f=$(pwd)

# Delete any existing assets
rm -rf Output
mkdir Output

# iTunes
sips --resampleWidth 1024 "${f}/${1}" --out "${f}/Output/iTunesArtwork.png"

# Spotlight
sips --resampleWidth 58 "${f}/${1}" --out "${f}/Output/iPhoneSpotlight29@2x.png"
sips --resampleWidth 87 "${f}/${1}" --out "${f}/Output/iPhoneSpotlight29@3x.png"
sips --resampleWidth 80 "${f}/${1}" --out "${f}/Output/iPhoneSpotlight40@2x.png"
sips --resampleWidth 120 "${f}/${1}" --out "${f}/Output/iPhoneSpotlight40@3x.png"
sips --resampleWidth 40 "${f}/${1}" --out "${f}/Output/iPadSpotlight40.png"
sips --resampleWidth 80 "${f}/${1}" --out "${f}/Output/iPadSpotlight40@2x.png"

# App
sips --resampleWidth 120 "${f}/${1}" --out "${f}/Output/iPhoneApp60@2x.png"
sips --resampleWidth 180 "${f}/${1}" --out "${f}/Output/iPhoneApp60@3x.png"
sips --resampleWidth 76 "${f}/${1}" --out "${f}/Output/iPadApp76.png"
sips --resampleWidth 152 "${f}/${1}" --out "${f}/Output/iPadApp76@2x.png"

# Settings
sips --resampleWidth 29 "${f}/${1}" --out "${f}/Output/iPadSettings29.png"
sips --resampleWidth 58 "${f}/${1}" --out "${f}/Output/iPadSettings29@2x.png"

# Open the folder of created assets
open ./Output/