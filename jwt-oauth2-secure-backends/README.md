# 🔐 MuleSoft + Keycloak Integration POC  
**Secure API access with OAuth2 / JWT**  
_By Amsata Mbengue (AmsaTech)_

---

## 🧭 Overview

This Proof of Concept (POC) demonstrates how to secure ANY API using **Keycloak** as an OpenID Connect Identity Provider (IdP).  
It illustrates the full **OAuth2 Password Grant flow**, the **JWT validation**, and the way a **MuleSoft proxy or Flex Gateway** can validate tokens in real time.

The project is organized for clarity and portability — with scripts, Postman requests, and architecture documentation.

---

## ⚙️ Architecture Summary

![Architecture](./docs/architecture_cible.jpg)

1. **Client** authenticates to **Keycloak** and receives a JWT access token.  
2. **MuleSoft API Gateway / Proxy** receives the request with the token.  
3. The token is validated against **Keycloak’s JWKS endpoint**.  
4. If valid → access granted to the backend.  
5. If invalid → `401 Unauthorized`.

---

## 🚀 Quick Start

### 1️ Clone the repository
```bash
git clone https://github.com/amsatambengue/mulesoft-keycloak-poc.git
cd mulesoft-keycloak-poc
```

### 2️ Configure your environment

Create a .env file (not committed to GitHub) based on .env.example:
```bash

KC_BASE_URL=http://localhost:8080
REALM=mule_realm
CLIENT_ID=mule-gateway-client
CLIENT_SECRET=<YOUR_CLIENT_SECRET>
USERNAME=<YOUR_USERNAME>
PASSWORD=<YOUR_PASSWORD>
```

### 3 Run the token request
If you use Git Bash, Mac, or Linux:
```bash
chmod +x requests/get_token.sh
requests/get_token.sh
```
It returns a JSON object containing your access token.

💡 You can also use Postman instead of scripts.
Import both postman_collection.json and postman_environment.json.

### 4 🌐 Call the Secured API
Once you have your access token, update .env with:
```bash
ACCESS_TOKEN=<PASTE_ACCESS_TOKEN>
API_BASE_URL=https://<your-proxy-domain>/posts
```

Then execute:
```bash
chmod +x requests/call_secured_api.sh
requests/call_secured_api.sh
```

Expected output:
```json
{ "message": "Access granted. Token valid." }
```

👤 Author

Amsata Mbengue
Integration & DevOps Consultant — MuleSoft | API | Security | CI/CD | Kubernetes
📧 amsata.mbengue@gmail.com