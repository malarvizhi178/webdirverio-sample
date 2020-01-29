FROM node:12.6.0-alpine
WORKDIR /app
COPY . .
RUN yarn install --force && \
	mkdir -p ./results
CMD ["/bin/sh", "-ec", "yarn start && while :; do sleep 5 ; done"]
