#Setup / create directory structure

#!/bin/bash

# Function to create directory and set permissions
create_dir() {
    mkdir -p "$1"
    chmod 777 "$1"      # Set full read/write/execute permissions for all users
    chown nobody:users "$1"  # Set ownership to a common unraid user and group
}

# Create the directory structure under /mnt/user/media

create_dir /mnt/user/media/sonarr/usenet/nzb_download_folder
create_dir /mnt/user/media/sonarr/usenet/sabnzbd_complete_download_folder
create_dir /mnt/user/media/sonarr/usenet/tdarr_working_folder
create_dir /mnt/user/media/sonarr/usenet/sonarr_watch_folder

create_dir /mnt/user/media/sonarr/torrent/torrent_download_folder
create_dir /mnt/user/media/sonarr/torrent/torrent_complete_download_folder
create_dir /mnt/user/media/sonarr/torrent/tdarr_working_folder
create_dir /mnt/user/media/sonarr/torrent/sonarr_watch_folder

create_dir /mnt/user/media/radarr/usenet/nzb_download_folder
create_dir /mnt/user/media/radarr/usenet/sabnzbd_complete_download_folder
create_dir /mnt/user/media/radarr/usenet/tdarr_working_folder
create_dir /mnt/user/media/radarr/usenet/radarr_watch_folder

create_dir /mnt/user/media/radarr/torrent/torrent_download_folder
create_dir /mnt/user/media/radarr/torrent/torrent_complete_download_folder
create_dir /mnt/user/media/radarr/torrent/tdarr_working_folder
create_dir /mnt/user/media/radarr/torrent/radarr_watch_folder

create_dir /mnt/user/media/lidarr/usenet/nzb_download_folder
create_dir /mnt/user/media/lidarr/usenet/sabnzbd_complete_download_folder
create_dir /mnt/user/media/lidarr/usenet/tdarr_working_folder
create_dir /mnt/user/media/lidarr/usenet/lidarr_watch_folder

create_dir /mnt/user/media/lidarr/torrent/torrent_download_folder
create_dir /mnt/user/media/lidarr/torrent/torrent_complete_download_folder
create_dir /mnt/user/media/lidarr/torrent/tdarr_working_folder
create_dir /mnt/user/media/lidarr/torrent/lidarr_watch_folder

create_dir /mnt/user/media/temp/sabnzbd_incomplete_download_folder
create_dir /mnt/user/media/temp/torrent_incomplete_download_folder

echo "All directories have been created and permissions set."
