### 23. Lấy 2 blog, 2 news mà user có id = 1 đã comment
```mysql
SELECT blog.id,blog.title,id_blog.target_table FROM blog 
  JOIN (SELECT target_id, target_table FROM `comment` WHERE user_id = 1 && target_table = 'blog' LIMIT 2) id_blog  
  ON blog.id = id_blog.target_id 
   UNION
SELECT news.id,news.title,id_news.target_table FROM news 
  JOIN (SELECT target_id, target_table FROM `comment` WHERE user_id = 1 && target_table = 'news' LIMIT 2) id_news  
  ON news.id = id_news.target_id;

```
