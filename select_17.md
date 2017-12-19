### 17. Select 10 blog mới nhất được tạo bởi các user active
```mysql
SELECT  blog.* FROM blog 
	INNER JOIN (SELECT id FROM `user` WHERE is_active = 1) id_user
    ON user_id = id_user.id ORDER BY created_at DESC LIMIT 10;
```
