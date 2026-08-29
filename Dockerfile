# Glama / stdio clients: proxy the hosted Streamable HTTP MCP endpoint.
# Upstream: https://aiagentsarchive.com/mcp
FROM node:22-alpine
WORKDIR /app
ENV NODE_ENV=production
RUN npm install -g mcp-remote@0.1.37
ENTRYPOINT ["mcp-remote", "https://aiagentsarchive.com/mcp"]
