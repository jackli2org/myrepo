FROM node:9.2.0

# Add user 'testuser'
RUN useradd -ms /bin/bash testuser

# Create app directory
WORKDIR /src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .
RUN chmod 755 entrypoint
# RUN npm test

EXPOSE 9010
CMD [ "npm", "start" ]

# WORKDIR /src/app
# ENTRYPOINT ["./entrypoint"]

