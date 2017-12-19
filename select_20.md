### 20. Lấy blog và news có lượt view nhiều nhất
```mysql
(SELECT MAX(`view`) max_view FROM blog)
	UNION
(SELECT MAX(`view`) max_view FROM news);
```
