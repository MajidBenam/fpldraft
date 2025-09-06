#!/bin/bash

# Set your custom base directory here
BASE_DIR="../backup"  # <--- CHANGE THIS to your desired target path

# Define city arrays with proper quoting
center=(
  "Dusseldorf"
  "Helsinki"
  "Bucharest"
  "Prague"
  "Zagreb"
  "Belgrade"
  "Khartoum"
  "Brussels"
  "Bologna"
  "Nakhchivan"
  "Maastricht"
  "Alexandria"
)

west=(
  "Belo Horizonte"
  "Mar Del Plata"
  "Caracas"
  "Sarajevo"
  "Guantanamo"
  "Chiclayo"
  "Bogota"
  "Buenos Aires"
  "Bordeaux"
  "Pamplona"
  "Montreal"
  "Tripoli"
)

east=(
  "Basra"
  "Ulsan"
  "Da Nang"
  "Salamiyah"
  "Bangalore"
  "Dammam"
  "Pattaya"
  "Hiroshima"
  "Lahore"
  "Bishkek"
  "Latakia"
  "Manila"
)

# Function to create folders
create_folders() {
  region=$1[@]
  cities=("${!region}")
  region_name=$1
  mkdir -p "$BASE_DIR/$region_name"
  for city in "${cities[@]}"; do
    folder_name=$(echo "$city" | tr '[:upper:]' '[:lower:]' | sed 's/ /_/g')
    mkdir -p "$BASE_DIR/$region_name/$folder_name"
  done
}

# Run for each region
create_folders center
create_folders west
create_folders east

echo "✅ City folders created under $BASE_DIR."

