### 30. Lấy 1 comment(id_comment, comment) mới nhất và thông tin user của user đang được follow bởi user 1
```mysql
SELECT `comment`.id, `comment`.`comment`, `user`.id, `user`.full_name FROM `comment`
	 INNER JOIN `user`
	 ON `comment`.user_id = `user`.id 
	 WHERE `comment`.user_id IN (SELECT to_user_id FROM follow WHERE from_user_id = 1) 
 ORDER BY `comment`.created_at DESC LIMIT 1;
```
