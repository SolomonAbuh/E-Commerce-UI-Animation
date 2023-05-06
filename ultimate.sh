#!/bin/bash

echo "STARTED !!!!!! 🔥"

FLUTTER_PROJECT_DIR=/Users/macbook/Documents/GitHub/MONEY-POINT-TAKE-HOME-TEST
# Define the directory to watch
while true; do
  # Search for files modified within the last 60 seconds
  modified_files=$(find "$FLUTTER_PROJECT_DIR" -type f -name "*.dart" -mmin -1 -print)

  # Loop through each modified file and add it to the staging area
  for file in $modified_files; do
    git add "$file"
    file_name=$(basename "$file")
    commit_message="update on $file_name 🛠"
  done

  # Add all untracked files to the staging area
  git add -A

  # Create a commit with a commit message that includes the name of the modified file
  git commit -m "$commit_message"

  # Wait for 120 seconds before searching for changes again
  sleep 300
done

# # Initialize an empty variable to store the last modified file path
# last_modified=""

# # Watch for changes to files in the project directory
# while true; do
#   # Find the most recently modified file
#   modified=$(find . -type f -name "*.dart" -mmin -1 | grep -v ".git" | grep -v "pubspec.lock" | sort -k 1nr | head -1)
#   # Check if the most recently modified file is different from the last modified file
#   if [ "$modified" != "$last_modified" ]; then
#     # Check if the most recently modified file exists
#     if [ -f "$modified" ]; then
#       # Get the file name from the file path
#       file_name=$(basename -- "$modified")
      
#       # Commit "update on {file name}"
#       git add "$modified" && git commit -m "update on $file_name"

#       # Set the last modified file to the most recently modified file
#       last_modified="$modified"

#       # Print the name of the modified file
#       echo "$file_name modified"
#     else
#       # Get the directory name from the file path
#       dir_name=$(dirname -- "$modified")
      
#       # Get the directory name from the modified file path
#       file_name=$(basename -- "$modified")
      
#       # Commit "{file name} created"
#       git add "$dir_name" && git commit -m "$file_name created"

#       # Set the last modified file to the most recently modified file
#       last_modified="$modified"

#       # Print the name of the created file
#       echo "$file_name created"
#     fi
#   fi

#   # Wait for 60 seconds before checking for changes again
#   sleep 120
# done