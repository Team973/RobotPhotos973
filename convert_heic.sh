#!/bin/bash

# Ask the user to confirm if they have installed ImageMagick and findutils
read -p "Have you installed ImageMagick and findutils? (y/n) " choice
if [ "$choice" == "n" ]; then
    echo "Please install ImageMagick and findutils and try again."
    exit 1
fi

# Ask for the year
read -p "Please enter the year: " year

cd $year

find . -type f -iname '*.heic' -exec sh -c 'mogrify -format jpg "{}" && rm "{}"' \;

echo "Success!"
