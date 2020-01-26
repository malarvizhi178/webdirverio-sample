FROM node:12.6.0-alpine
WORKDIR /app
COPY . .
RUN yarn install --force && \
	mkdir -p ./Results
CMD ["/bin/bash", "-ec", "while :; do echo '.'; sleep 5 ; done"]
