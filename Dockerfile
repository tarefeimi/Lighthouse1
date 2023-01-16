FROM node:16.3.0-alpine
WORKDIR /app
COPY package*.json ./
RUN yarn
COPY . .
EXPOSE 9001
CMD ["npx", "lhci", "server", "--storage.storageMethod=sql", "--storage.sqlDialect=sqlite", "--storage.sqlDatabasePath=/db/db.sql"]
