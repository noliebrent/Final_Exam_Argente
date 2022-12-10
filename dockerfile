FROM ubuntu

MAINTAINER Argente <qbnpargente@tip.edu.ph>

# Skip prompts
ARG DEBIAN_FRONTEND=noninteractive

# Update Packages
RUN apt update; apt dist-upgrade -y

# Install Apache 
RUN apt install apache2 -y

# Install Nagios
RUN apt install nagios4 -y

# Set Entrypoint
ENTRYPOINT apache2ctl -D FOREGROUND: nagios4 -D FOREGROUND
