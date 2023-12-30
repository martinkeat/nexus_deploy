#!/bin/bash

# Script to move files from specific directories to new locations

# Function to move files
move_files() {
    src="$1"   # Source directory
    dst="$2"   # Destination directory

    # Check if the source directory exists
    if [ -d "$src" ]; then
        # Move all files from source to destination
        mv "$src"/* "$dst"
    else
        echo "Source directory $src does not exist."
    fi
}

# Deluge transfer script folders
move_files /mnt/user/media/lidarr/torrent/torrent_download_folder /mnt/user/media/watched/deluge/sonarr
move_files /mnt/user/media/radarr/torrent/torrent_download_folder /mnt/user/media/watched/deluge/radarr
move_files /mnt/user/media/sonarr/torrent/torrent_download_folder /mnt/user/media/watched/deluge/lidarr

# SabNZBd transfer folders
move_files /mnt/user/media/sonarr/usenet/nzb_download_folder /mnt/user/media/watched/sabnzbd/sonarr
move_files /mnt/user/media/radarr/usenet/nzb_download_folder /mnt/user/media/watched/sabnzbd/radarr
move_files /mnt/user/media/lidarr/usenet/nzb_download_folder /mnt/user/media/watched/sabnzbd/lidarr

echo "File transfer complete."
