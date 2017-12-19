### 10. Lấy Category có tồn tại blog hoặc news đã active (không được lặp lại category)
```mysql
SELECT DISTINCT * FROM category 
WHERE id IN (SELECT DISTINCT category_id FROM blog WHERE is_active = 1) 
OR id IN  (SELECT DISTINCT category_id FROM news WHERE is_active = 1);
```
