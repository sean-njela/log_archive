#!/bin/bash

# Colors for a better UI
red='\033[0;31m'   # For errors 
green='\033[0;32m' # For success
blue='\033[0;34m'  # Intro's and info 
nc='\033[0m'       # No Color (reset)


# Clear the terminal for better display
clear

# Print a blue colored message introducing the script's purpose
echo -e "${blue}"

# This line prints a blue-colored message introducing the script's purpose.
echo -e "${blue}This is a file archiving tool... "
echo -e "You will need administrative access for the tool to run. \nPlease enter your password if prompted."


# Generate a number beginning from 1000648
number=1000648
folder="archive"
# Input file
file=$1

# Archive function
archive_file() {
  echo -e "${green}Archiving ... ${nc}"
  date=$(date +%Y-%m-%d)

  while [ ! -d "${folder}" ]; do
    mkdir "${folder}"
  done

  # Check if the file exists; adjust the number ending if it does 
  if [ -d "${file}" ]; then
    while [ -f "${folder}/log_archive_${date}_${number}.tar.gz" ]; do
      number=$((number + 1))
    done

    # Create archive with the unique filename
    sudo tar -cvzf ${folder}/log_archive_${date}_${number}.tar.gz "${file}"
    echo -e "${green}Archive created successfully: log_archive_${date}_${number}.tar.gz in the directory: ${folder}${nc}"
    
  else
    echo -e "${red}Error: Directory '${file}' not found. ${nc}"
  fi
}

# Check if exactly 1 argument is passed
if [ $# -ne 1 ]; then
  echo -e "${red}Please insert 1 argument as a file or filepath ${nc}"
else
  archive_file
fi
