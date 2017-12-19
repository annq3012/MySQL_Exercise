### 9. Lấy số lượng comment trung bình trên mỗi blog (Update: Lấy số lượng comment trung bình của tất cả blog)
```mysql
SELECT AVG(count_cmt) FROM (SELECT COUNT(`comment`.id) count_cmt FROM blog 
	LEFT JOIN `comment` ON (`comment`.target_id = blog.id && `comment`.target_table = 'blog') 
    GROUP BY blog.id) avg_cmt;
```
