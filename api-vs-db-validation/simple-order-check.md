Validasi API Response vs Database (Manual)

Tujuan:
Memastikan data yang diterima dari API benar-benar disimpan di database.


Skenario: Buat Order lalu Cek di Database

 1. Kirim API Request (via Postman)

**Method:** POST  
**Endpoint:** `/orders`  
**Body (JSON):**
```json
{
  "user_id": 1,
  "product_name": "Mouse",
  "status": "pending"
}

