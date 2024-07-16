#!/bin/bash

# Check if the ./aruco_tags folder exists
if [ ! -d "./aruco_tags" ]; then
    # If it doesn't exist, create it
    mkdir ./aruco_tags
else
    # If it exists, clear its contents
    rm -rf ./aruco_tags/*
fi

# Execute the command to get aruco tag PDF
python ./scripts/gen_aruco_tag_pdf.py -o ./aruco_tags

python ./scripts/gen_charuco_board.py -o ./aruco_tags/charuco_board.pdf

echo "Aruco tags and charuco board generated in ./aruco_tags folder."