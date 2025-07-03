 Validasi API Response vs Database (Manual)

 Tujuan
 
----Memastikan bahwa data yang dikirim melalui API (misalnya POST order baru) benar-benar disimpan dengan benar ke dalam database.

 Skenario Uji: Buat Order, Lalu Validasi di Database

 Deskripsi
 
---QA perlu memastikan bahwa setiap order yang dikirim melalui API `/orders` akan tersimpan dengan data yang sesuai di tabel `orders`.

 1. Kirim Request API

- **Method:** POST  
- **Endpoint:** `/orders`  
- **Header:** `Content-Type: application/json`  
- **Body:**
  
```json
{
  "user_id": 1,
  "product_name": "Mouse Wireless",
  "status": "pending"
}
