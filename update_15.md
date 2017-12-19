### 15. Update rank user = 2 khi tổng số lượng comment của user > 20
```mysql
SET SQL_SAFE_UPDATES = 0;
UPDATE `user` SET rank = 2 WHERE id IN
   (SELECT user_id FROM 
      (SELECT user_id,COUNT(id) count_cmt FROM `comment` GROUP BY user_id) update_rank	
   WHERE count_cmt >20);
```
