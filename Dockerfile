FROM node:10.17.0-alpine
#set Maintainer
LABEL maintainer "santoshhkumarr@gmail.com"

#health check

HEALTHCHECK --interval=5s \
	   --timeout=5s \
	CMD curl -f http://127.0.0.1:3000 || exit 1
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
