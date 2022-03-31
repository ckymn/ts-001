# DEVELOPEMENT 

# kullanilacak node versiyonu
FROM node:16-alpine as developement
# docker icin alan
WORKDIR /usr/src/app
# package dosyalarini hepsini . (/usr/src/app) olusturulan workdir'e kaydedilecek 
COPY package*.json .
# development dependency indirme
RUN npm install
# tum director'u al ve docker container alanina kaydet ! .dockerignore for node_modules
COPY . .
# typescript build 
RUN npm run build

# PRODUCTION

FROM node:16-alpine as production
# argument env icin gerekli set alani
ARG NODE_ENV=production
# environment gerekli dependecyler
ENV NODE_ENV=${NODE_ENV}
# 
WORKDIR /usr/src/app
# 
COPY package*.json .
# sadece dependency alani dahil olucak devDependecy alani olmayacak
RUN npm install --only=production
# 
COPY --from=development /usr/src/app/dist ./dist
# container calistirmak
CMD ["node", "dist/index.js"]