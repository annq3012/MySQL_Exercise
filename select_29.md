### 29. Lấy số lượng user 1 đang follow
```mysql
SELECT COUNT(id) FROM follow WHERE from_user_id = 1;
```
