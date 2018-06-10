# Quick Pi Hole
Launch Pi Hole in Docker for Windows.

### Prerequisites
* Docker for Windows
* PowerShell
* Browser of choice

### Functions
```
GetPiHole
```
This will perform the Docker Pull and create the volume for persisted stuff.

```
RunPiHole -SERVERIP "Put Host IP Here" -WEBPASSWORD "Put Web Console Password Here"
```
Launch the Pi Hole container and do the configs.

```
RemovePiHole
```
Removes the running container and image.

### Web UI
http://$SERVERIP/admin
