#!/bin/bash

# Directory containing the video files
video_dir="./"

# Output directory for the sped-up videos
output_dir="./sped_up/"

# Create output directory if it doesn't exist
mkdir -p "$output_dir"

# Loop through each .mp4 file in the video directory
for video in "$video_dir"*.mp4; do
  # Extract the filename without the directory and extension
  filename=$(basename -- "$video")
  base="${filename%.*}"

  # Construct the output filename
  output="$output_dir${base}_spedup.mp4"

  # Use FFmpeg to speed up the video and audio
  ffmpeg -i "$video" -filter_complex "[0:v]setpts=0.6667*PTS[v];[0:a]atempo=1.5[a]" -map "[v]" -map "[a]" "$output"
done
