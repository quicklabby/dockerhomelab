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

Hope this can help someone to run quickly the above applications without issues.

You will need to create a persistent data directory folder for each application and in some cases (ex. Traefik and Nextcloud) you will need a configuration file/environment variables.