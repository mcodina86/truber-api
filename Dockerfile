FROM node:11-alpine
WORKDIR '/var/www/app'

# Install dependencies
COPY package.json .
RUN yarn install

# Bundle app source
COPY . .

# Exports
EXPOSE 5000
CMD [ "yarn", "start" ]
 
