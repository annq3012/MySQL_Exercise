### 20. Lấy blog và news có lượt view nhiều nhất
```mysql
(SELECT id,title, `view` FROM blog ORDER BY `view` DESC LIMIT 1)
	UNION ALL
(SELECT id,title, `view` FROM news ORDER BY `view` DESC LIMIT 1);
```
