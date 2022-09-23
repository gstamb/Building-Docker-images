FROM node:16-alpine as builder
RUN mkdir -p node_modules/.cache && chmod -R 777 node_modules/.cache
WORKDIR '/app'
COPY ./package.json ./
RUN npm install
COPY . .
RUN chown -R node:node /app/node_modules
RUN npm run build

FROM nginx
EXPOSE 3000
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /app/build/ /usr/share/nginx/html