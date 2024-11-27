# Various containers powering rubberverse.xyz

Podman configuration. I'm mis-using Pods on purpose like that even for single containers 'cus for whatever reason, after reboot Quadlet fails to start them.

With Pods, that problem is not a thing anymore. It also feels a bit cleaner so meh.

Containers that should, are making use of health checks. Not all of them right now but most of them.

## Live Services

Live services are accessible outside of LAN and are in turn "public". 

They run on a VM with `host` CPU, VirtIO Network with multi-queue, 16GB DDR4 and 130GB of SSD space. Outbound bandwidth: 768KB (6mbps)

- Medama: 1KB tracker, GDPR-complaint cookie-less analytics solution
- Readeck: Bookmark and archive web pages for up to 3 years. Invite-only
- FreshRSS: Aggregated RSS feed reader with third-party application support, uses qor-freshrss image
- Crowdsec: Crowdsec security daemon
- Caddy: Caddy Web Server for Automatic TLS, uses qor-caddy image. Also hosts blog via static files.
- Bluesky Private Data Server: PDS for Bluesky, for self-data governance
- Sharkey: Fork of Misskey, a Fediverse server. Invite-only
- frpc: Fast Reverse Proxy client, reverse proxy for home <-> vps
- ArTalk: Self-hosted comment section for our blog, with local filter lists

## Local Services

- Certwarden: Certificate managment
- Jellyfin: Self-hosted Media Server, used as a Music server with Feishin and Finamp
- IT-Tools: Set of useful utilities, runs modified IT-Tools image (present in Rubberverse/various-dockerfiles)
- QuakeJS: Quake 3 Arena in a web browser, modified fork of QuakeJS (present in Rubberverse/QuakeJS)
- OPNsense Firewall: Runs on a seperate rig - Intel Core i5-6600K, 8GB DDR4 no-name RAM @ 2400MHz, 128GB Patriot SSD, HP NC365T (Intel igb)
- Proxmox VE: Runs on a seperate rig - Intel Core i3-7100, 32GB DDR4 Corsair RAM @ 2400MHz, 1TB Crucial SSD, HPNC310T, HP (Broadcom)
- Adguard Home: Not dockerized, runs on a Xiaomi Redmi Note 4X flashed with postmarketOS (Alpine Linux)
- Kea-DHCP4: Not dockerized, runs on a Xiaomi Redmi Note 4X flashed with postmarketOS (Alpine Linux)

## Retired Services

- whoogle: My instance was always running into rate-limit from Google anyways so it wasn't ideal
- Rimgo: No use, wasn't used often though either
- Umami-Analytics: Problems with DNS under Pod
- Muse: No longer using Discord
- Cloudflared: Not using Cloudflare Tunnels
- Chyrp Lite: No longer fills my purpose for blogging software so I retired it