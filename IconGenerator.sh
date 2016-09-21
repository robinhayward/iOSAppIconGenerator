#!/bin/bash

# Path to source directory
SOURCE_DIRECTORY=$(pwd)
# Path to source directory
SOURCE_OUTPUT_DIRECTORY=${SOURCE_DIRECTORY}/Output/
# Path to source image
SOURCE_IMAGE_PATH=${SOURCE_DIRECTORY}/${1}

# Delete the existing Output folder
rm -rf Output

# Recreate the Output folder
mkdir Output

# iTunes
sips --resampleWidth 1024 $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}iTunesArtwork.png"

# iOS
sips --resampleWidth 40   $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}iPhoneNotification20@2x.png"
sips --resampleWidth 60   $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}iPhoneNotification20@3x.png"
sips --resampleWidth 58   $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}iPhoneSpotlight29@2x.png"
sips --resampleWidth 87   $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}iPhoneSpotlight29@3x.png"
sips --resampleWidth 80   $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}iPhoneSpotlight40@2x.png"
sips --resampleWidth 120  $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}iPhoneSpotlight40@3x.png"
sips --resampleWidth 120  $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}iPhoneApp60@2x.png"
sips --resampleWidth 180  $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}iPhoneApp60@3x.png"
sips --resampleWidth 20   $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}iPadNotification20.png"
sips --resampleWidth 40   $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}iPadNotification20@2x.png"
sips --resampleWidth 29   $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}iPadSettings29.png"
sips --resampleWidth 58   $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}iPadSettings29@2x.png"
sips --resampleWidth 40   $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}iPadSpotlight40.png"
sips --resampleWidth 80   $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}iPadSpotlight40@2x.png"
sips --resampleWidth 76   $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}iPadApp76.png"
sips --resampleWidth 152  $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}iPadApp76@2x.png"
sips --resampleWidth 167  $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}iPadProApp83.5@2x.png"

# MacOS
sips --resampleWidth 16   $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}Mac16.png"
sips --resampleWidth 32   $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}Mac16@2x.png"
sips --resampleWidth 32   $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}Mac32.png"
sips --resampleWidth 64   $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}Mac32@2x.png"
sips --resampleWidth 128  $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}Mac128.png"
sips --resampleWidth 256  $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}Mac128@2x.png"
sips --resampleWidth 256  $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}Mac256.png"
sips --resampleWidth 512  $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}Mac256@2x.png"
sips --resampleWidth 512  $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}Mac512.png"
sips --resampleWidth 1024 $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}Mac512@2x.png"

# WatchOS
sips --resampleWidth 48   $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}WatchNotification38mm@2x.png"
sips --resampleWidth 55   $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}WatchNotification42mm@2x.png"
sips --resampleWidth 58   $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}WatchCompanionSettings29@2x.png"
sips --resampleWidth 87   $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}WatchCompanionSettings29@3x.png"
sips --resampleWidth 40   $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}WatchHomeScreen40.png"
sips --resampleWidth 172  $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}WatchShortLook38mm@2x.png"
sips --resampleWidth 196  $SOURCE_IMAGE_PATH --out "${SOURCE_OUTPUT_DIRECTORY}WatchShortLook42mm@2x.png"

# Open the Output folder of created assets
open ./Output/
