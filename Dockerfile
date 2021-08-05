FROM node:16
WORKDIR /usr/trevdevs/vue/todolist
COPY package*.json ./
RUN npm install --production
ADD dist ./
EXPOSE 5000
CMD ["npm", "run", "start"]