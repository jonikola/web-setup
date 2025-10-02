# Nginx Auto Deployment Script

This Bash script automates the installation, configuration, and deployment of a static website using **Nginx**.  
It installs the required packages, downloads a template , and deploys it to the Nginx default web root directory. 

## Features

- Installs **Nginx** using `dnf` package manager.  
- Starts and enables the Nginx service to run on boot.  
- Downloads and extracts a template from the internet.  
- Replaces the default Nginx web page with the new template.  
- Restarts the Nginx service.  
- Cleans up temporary files after deployment.

## Prerequisites

- A Linux system with `dnf` package manager (e.g., Fedora, RHEL, CentOS Stream).  
- `sudo` privileges to install packages and manage services.  
- Internet access (for downloading the template). 

## Usage

#### Make the script executable:
`$ chmod +x deploy_nginx.sh`

#### Run the script:
`$ ./deploy_nginx.sh`

#### Open your web browser and navigate to:
`http://your-server-IP-address`

## Notes

- This script is tested with Fedora/RHEL-based distributions.
- For Debian/Ubuntu systems, replace dnf with apt in the script.
- The default template can be changed by editing the TPL_URL and TPL_NAME variables in the script.
