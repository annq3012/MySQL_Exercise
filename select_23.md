### 23. Lấy 2 blog, 2 news mà user có id = 1 đã comment
```mysql
SELECT id,title FROM blog WHERE id IN
  (SELECT target_id FROM `comment` WHERE user_id = 1 && target_table = 'blog)
    UNION
SELECT id,title FROM news WHERE id IN
  (SELECT target_id FROM `comment` WHERE user_id = 1 && target_table = 'news');
```
