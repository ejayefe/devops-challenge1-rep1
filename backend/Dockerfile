# ---- Base image ----
FROM node:20-alpine AS base
WORKDIR /app

# ---- Install dependencies ----
FROM base AS deps
COPY package*.json ./
RUN npm install --omit=dev

# ---- Build/runtime image ----
FROM base AS runner
ENV NODE_ENV=production

# Copy installed node_modules from deps stage
COPY --from=deps /app/node_modules ./node_modules

# Copy application source
COPY . .

# Expose the port your Express app listens on
EXPOSE 8080

# Run as non-root user for better security
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser

CMD ["node", "index.js"]
