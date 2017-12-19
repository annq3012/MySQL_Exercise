### 13. Lấy 5 blog mới nhất và số lượng comment cho từng blog
```mysql
SELECT * FROM blog
	INNER JOIN (SELECT target_id,COUNT(target_id) cmt FROM `comment` 
	WHERE target_table = 'blog' GROUP BY target_id) view_cmt
	ON id = target_id GROUP BY id ORDER BY updated_at DESC LIMIT 5;
```
