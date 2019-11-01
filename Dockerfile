FROM node:11-alpine
WORKDIR /var/www/app

# Install dependencies
COPY package.json .
RUN yarn global add pg sequelize sequelize-cli
RUN yarn

# Bundle app source
COPY . .

# Exports
EXPOSE 5000
CMD [ "yarn", "start" ]

