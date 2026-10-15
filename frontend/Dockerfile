# ---- Build stage: compile the React app ----
FROM node:20-alpine AS build
WORKDIR /app

# Dependencies first (same layer-caching pattern as the backend)
COPY package*.json ./
RUN npm install

# Then the source code
COPY . .

# Backend URL gets baked into the JS at build time.
# Rename to match your app (REACT_APP_... for Create React App, VITE_... for Vite).
ARG REACT_APP_API_URL=http://localhost:8080
ENV REACT_APP_API_URL=$REACT_APP_API_URL

RUN npm run build

# ---- Serve stage: nginx serves the static files ----
FROM nginxinc/nginx-unprivileged:alpine
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 8080
