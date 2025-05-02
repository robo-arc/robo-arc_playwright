# Use the official Playwright image (pin the version to match your project)
FROM mcr.microsoft.com/playwright:v1.52.0-noble

# Set working directory
WORKDIR /app

# Install dependencies
COPY package.json package-lock.json tsconfig.json ./
RUN npm ci

# Copy the rest of your code
COPY . .

# Expose any ports if needed (uncomment if your app serves HTTP)
# EXPOSE 3000

# Default command: allow passing npm scripts as arguments
ENTRYPOINT ["npm", "run"]
# Example: docker run --rm my-image-name test 