
2. Navigate to the Debian build scripts directory:

```bash
cd images/debian/scripts/build/
```

3. Run the `configure-image-data.sh` script to set up the image metadata:

```bash
sudo ./configure-image-data.sh
```

This script configures the image data file with the Debian operating system version, image label, version, and URLs for the included software and image release.

4. Execute the `install-software.sh` script to install the necessary software on the image:

```bash
sudo ./install-software.sh
```

The `install-software.sh` script installs essential tools like curl, wget, git, build-essential, and programming languages such as Python, Ruby, Node.js, and Java. It also sets up Docker and Docker Compose.

## Deploying the Image to GitHub Actions

After building the image, you can deploy it to be used with GitHub Actions:

1. Push the image to a container registry such as Docker Hub or GitHub Container Registry.

2. Update your GitHub Actions workflow file to use the new Debian image:

```yaml
jobs:
  build:
    runs-on: self-hosted
    container:
      image: your-registry/your-debian-image:latest
