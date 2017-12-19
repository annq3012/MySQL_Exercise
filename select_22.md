### 22. Lấy danh sách user đã comment trong 2 blog mới nhất
```mysql
SELECT DISTINCT `user`.* FROM `user` WHERE id IN
   (SELECT `comment`.user_id from `comment`
   INNER JOIN (SELECT * from blog ORDER BY updated_at DESC LIMIT 2) blog_limit_2
   ON `comment`.target_id = blog_limit_2.id 
   WHERE `comment`.target_table = 'blog');
```
