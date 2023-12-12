#Stage 1 Creating angular build(dist folder). 
#as node means you are creating an alias for this stage to be accessed in the future stages

FROM node:alpine as node
ARG env
ARG port

#ENV CHROME_BIN="C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe"
LABEL author="Angular Enthusiast"
LABEL devURL="http://localhost:8082"
LABEL prodUrl="http://localhost:8083"
LABEL description="We aim to deploy the angular app to DockerHub"

WORKDIR /app

#WORKDIR will create the app directory if it doesnt already exist

# node is the base image from which Docker will include all functionality into the image we will be crearting
# Its like a parent class from which we are inheriting all features into the child class

COPY package.json package-lock.json ./
RUN npm cache clean --force
RUN npm install -g envsub
RUN npm install
COPY . .
#copy all the files and folders from the directory where the Dockerfile is present into the working directory i.e /app

# RUN envsub src/assets/runtime-environment.js

# COPY envsub /tmp/

# RUN cat src/assets/runtime-environment.js
#RUN npm run test
RUN npm run build:${env}

ADD docker/startnode.js /startnode.js
RUN chmod +x /startnode.js
CMD ["npm run envsub"]
#ENTRYPOINT ["node","/startnode.js"]

#CMD ["sh", "-c","envsub","/usr/share/nginx/html/assets/runtime-environment.js"]
# CMD [ "echo", "Default argument from CMD instruction"]