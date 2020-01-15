FROM node:10.17.0-alpine


RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-19.03.5-ce.tgz \
  && tar xzvf docker-19.03.5-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-19.03.5-ce.tgz

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
