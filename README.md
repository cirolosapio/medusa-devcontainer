# Medusa - Dev Container Template

Medusa v2 has been [recently announced](https://github.com/medusajs/medusa/releases/tag/v2.0-preview), if you want to try it out, you can use this template to create a dev container for it.

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new?hide_repo_select=true&ref=main&repo=824511781)

For a more in-depth exploration of the major upgrade, refer to the [new documentation](https://docs.medusajs.com/v2).

## Usage

1. Click on the "Open in GitHub Codespaces" button above
2. Wait for the dev container to be created
3. Once the dev container is ready, you can create a new the Medusa store by running the following command:

```bash
npx create-medusa-app@preview --db-url "postgres://postgres:postgres@postgres:5432/postgres"
```

## Usage Local

1. Clone repository
2. Open with vscode
3. Install the [Dev Container Extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
4. Run the `Rebuild and Reopen in Container` vscode command
5. Wait for the dev container to be created
6. Once the dev container is ready, you can create a new the Medusa store by running the following command:

```bash
npx create-medusa-app@preview --db-url "postgres://postgres:postgres@postgres:5432/postgres"
```

## Storefront

To create a new storefront, you can use the following command:

> The Next.js Starter is currently in development to fully support Medusa v2.

```bash
git clone https://github.com/medusajs/nextjs-starter-medusa -b v2 storefront
```

## Redis

An instance of redis is already running in the dev container.
You should update in your `{PROJECT}/.env` the `REDIS_URL` key with the value `redis://redis:6379`.
Also, you should update the `medusa-config.js` file adding the `redisUrl` property to `process.env.REDIS_URL`.
