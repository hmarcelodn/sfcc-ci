FROM debian:latest

# Upgrade Distro
RUN apt-get update -y
RUN apt-get upgrade -y

# Install WGET
RUN apt-get install wget -y

# Install SFCC Image
RUN wget https://github.com/SalesforceCommerceCloud/sfcc-ci/releases/download/v2.5.0/sfcc-ci-linux
RUN chmod +x ./sfcc-ci-linux
RUN ls -l
RUN mv ./sfcc-ci-linux /usr/local/bin/sfcc-ci

ENTRYPOINT ["tail", "-f", "/dev/null"]
