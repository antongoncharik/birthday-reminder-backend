FROM node:16.14.2-alpine

ENV NODE_ENV development

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install

COPY . .

EXPOSE 3000

CMD ["yarn", "run", "start:dev:migrate"]