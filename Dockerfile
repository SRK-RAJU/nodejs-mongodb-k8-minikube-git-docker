FROM node:10.16.3-alpine

LABEL authors="srkmsk <suddala.rajukumar123@gmail.com>"

RUN mkdir /app
WORKDIR /app

COPY ["./package.json", "yarn.lock", "./"]
RUN yarn install

COPY src ./src

EXPOSE 87

CMD ["node", "src"]
