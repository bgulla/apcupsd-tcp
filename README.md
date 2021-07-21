[![Build Status](https://cloud.drone.io/api/badges/bgulla/apcupsd-tcp/status.svg)](https://cloud.drone.io/bgulla/apcupsd-tcp)

# APCUPSD-TCP Docker
You shouldn't have to do `systemd` things just to monitor a UPS. Use this.

## How to deploy
```bash
docker run -d \
  --name=apcupsd-tcp \
  --restart=unless-stopped \
  -p 3551:3551 \
  --privileged \
  bgulla/apcupsd-tcp

docker logs -f apcupsd-tcp
```
