# **My Docker Homelab**

Here you can find my working docker compose setup for different applications running on my server.
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

Hope this can help someone!
