FROM node:12.6.0-alpine
WORKDIR /app
COPY . .
RUN yarn install --force
CMD ["yarn","start"]
