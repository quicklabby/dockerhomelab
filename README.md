# **My Docker Homelab**

Here you can find my working docker compose setup running on my server.
You will need to install first docker and docker compose related to your linux distro:

https://docs.docker.com/compose/install/

My current docker setup is running  a webserver behind a Traefik reverse proxy with SSL, which includes the following applications:

Webserver:
- Nginx

Reverse proxy/SSL/Auth:
- Traefik
- Letsencrypt
- Authelia

Media/Cloud:
- PLEX
- Tautulli
- Nextcloud
- Photoview

Utilities:
- Watchtower
- Ubiquity Unifi Controller

Monitoring/Logs:
- InfluxDB
- Grafana
- Prometheus
- Node Exporter

You will need to create a persistent data directory folder for each application and in some cases (ex. Traefik and Nextcloud) you will need a yaml configuration file and/or an environment variables yaml.

# **Traefik Setup**

First, create a directory for your Traefik container:

mkdir -p /yourdirectoryto/traefik

Create the data folder and config files for Traefik:

mkdir -p /yourdirectoryto/traefik/data
touch /yourdirectoryto/traefik/data/acme.json
chmod 600 /yourdirectoryto/traefik/data/acme.json
touch /yourdirectoryto/traefik/data/config.yml
