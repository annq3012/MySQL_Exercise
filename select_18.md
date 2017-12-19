### 18. Lấy số lượng Blog active của user có id là 1,2,4
```mysql
SELECT  COUNT(id) FROM blog WHERE user_id IN (1,2,4) && is_active = 1 ;
```
