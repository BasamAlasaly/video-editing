# Batch Video Speed-Up Script

This script speeds up videos to 1.5x their original playback speed, adjusting both video and audio components. It is designed to work with MP4 files by default but can be easily modified to support other video formats.

## Prerequisites

Before using this script, you must have FFmpeg installed on your system. Below are instructions for downloading a static version of FFmpeg for different operating systems.

### Windows

1. Visit the FFmpeg Builds page at [FFmpeg.org](https://ffmpeg.org/download.html).
2. Download the latest static build for Windows (choose the 32-bit or 64-bit version according to your system).
3. Extract the downloaded ZIP file to a known location.
4. Add the FFmpeg bin directory path to your system's PATH environment variable.

### macOS

1. You can install FFmpeg using [Homebrew](https://brew.sh/) by running the following command in the terminal:

```console
brew install ffmpeg
```

### Linux

1. Most Linux distributions include FFmpeg by default. If not, you can install it using your distribution's package manager. For example, on Ubuntu or Debian:

```console
sudo apt-get update
sudo apt-get install ffmpeg
```

## Installation

1. Clone this repository or download the script to your local machine.
2. Make the script executable. Open a terminal, navigate to the script's directory, and run:

```console
chmod +x speed_up_videos.sh
```

## Usage

By default, the script is configured to process MP4 files. To run the script, execute it in the terminal:

```console
./speed_up_videos.sh
```

### Supporting Other Video Formats

To process videos in formats other than MP4, modify the script's file extension pattern. Find the line in the script that reads:

```bash
for video in "$video_dir"*.mp4; do
```

And change *.mp4 to match the file extension of your videos, e.g., *.avi for AVI files:

## Script Details
The script speeds up video and audio playback by 1.5x. It creates an output directory named sped_up in the current working directory and saves the processed videos there.

## Note
This script assumes that all video files have an audio track. Videos without audio may require modifications to the FFmpeg command to be processed correctly.

## License
This script is provided under the MIT License. See the LICENSE file for more details.