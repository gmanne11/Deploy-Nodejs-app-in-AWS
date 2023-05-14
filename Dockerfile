# Our node app is based on `18-alpine` image 
FROM node:18-alpine

# Setting up the environment variables needed:
ENV DOMAIN="http://localhost:3000" \
PORT=3000 \
STATIC_DIR="./client" \
PUBLISHABLE_KEY="pk_test_51N7dWjAIadUMeMLwSvEDtEeT6gayE8Y2Qo1q7OzOyI4LL2doouBH4T0C6MbNjZNnjheS3AtWisymoZd79Eny9EFI002dDu0CWu" \
SECRET_KEY="sk_test_51N7dWjAIadUMeMLwZoJaAG87iNNuUioVnFTIDeYc002L8Pv8lFD5VQ64Yac29xTnI5BKCwMUUB0bdhOSE566wphd00fURyMebU"

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]
