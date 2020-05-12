FROM node:12

ENV ROOT /usr/share/nginx/html

WORKDIR ${ROOT}

COPY package.json package.json

RUN npm install \
  && npm cache clean --force

COPY . .

EXPOSE 8080

CMD ["npm", "start"] 