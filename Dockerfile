FROM node:20.13-alpine

WORKDIR /usr/src/app

COPY package.json yarn.lock ./

RUN yarn install

COPY . .

# Lệnh để chạy ứng dụng
CMD ["yarn", "start:production"]