FROM node:lts

ENV PORT 3000

COPY . .

RUN npm install

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]

# FROM node:lts as dependencies
# WORKDIR /practica-docker
# COPY package.json yarn.lock ./
# RUN yarn install --frozen-lockfile

# FROM node:lts as builder
# WORKDIR /practica-docker
# COPY . .
# COPY --from=dependencies /practica-docker/node_modules ./node_modules
# RUN yarn build

# FROM node:lts as runner
# WORKDIR /practica-docker
# ENV NODE_ENV production
# # If you are using a custom next.config.js file, uncomment this line.
# # COPY --from=builder /my-project/next.config.js ./
# COPY --from=builder /practica-docker/public ./public
# COPY --from=builder /practica-docker/.next ./.next
# COPY --from=builder /practica-docker/node_modules ./node_modules
# COPY --from=builder /practica-docker/package.json ./package.json

# EXPOSE 3000
# CMD ["yarn", "start"]


# FROM node:10

# WORKDIR /usr/src/app/practica-docker

# COPY package*.json ./

# RUN npm install

# EXPOSE 3000

# CMD ["npm", "run", "start:dev"]