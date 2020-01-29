FROM node:12.6.0-alpine
WORKDIR /app
COPY . .
RUN yarn install --force && \
	mkdir -p ./results
CMD ["/bin/sh", "-ec", "echo 'Wait for 120 seconds' && sleep 120 && yarn start && while :; do sleep 5 ; done"]
