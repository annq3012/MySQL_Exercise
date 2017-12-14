### 7. Xoá tất cả comment của user = 2 trong blog = 5
```mysql
DELETE FROM `comment` WHERE `comment`.user_id = 
	(SELECT `user`.id FROM `user` 
		INNER JOIN blog ON `user`.id = blog.user_id
        WHERE `user`.id = 2 && blog.id =5
);
```
