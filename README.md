# genesis-ragflow

RAGFlow deployment repository (clean baseline).

## Server paths

- `/opt/ragflow/releases/<release_id>`
- `/opt/ragflow/current`
- `/opt/ragflow/shared/.env`
- `/opt/ragflow/shared/data`

## CI/CD

- Workflow: `.github/workflows/deploy.yml`
- Trigger: push to `main`
- Required repository secrets:
  - `DEPLOY_HOST`
  - `DEPLOY_USER`
  - `DEPLOY_SSH_KEY`

## Manual deploy

```bash
bash scripts/deploy.sh <release_id>
```

## Rollback

```bash
bash scripts/rollback.sh <release_id>
```
