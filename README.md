# genesis-ragflow

RAGFlow deployment repository (clean baseline).

## Layout

- `docker-compose.yml`: service stack
- `.env.example`: env template
- `scripts/deploy.sh`: release deploy helper
- `scripts/rollback.sh`: release rollback helper
- `nginx/ragflow.conf`: reverse proxy example

## Server paths

- `/opt/ragflow/releases/<release_id>`
- `/opt/ragflow/current`
- `/opt/ragflow/shared/.env`
- `/opt/ragflow/shared/data`

## Deploy

```bash
bash scripts/deploy.sh <release_id>
```

## Rollback

```bash
bash scripts/rollback.sh <release_id>
```
