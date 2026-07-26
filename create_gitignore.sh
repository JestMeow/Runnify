#!/bin/bash


TARGET_DIR=$(pwd)


echo "Creating .gitignore in the following:"

find "$TARGET_DIR" -type f \( -name "*.AppImage" -o -name "*.jar" \) | while read -r file; do
    dir=$(dirname "$file")
    
    if [ "$dir" = "$TARGET_DIR" ]; then
        continue
    fi

    echo "- $dir" 
    echo "*" > "$dir/.gitignore"
    
    git rm -r --cached "$dir" 2>/dev/null || true
done


