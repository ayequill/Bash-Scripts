#!/bin/bash

# Function to handle errors
handle_error() {
  echo "An error occurred. Exiting..."
  exit 1
}
install_dir="/usr/local/bin"
# Trap errors and throw errors
trap 'handle_error' ERR

if [[ ! -f "$install_dir/push2git.sh" ]]; then
  cp "$0" "$install_dir/push2git.sh"

  echo "export PATH=\"\$PATH:$install_dir\"" >> ~/.bashrc
  source ~/.bashrc

  echo "Script installed successfully."
fi

echo "Enter the file(s) to add to Git (press Tab for suggestions):"
# Using readline and compgen to suggest files to user
IFS=$'\n' read -e -p ">" -i "" -r files

# Check if any files were provided
if [[ -z $files ]]; then
  echo "No files provided. Exiting..."
  exit 1
fi

# Add files to Git
git add $files

# Check if files were added successfully / Can be incorrect filenames or an empty string
if [[ $? -ne 0 ]]; then
  echo "Failed to add files. Exiting..."
  exit 1
fi

# Prompt for commit message
echo "Enter the commit message:"
read -r message

# Check if commit message was provided
if [[ -z $message ]]; then
  echo "No commit message provided. Exiting..."
  exit 1
fi

# Implemented a commit check. Commit message should be 3 or more words
word_count=$(echo "$message" | wc -w)
if [[ $word_count -lt 3 ]]; then
  echo "Commit message should have at least three words. Exiting..."
  exit 1
fi

# Commit changes
git commit -m "$message"

# Check if commit was successful if not throw an error
if [[ $? -ne 0 ]]; then
  echo "Failed to commit changes. Exiting..."
  exit 1
fi

# Push changes / Will be succesfull only if branch is has remote branch
git push

# Here we throw an error if not and allow user to push to their desired remote branch
if [[ $? -ne 0 ]]; then
  echo "Failed to push changes. Exiting..."
  exit 1
fi

echo "Changes added and pushed successfully. Happy Coding!"
