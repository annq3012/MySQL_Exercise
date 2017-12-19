### 24. Lấy 1 blog và 1 news có số lượng comment nhiều nhất
```mysql
(SELECT id, title,target_table FROM  blog 
	INNER JOIN 
    (SELECT target_id, target_table, COUNT(id) cmt FROM `comment` WHERE target_table = 'blog' GROUP BY target_id ORDER BY cmt DESC LIMIT 1) list_count
    ON id = target_id)
 UNION
(SELECT id, title,target_table FROM  news 
	INNER JOIN 
    (SELECT target_id, target_table, COUNT(id) cmt FROM `comment` WHERE target_table = 'news' GROUP BY target_id ORDER BY cmt DESC LIMIT 1) list_count
    ON id = target_id);
```
