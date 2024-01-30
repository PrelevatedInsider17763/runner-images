#!/bin/bash

# Define variables with image data
os_name="Debian"
os_version=$(lsb_release -sc)
image_label="GitHub Actions Debian Runner"
image_version="PLACEHOLDER_FOR_ACTUAL_VERSION"
software_url="https://github.com/actions/runner-images/blob/main/images/debian/Software.md"
releaseUrl="https://github.com/actions/runner-images/releases/tag/debian/${image_version}"

# Create JSON structure with image data
cat <<EOF > /path/to/image-data-file.json
[
  {
    "group": "Operating System",
    "detail": "${os_name} ${os_version}"
  },
  {
    "group": "Runner Image",
    "detail": "Image: ${image_label}\nVersion: ${image_version}\nIncluded Software: ${software_url}\nImage Release: ${releaseUrl}"
  }
]
EOF
