## Rollbar – error monitoring

Rollbar captures errors from live applications and surfaces them with stack traces, 
environment context and frequency data.

### How I use it in QA

- check for new errors after a deployment (regression detection)
- compare error frequency before and after a release
- read stack traces to identify which module or function failed
- filter by environment (staging vs production) to confirm bugs are fixed before go-live

### Example

Triggered test errors in a Node.js project to verify monitoring setup:
- `[QA] Checkout flow returned 500 on valid cart submission` — ERROR level, staging environment
- `QA monitoring test - connection verified` — LOG level

Both appeared in the dashboard within seconds.
