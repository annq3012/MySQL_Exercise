### 19. Lấy 5 blog và 5 news của 1 category bất kỳ
```mysql
SET @rd = (SELECT id FROM category ORDER BY rand() limit 1);
(SELECT id, category_id, title FROM blog WHERE category_id = @rd LIMIT 5)
	UNION
(SELECT id, category_id, title FROM news WHERE category_id = @rd LIMIT 5);
```
