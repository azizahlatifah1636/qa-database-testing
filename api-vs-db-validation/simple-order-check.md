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
```
2. Terima Response dari API
```
{
  "order_id": 101,
  "user_id": 1,
  "product_name": "Mouse Wireless",
  "status": "pending"
}
```

3. Validasi ke Database

```
   SELECT * FROM orders WHERE id = 101;
```
4. Hasil dari DATABASE

| id  | user\_id | product\_name  | status  |
| 101 | 1        | Mouse Wireless | pending |

5. Result : PASS

| Field          | Data dari API    | Data dari Database | Status  |
| `order_id`     | 101              | 101                | ✅ MATCH |
| `user_id`      | 1                | 1                  | ✅ MATCH |
| `product_name` | "Mouse Wireless" | "Mouse Wireless"   | ✅ MATCH |
| `status`       | "pending"        | "pending"          | ✅ MATCH |



