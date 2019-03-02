#!/bin/sh

echo "Enter the year:"
read year

cd $year

# Rename all *.JPG to *.jpg
for f in *.JPG; do 
    mv -- "$f" "${f%.JPG}.jpg"
done

echo "Success!"
