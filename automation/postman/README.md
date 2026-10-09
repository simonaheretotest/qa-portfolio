   # Postman API Tests – Valentino's Coffee
# API Test Automation – Valentino's Artisan Coffee House API

Automated API tests for the [Valentino's Artisan Coffee House API](https://valentinos-coffee.herokuapp.com), a demo REST API for products, clients and orders. Built in Postman and run automatically with **Postman CLI** in **GitHub Actions** on every push.

## What is tested

| Folder | Request | Checks |
|---|---|---|
| status | `GET /status` | Status code 200, response header |
| products | `GET /products` | Status code 200 |
| products | `GET /products/:productId` | Status 200, JSON body, product data, **JSON schema** (required fields, no additional properties) |
| clients | `POST /clients` | Status 200, API key returned and saved for later requests |
| orders | `POST /orders` | Status 201, customer name matches request, order ID format, **JSON schema** |
| orders | `GET /orders` | Status 200 |
| orders | `GET /orders/:orderId` | Status 200, order ID and products present, order ID format |
| products | GET /products?limit=3 | Max 3 products returned |
| products | GET /products?category=coffee | All results have category “coffee” |
| products | GET /products/9999 | 404 for nonexistent product |
| clients | POST /clients (no email) | 400 for missing required field |
| orders | PATCH /orders/:orderId | 404 — method not supported |
| orders | DELETE /orders/:orderId | 404 — method not supported |

## Techniques used

- **Status code, header and body assertions** with `pm.test` and Chai `pm.expect`
- **JSON schema validation**, including `required` fields and `additionalProperties: false`
- **Request chaining**: the run registers a new client, saves its API key, creates an order, then retrieves that exact order by its saved `orderId`
- **Dynamic test data**: a random customer name generated in a pre-request script and compared with the response
- **API key authentication** set at folder level
- **No secrets in the repository**: every run creates its own API client and key
- **CI/CD**: Postman CLI runs the collection in GitHub Actions on every push

## Finding during testing

Order IDs were assumed to be 9 characters long, based on observed responses. A later run returned a 10-character ID (`OP37ODLJUL`), which failed the format and schema tests. The assertion was relaxed to accept 9–10 characters, and the length question would be raised with the API owners, since the API documentation does not define the format.

## Files

- `valentinos-coffee.postman_collection.json` – exported Postman collection (v2.1) with all requests and tests
- [`.github/workflows/postman.yml`](../../.github/workflows/postman.yml) – GitHub Actions workflow

## How to run

**In Postman:** File → Import → select the collection file → Run collection.

**With Newman (command line, no Postman account needed):**

```bash
npm install -g newman
newman run valentinos-coffee.postman_collection.json
```

Run the whole collection in order: the `clients` folder must run before `orders`, because it provides the API key.
