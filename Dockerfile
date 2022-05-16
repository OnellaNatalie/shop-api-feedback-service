# get node base image form dockerhub
FROM node:16-alpine

# setting up the work directory
WORKDIR /app

# copying package.json 
COPY package.json .

# copy current directory files 
COPY . .

# setting up the port
ENV PORT 5004

# exposeing port
EXPOSE $PORT

# running the app
CMD ["npm", "start"]