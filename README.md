# digiblink/ghost-armhf Docker Container

Maintained by [digiBlink](http://digiblink.eu) - [docker hub link](https://hub.docker.com/r/digiblink/ghost-armhf/)

[Ghost](https://ghost.org) is a fully open source, adaptable platform for building and running a modern online publication. It used to power blogs, magazines and journalists around the globe.

Container has latest release - 1.25.5 - of Ghost and is based on [`digiblink/nodejs8-armhf`](https://hub.docker.com/r/digiblink/nodejs8-armhf/) container with Node.js 8.11.4 LTS version for ARMv7.

## Usage

To get it running just enter:

`docker run -d --name your_container -t digiblink/ghost-armhf`

After that you can use BusyBox bash, to log into container:

`docker exec -ti your_container bash`
