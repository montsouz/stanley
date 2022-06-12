FROM node:12.16-alpine

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY package.json ./

RUN npm run build

# COPY . .
# EXPOSE 5000

CMD "npm start:prod"