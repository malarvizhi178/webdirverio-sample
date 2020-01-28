FROM node:12.6.0-alpine
WORKDIR /app
COPY . .
RUN yarn install --force && \
	mkdir -p ./Results
CMD ["/bin/sh", "-ec", "echo 'Wait for 300 seconds' && sleep 300 && yarn start && while :; do echo '.'; sleep 5 ; done"]
