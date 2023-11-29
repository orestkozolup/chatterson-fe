#stage 1
FROM node:18-alpine as BUILD_IMAGE
WORKDIR /app/chatterson-fe

#copy package.json
COPY package.json .

#install packages
RUN npm install

#copy all remaining files
COPY . .

#build project
RUN npm run build


#stage 2
FROM node:18-alpine as PRODUCTION_IMAGE
WORKDIR /app/chatterson-fe

COPY --from=BUILD_IMAGE /app/chatterson-fe/dist/ /app/chatterson-fe/dist/
EXPOSE 8080

COPY package.json .
COPY vite.config.ts .

#install typescript
RUN npm install typescript

EXPOSE 8080
CMD [ "npm", "run", "preview" ]
