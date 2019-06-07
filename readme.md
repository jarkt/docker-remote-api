Makes the Docker Remote API available via port 2375.

Start with:
`docker run -d -p 2375:2375 --name docker_remote_api -v /var/run/docker.sock:/var/run/docker.sock vhanda/docker-remote-api ALLOWED_IP`

Where `ALLOWED_IP` is the only IP which can connect to this machine.
