### 7. Xoá tất cả comment của user = 2 trong blog = 5
```mysql
DELETE FROM `comment` WHERE user_id = 2 && target_id = 5 && target_table = 'blog'
```
