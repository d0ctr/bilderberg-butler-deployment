FROM node:18

ARG REPO_VERSION="main"

RUN git clone https://github.com/d0ctr/bilderberg-butler --depth 1 --branch $REPO_VERSION

WORKDIR "/bilderberg-butler"

RUN npm i

ENV PORT=""

CMD [ "npm", "start" ]

STOPSIGNAL SIGINT

EXPOSE ${PORT}