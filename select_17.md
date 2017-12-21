### 17. Select 10 blog mới nhất được tạo bởi các user active
```mysql
SELECT blog.* FROM blog
	INNER JOIN user ON blog.user_id = user.id
	WHERE user.is_active = 1
ORDER BY created_at DESC LIMIT 10;
```
