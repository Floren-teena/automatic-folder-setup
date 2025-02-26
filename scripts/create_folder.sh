#!/bin/bash

# Loop to create 5 folders
for i in {1..5}; do
  folder_name="Folder$i"
  
  # Create the folder
  mkdir -p "$folder_name"
  
  # Check if the folder number is even or odd
  if (( i % 2 == 0 )); then
    # Create alpha.txt and beta.txt in even-numbered folders
    touch "$folder_name/alpha.txt" "$folder_name/beta.txt"
  fi
  else
    # Add a .gitkeep file to empty odd-numbered folders
    touch "$folder_name/.gitkeep"
  fi
done

echo "Folders and files created successfully."
