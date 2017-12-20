### 34. Tính điểm cho user có email là minh82@example.com trong bảng comment. Cách tính điểm:
 Trong bảng comment với taget_table = "blog" tính 1 điểm, taget_table = "news" tính 2 điểm.
```mysql
SELECT `user`.email, SUM(IF(target_table = 'blog', 1, 2)) `point` 
	FROM  `comment`
	INNER JOIN `user` ON `user`.id = `comment`.user_id
    WHERE `user`.email = 'minh82@example.com';  
```
