#!/usr/bin/env fish

# Source (current directory)
set src (pwd)

# Destination
set dest /etc/xdg/quickshell/overview

# Ensure destination exists
if not test -d $dest
    echo "Creating destination directory: $dest"
    sudo mkdir -p $dest
end

# Copy everything (including hidden files)
echo "Copying from $src to $dest ..."
sudo cp -r $src/* $src/.* $dest 

echo "Done."