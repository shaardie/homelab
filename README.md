# Homelab

## Deployments

### Dependencies
```bash
❯ ansible-galaxy install --force -r requirements.yml
```

### Docker Server

```bash
❯ ansible-playbook deploy-docker-server.yml
```bash
# Copy Sources
❯ rsync -avh --delete . sven@docker.internal.haardiek.org:homelab
# Caddy
sven@docker:~/homelab/caddy$ docker compose build --pull
sven@docker:~/homelab/caddy$ docker compose up -d 
# Grocy
sven@docker:~/homelab/grocy-docker$ docker compose up -d 
```
