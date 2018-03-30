#!/bin/bash

for file in *.JPG; do
    git mv -f "$file" "$(basename "$file" .JPG).jpg"
done
