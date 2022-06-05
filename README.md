![](https://img.shields.io/docker/pulls/thetoddluci0/hashcat-brain?style=for-the-badge)
![](https://img.shields.io/docker/stars/thetoddluci0/hashcat-brain?style=for-the-badge)

This repo creates a docker image from [Hashcat](https://github.com/hashcat/hashcat). It pulls directly from hashcat/master when building the container.
The image can be found on 
[Docker Hub](https://hub.docker.com/r/thetoddluci0/hashcat-brain).

### Useage
There are two environment variables you can set.

`BRAIN_PORT` sets the port that the brain server will listen on (default 13743)

`BRAIN_PASSWORD` sets the password that the brain server uses (default `hashes`)

Once you have set these variables (or embraced the defaults), you can run the container as you would any other. Just remember to export the port that you told the brain to listen on!