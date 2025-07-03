Validasi API Response vs Database (Manual)

Tujuan:
Memastikan data yang diterima dari API benar-benar disimpan di database.


Skenario: Buat Order lalu Cek di Database
 Kirim API Request (via Postman)

**Method:** POST  
**Endpoint:** `/orders`  
**Body (JSON):**
```json
{
  "user_id": 1,
  "product_name": "Mouse",
  "status": "pending"
}

// Terima Response API


{
  "order_id": 101,
  "user_id": 1,
  "status": "pending"
}

// Cek Data di Database


SELECT * FROM orders WHERE id = 101;



