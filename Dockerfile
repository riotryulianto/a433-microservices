# syntax=docker/dockerfile:1
   
FROM node:14
WORKDIR /app
COPY . .
ENV NODE_ENV=production DB_HOST=item-db
RUN npm install --production --unsafe-perm && npm run build
CMD ["node", "npm start"]
EXPOSE 8080