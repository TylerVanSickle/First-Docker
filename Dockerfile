FROM node:latest

LABEL maintainer="Tyler VanSickle"
LABEL description="This is a Dockerfile for a Node.js application."
LABEL cohort="Cohort 19"
LABEL animal="Bear"

WORKDIR /app

COPY . .

EXPOSE 8080

RUN npm  install

CMD ["npm", "start"]


