### 28. Lấy số lượng user đang follow user = 1
```mysql
SELECT COUNT(id) FROM follow WHERE to_user_id = 1;
```
