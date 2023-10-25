FROM node:lts-alpine as builder

WORKDIR /travel_frontend

ARG VITE_BASE_URL=localhost
ENV VITE_BASE_URL=$VITE_BASE_URL

COPY ./travel_frontend/package.json .
RUN npm install
COPY ./travel_frontend .
RUN npm run build

FROM nginx:alpine

COPY ./webserver/default.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /frontend/dist /usr/share/nginx/html