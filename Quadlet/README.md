# Podman Quadlet configurations

> "Podman supports building, and starting containers (and creating volumes) via systemd by using a systemd generator. These files are read during boot (and when systemctl daemon-reload is run) and generate corresponding regular systemd service unit files. Both system and user systemd units are supported."
 
From [docs.podman.io](https://docs.podman.io/en/latest/markdown/podman-systemd.unit.5.html)

Quadlet takes care of it and generates systemd services out of `.container`, `.volume`, `.network`, `.build`, `.pod`, `.build` and `.kube`, and allows you to control these generated services with systemd commands such as systemctl stop/start/restart, journalctl and so on.

Pretty much using systemd as your container orchestrator. It also supports rootless operation and is a better alternative to podman-compose or docker-compose for deployments that don't need advanced orchestrator.

## Minimum Podman version requirements

- Podman v5.0+, some features may require 5.2+

Plug and play otherwise. Copy what you wanna from here, reload systemd daemon and Quadlet should compose it up. If for any reason it's not available, check journactl logs with `journalctl -xe`
