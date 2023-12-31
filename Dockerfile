FROM node

WORKDIR /usr/app

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/black0utt/backend-ingress.git

WORKDIR /usr/app/backend-ingress

EXPOSE 5000

CMD ["sh", "-c", "git pull && npm install && npm run start"]