### 22. Lấy danh sách user đã comment trong 2 blog mới nhất
```mysql
SELECT DISTINCT `user`.* FROM `user` WHERE id IN
   (SELECT `comment`.user_id from `comment`
   INNER JOIN (SELECT user_id from blog ORDER BY created_at DESC) blog_id_user
   ON `comment`.user_id = blog_id_user.user_id);
```
