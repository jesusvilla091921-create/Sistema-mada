# Backend container
FROM node:18-alpine
WORKDIR /app
COPY server/package*.json ./
RUN npm install --production
COPY server ./
# Serve client static (copied at build time)
COPY client/public ./public
EXPOSE 4000
CMD ["npm","start"]
