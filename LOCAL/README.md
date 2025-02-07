# Rubberverse LAN

Everything in `LOCAL` includes local deployment of projects on my internal network. They're all Podman Quadlets, I don't use `docker-compose.yaml` or similar.

## Requirements

In order to use Quadlet files from here as a base for your own deployments, you need to have following:

- Podman version 5.3.1+
- Systemd as your init manager

Podman version is especially important as past versions are missing various features that I'm making use of in my Quadlets ex. `AddHost=` functionality, `Pod=` and so on.

Keep in mind that my deployment is opinionated so I'm doing things such as exposing TCP namespace ports to other containers in order to achieve certain things, or making use of `AddHost=` to make certain things work. They're also usually going against project's wishes by running them as non-root container user.

## Network stack

My home network currently runs following projects, they're what powers Rubberverse as a whole and make all of this possible.

- Firewall: **OPNsense**
- Virtualization: **Proxmox VE**
- Operating Systems: **PostmarketOS**, **Fedora Server**, **Alpine Linux**
- Kernel: **Bieszczaders' CachyOS kernel COPR port**
- DNS adblocking: **Adguard Home**
- DNS cache & forwarder: **Unbound DNS**
- Media Server: **jellyfin/jellyfin**
- Music Player for Jellyfin: **jeffvli/feishin**
- Music-centered Server: **connectical/polaris**
- OIDC, IDP and SSO solution: **stonith404/Pocket-ID**
- File conversion: **c4illin/ConvertX**
- File upload: **Dumbware/Dumbdrop**
- Kanban Board: **Dumbware/Dumbkan**
- Useful tools: **IT-Tools**
- KMS for activating Windows & Office: **py-kms-organization/py-kms**
- Cross-device file synchronization: **syncthing/syncthing**
- Password and secret vault: **dani-garcia/vaultwarden**
- Web Server: **rubberverse/qor-caddy** (uses **caddyserver/caddy**)
- Server dashboard: **homarr-labs/homarr**
- Notes, thought cataloguing: **usememos/memos**
- Database: **Bitnami PostgreSQL**
- TLS Wildcard Certificates: **acme.sh**
