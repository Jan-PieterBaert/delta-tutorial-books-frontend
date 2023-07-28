FROM madnificent/ember:4.12.1 as builder
LABEL maintainer="jan-pieter.baert@redpencil.io"

WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN ember build -prod

FROM semtech/ember-proxy-service:1.4.0
COPY --from=builder /app/dist /app
