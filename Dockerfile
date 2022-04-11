FROM node:its alpine 3.15 as Test
WORKDIR /app
COPY package*.json /app/
RUN npm install
 COPY ./ /app/
 RUN npm run build --production
CMD ["ng serve"]
