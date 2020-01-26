FROM node:12.6.0-alpine
WORKDIR /app
COPY . .
RUN yarn install --force && \
	mkdir -p ./reports && \
	mkdir -p ./reports/ForgeUiTestReport
