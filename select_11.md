### 11. Lấy tổng lượt view của từng category thông qua blog và news
```mysql
SELECT category_id, SUM(sumview) view_category FROM
	((SELECT category_id, SUM(`view`) sumview FROM blog GROUP BY category_id)
		UNION
	(SELECT category_id, SUM(`view`) sumview FROM news GROUP BY category_id)) `sum`
GROUP BY category_id ;
```
