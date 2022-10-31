FROM mhart/alpine-node:14.17.3 As development

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

FROM mhart/alpine-node:14.17.3 as production

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY --from=development /usr/src/app/dist/ ./dist

CMD ["node", "app.js"] 