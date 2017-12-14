### 4. Select 10 blog mới nhất đã active
```myslq
SELECT * FROM blog WHERE is_active = 1 ORDER BY updated_at DESC LIMIT 10;
```
