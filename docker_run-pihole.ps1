function GetPiHole {
    docker pull diginc/pi-hole
    docker volume create pi-hole_vol
}

function RunPiHole {
    param(
    [string]$SERVERIP,
    [string]$WEBPASSWORD
    )

    docker run -d `
        --name pihole `
        -p 53:53/tcp -p 53:53/udp -p 80:80 `
        -v "/pi-hole_vol/pihole/:/etc/pihole/" `
        -v "/pi-hole_vol/dnsmasq.d/:/etc/dnsmasq.d/" `
        -e ServerIP=$IP `
        -e WEBPASSWORD=$WEBPASSWORD `
        --restart=always `
        diginc/pi-hole:latest

}

function RemovePiHole {
    docker rm -f pihole
    docker rmi -f diginc/pi-hole
}


