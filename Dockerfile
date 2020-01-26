FROM node:12.6.0-alpine
WORKDIR /app
COPY . .
RUN yarn install --force && \
	mkdir -p ./Results
CMD ["/bin/sh", "-ec", "trap : TERM INT; sleep infinity & wait"]
