### 14. Lấy 3 User comment đầu tiên trong 5 blogs mới nhất
```mysql
SELECT DISTINCT `user`.* FROM `user` WHERE id IN
	(SELECT `comment`.user_id FROM `comment` 
	JOIN (SELECT blog.* FROM blog ORDER BY created_at DESC LIMIT 5) latest_blog 
    ON `comment`.user_id = latest_blog.user_id ORDER BY `comment`.updated_at DESC) LIMIT 3;
```
