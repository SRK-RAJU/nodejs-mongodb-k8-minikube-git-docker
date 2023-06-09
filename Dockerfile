FROM node:latest

LABEL authors="srkmsk <suddala.rajukumar123@gmail.com>"

RUN mkdir /app
WORKDIR /app

COPY ["./package.json", "yarn.lock", "./"]
RUN yarn install

COPY src ./src

EXPOSE 80

CMD ["node", "src"]
