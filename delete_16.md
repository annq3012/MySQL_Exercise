### 16. Xoá comment mà nội dung comment có từ "fuck" hoặc "phức"
```mysql
DELETE FROM `comment` WHERE `comment` 
	LIKE binary '%phức%' 
	OR `comment` LIKE '%fuck%';
```
