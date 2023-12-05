#Stage 1 Creating angular build(dist folder). 
#as node means you are creating an alias for this stage to be accessed in the future stages
FROM node:alpine as node
ARG env
LABEL author="Angular Enthusiast"
LABEL devURL="http://localhost:8082"
LABEL prodUrl="http://localhost:8083"
LABEL description="We aim to deploy the angular app to DockerHub"
RUN mkdir /app
WORKDIR /app

RUN pwd
#prints the current working directory

# node is the base image from which Docker will include all functionality into the image we will be crearting
# Its like a parent class from which we are inheriting all features into the child class

COPY package.json package-lock.json ./
RUN npm cache clean --force
RUN npm install
COPY . .
#copy all the files and folders from the directory where the Dockerfile is present into the working directory i.e /app

RUN echo $(ls -l /)
RUN echo $(ls -l /app)

RUN npm run build:${env}

#Stage 2

FROM nginx:alpine

#caching files
VOLUME /var/cache/nginx 

#Now I need to access the dist folder from the previous stage. 
# I copy the dist folder into the folder that nginx uses to refer static files.
COPY --from=node /app/dist/jenkins-test /usr/share/nginx/html/
# to replace the default nginx config file with our config file. In our config file we
# have added an additional check. When we are routing to other components with different paths,
# nginx might think its a server side path and return 404. In such cases we instruct nginx to 
# redirect to index.html file. This is very important
COPY ./config/nginx.config /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD nginx -g "daemon off;"