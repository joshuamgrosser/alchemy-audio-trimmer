# alchemy-audio-trimmer
Quick ffmpeg script for batch converting longer audio files down to 10-minute loops with fade-in and fade-out.

## Requirements
Requires `ffmpeg` to be installed and available on the command line.

## Description
This script processes all files of a given extension in the current directory. It performs the following operations:

1. Extracts the filename without the extension.
2. Converts the filename to lowercase, replaces whitespace with dashes, and removes special characters.
3. Applies a fade-in and fade-out effect, and trims the audio using `ffmpeg`.

## Usage

To run the script, use the following command:

```shell
./batch.sh [file_extension]
```
