### 12. Lấy blog được tạo bởi user mà user này không có bất kỳ comment ở blog
```mysql
SELECT * FROM blog WHERE user_id NOT IN 
	(SELECT user_id FROM `comment` WHERE target_table = 'blog');
```
