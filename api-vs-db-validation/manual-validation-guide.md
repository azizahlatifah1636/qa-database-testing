Panduan Validasi Manual API vs Database (Simulasi dengan MockAPI)

 Tujuan
Membantu QA (manual tester) melakukan validasi bahwa data yang dikirim melalui API benar-benar tersimpan dengan benar di backend/database.

---

 Studi Kasus
Validasi data pemesanan (`orders`) yang dikirim melalui API POST, kemudian dicocokkan dengan data yang tersimpan di backend (dalam hal ini MockAPI.io digunakan sebagai simulasi database).

---

 Tools yang Digunakan

| Tools | Kegunaan |
|-------|----------|
| Postman | Kirim dan cek API |
| MockAPI.io | Simulasi API dan database |
| Markdown / GitHub | Dokumentasi hasil validasi |

---

 Alur Langkah Manual Testing

 1. Kirim Request POST ke API

- Buka **Postman**
- Method: `POST`
- URL:  
  `https://686630a689803950dbb19460.mockapi.io/orders`
- Header:  
  `Content-Type: application/json`
- Body:
  ```json
  {
    "user_id": 1,
    "product_name": "Mouse Wireless",
    "status": "pending"
  }
```

2. Respons API
```
{
  "id": "1",
  "user_id": "1",
  "product_name": "Mouse Wireless",
  "status": "pending",
  "createdAt": "2025-07-03T14:35:00.000Z"
}
```
3.  Validasi ke "Database"
Ganti method jadi GET

URL:
https://686630a689803950dbb19460.mockapi.io/orders

4. Result

| Field          | Data dari API  | Data dari DB (MockAPI) | Cocok? |
| `user_id`      | 1              | 1                      | ✅      |
| `product_name` | Mouse Wireless | Mouse Wireless         | ✅      |
| `status`       | pending        | pending                | ✅      |
