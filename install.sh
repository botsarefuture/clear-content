#!/bin/bash

# URL of the .deb package
package_url="https://raw.githubusercontent.com/botsarefuture/clear-content/main/clear-content-deb.deb"

# Download the .deb package
wget "$package_url" -O "clear-content-deb.deb"

# Install the package using dpkg
dpkg -i "clear-content-deb.deb"

# Install dependencies (if any)
apt-get install -f -y

echo "Package installed successfully!"
