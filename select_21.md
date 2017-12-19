### 21. Lấy blog được tạo trong 3 ngày gần nhất
```mysql
SELECT * FROM blog WHERE DATEDIFF(now(), created_at) = 3;
```
