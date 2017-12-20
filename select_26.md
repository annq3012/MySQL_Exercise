### 26. Lấy nội dung comment trong blog và news của user id =1
```mysql
SELECT target_table,`comment` FROM `comment` 
	WHERE  user_id = 1 && target_table IN ('blog', 'news')
```
