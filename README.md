# **Docker Compose Homelab**

Here you can find my working docker compose setup running on my server.
Prior to utilization, it is necessary to install Docker and Docker Compose tailored to your Linux distribution. For installation guidance, please refer to the following documentation: 

https://docs.docker.com/compose/install/

Ubuntu Bash script installation with the option to restore a previously backed-up directory:

```docker-ubuntu-install.sh```

Hardware Used:
- Pfsense box
- ASUS mini PC (Server)
- Cisco switch

The present configuration of my Docker setup entails hosting a web server behind a Traefik reverse proxy secured with SSL, encompassing the subsequent applications:

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

Utilities:
- Watchtower

AI Tools:
- Ollama
- Anything LLM
- Whisper
- Piper

Monitoring/Logs:
- InfluxDB
- Grafana
- Prometheus
- Node Exporter

To ensure proper functioning, it is necessary to establish a persistent data directory folder for each application. Additionally, for certain cases such as Traefik and Nextcloud, you may need to create a YAML configuration file and/or an environment variables YAML file.

------------------------

# **Traefik Setup**

1. Create a directory for your Traefik container:

```mkdir -p /yourdirectoryto/traefik```

2. Create the data folder for Traefik:

```mkdir -p /yourdirectoryto/traefik/data```

3. Create the configuration files with proper permission:

```touch /yourdirectoryto/traefik/data/acme.json```
 
```chmod 600 /yourdirectoryto/traefik/data/acme.json```
 
```touch /yourdirectoryto/traefik/data/config.yml```

