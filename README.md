# Homelab

## Deployments

### Dependencies
```bash
❯ ansible-galaxy install --force -r requirements.yml
```

### Tailscale

```bash
❯ ansible-playbook deploy-tailscale-server.yml
# Then manually do initialize the tailscale client on the server
sven@tailscale:~$ sudo tailscale up --accept-dns --accept-routes --advertise-routes 192.168.10.0/24 --login-server https://hacky.day --snat-subnet-routes=false
```


### Docker Server

```bash
❯ ansible-playbook deploy-docker-server.yml


### Docker Services
```
