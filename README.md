# digiblink/ghost-armhf Docker Container

Maintained by [digiBlink](http://digiblink.eu) - [docker hub link](https://hub.docker.com/r/digiblink/ghost-armhf/)

[Ghost](https://ghost.org) is a fully open source, adaptable platform for building and running a modern online publication. It used to power blogs, magazines and journalists around the globe.

Container has latest release - 1.25.5 - of Ghost and is based on [`digiblink/nodejs8-armhf`](https://hub.docker.com/r/digiblink/nodejs8-armhf/) container with Node.js 8.11.4 LTS version for ARMv7.

## Usage

To get it running just enter:

`docker run -d \
--name=ghost-blog \
-p 3001:2368 \
digiblink/ghost-armhf`

Then, access it via `http://localhost:3001` or `http://host-ip:3001` in a browser.

If you want, you can customize your installation by modifying `config.production.json` file and mounting it before start of container by adding following switch to `docker` command between `--name` and `-p`:

`-v $PWD/config.production.json:/var/www/ghost/config.production.json \`
