### 25. Lấy 5 blog và 5 news mới nhất đã active
```mysql
(SELECT id, title FROM blog WHERE is_active = 1 ORDER BY updated_at DESC LIMIT 5)
	UNION
(SELECT id, title FROM news WHERE is_active = 1 ORDER BY updated_at DESC LIMIT 5); 
```
