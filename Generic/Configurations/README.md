## What do we have here?

Just typical configuration files I consider "Generic" - in other words it's set of configuraiton files I find myself re-using so often or only for a specific purpose that there's no need to seperate them to other machines on my network.

These configurations usually touch stuff such as:

- General program configuration
- Useful bash scripts that can be re-used across hosts when needed
- Launch scripts for systems making use of old init systems that aren't systemd
- Web server configuration files that allow for proper hosting of a resource

...and many other.

These configuration files directly and in-directly power my front-facing stuff such as [Rubberverse Blog](https://blog.rubberverse.xyz) (check it out if you like tech ramblings!) and my Homelab - such as my network switch, Proxmox server, OPNsense Firewall rig and my phone running Alpine Linux (pmOS)

## Directories and their purpose

| Name | Description |
|------|-------------|
| `NGINX` | Includes site.conf that has configuration specific to chyrp-lite to enable clear URLs, as the one from their documentation always results in `Unknown variable: {chyrp_lite}` |
| `Scripts` | Stores useful scripts I may wanna re-use at a later date, those usually consist of semi-automatic way to do something or they target specific activity |
| `Unbound` | My production-ready Unbound configuration tailored towards an ARM device running with 8-core Snapdragon SOC. It also acts as an caching server and also as an Private resolver for domains. AdGuard Home is front-facing DNS server, taking care of filtering |
| `bashrc` | Cotton candy themed bash styling and some aliases I use compactified. |
| `caddy` | My Caddyfile that I use with my `qor-caddy` container image. Makes use of a lot of Caddy specific gadgets and modules included in my image so not very applicable for standard Caddy image. |
| `chrony` | Chrony NTP client configured to use NTS (Network Time Security) sources. More secure variant to our usual NTP time servers. | 
| `crowdsec` | Set of various configuration files between my hosts running Crowdsec. So far, only two devices run Crowdsec on my network - My firewall and my DMZ VLAN container VM |
| `init.d` | Initialization script for `rc`, Alpine Linux focused. My phone runs postmarketOS which is based on Alpine Linux so some scripts touch it, some don't. Some are just shamelessly ripped off Gentoo wiki or Alpine Linux community packages for easy access. |
| `kea-dhcp4` | My production-ready kea-dhcp configuration, for IPv4 networks. Also runs on my phone |
| `velocity` | Just a very simple backup of the configuration file I had on my VPS, it's lazy and not much is changed but it's there |

## Something should be changed?

Leave a GitHub issue and I'll take a lookie. I'm a hobbyist so I can't really catch if stuff is configured... wrong or not up to standard per-say.
