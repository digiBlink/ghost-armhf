FROM digiblink/nodejs8-armhf:1.0

USER root
WORKDIR /var/www/
RUN mkdir -p ghost
RUN apt-get update && apt-get -qy install wget unzip && \
    wget https://github.com/TryGhost/Ghost/releases/download/1.24.8/Ghost-1.24.8.zip && \
    unzip Ghost-*.zip -d ghost && \
    apt-get -y remove wget unzip && \
    apt-get -y autoremove && \
    rm -rf /var/lib/apt/lists/*

RUN useradd ghost -m -G www-data -s /bin/bash
RUN chown ghost:www-data .
RUN chown ghost:www-data ghost
RUN chown ghost:www-data -R ghost/*

USER ghost
RUN mkdir /home/ghost/.npm-global
ENV PATH=/home/ghost/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/ghost/.npm-global
RUN npm install -g pm2 knex-migrator

WORKDIR /var/www/ghost
RUN /bin/bash -c "time (npm install sqlite3)"
RUN npm install

EXPOSE 2368
EXPOSE 2369

ENV NODE_ENV production

CMD ["pm2", "start", "index.js", "--name", "blog", "--no-daemon"]
