### 27. Blog của user đang được user có id = 1 follow
```mysql
SELECT blog.* FROM blog
  INNER JOIN (SELECT to_user_id FROM follow WHERE from_user_id = 1) follow_user
ON blog.user_id = follow_user.to_user_id;
```
