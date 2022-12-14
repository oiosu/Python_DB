### ๐ WHERE

```sql
-- users.csv _์ด 1000๊ฐ์ ๋ ์๋ ๋ฐ์ดํฐ 
-- ๋ฐ์ดํฐ๋ฅผ ๋ฃ์ ๊ฒ 
-- classmates, examples, members, students ํ์ด๋ธ ํ์ธ ๊ฐ๋ฅ

-- 05_users.sql
-- ํ์ด๋ธ ์์ฑ 
CREATE TABLE users(
	first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    age INT NOT NULL,
    country TEXT NOT NULL,
    phone TEXT NOT NULL,
    balance INTEGER NOT NULL,
);

-- ๋ฐ์ดํฐ๋ฅผ ์ถ๊ฐ 
.mode csv
-- ๋ฐ๋์ ๊ฐ์ ๋๋ ํ ๋ฆฌ์ ์๋ users.csv ํ์ผ์ users ํ์ด๋ธ๋ก 
.import users.csv users


```



---

#### โ ํน์  ์กฐ๊ฑด์ผ๋ก ๋ฐ์ดํฐ ์กฐํํ๊ธฐ 

```sql
SELECT * FROM ํ์ด๋ธ ์ด๋ฆ WHERE ์กฐ๊ฑด; 
```

```sql
 -- 30์ธ ์ด์์ธ ์ฌ๋๋ค 
 SELECT * FROM users WHERE age >= 30;
 
 -- ํ์ฉ _ 30์ธ ์ด์์ธ ์ฌ๋๋ค์ ์ด๋ฆ 
 SELECT first_name FROM users WHERE age >= 30;
 
 -- ํ์ฉ _ 30์ธ ์ด์์ธ ์ฌ๋๋ค์ ์ด๋ฆ 3๋ช๋ง 
 SELECT first_name FROM users WHERE age >= 30 LIMIT 3;
```

```sql
-- USERS ํ์ด๋ธ์์ AGE๊ฐ 30์ด์์ด๊ณ  ์ฑ์ด '๊น'์ธ ์ฌ๋์ ๋์ด
SELECT age, first_name FROM users WHERE age >= 30 AND last_name = '๊น';
```

---



#### ๐ก WHERE ์ ์์ ์ฌ์ฉํ  ์ ์๋ ์ฐ์ฐ์ 

**โผ ๋น๊ต ์ฐ์ฐ์** 

: = , >, >=, <, <= ๋ ์ซ์ ํน์ ๋ฌธ์ ๊ฐ์ ๋/์, ๋์ผ ์ฌ๋ถ๋ฅผ ํ์ธํ๋ ์ฐ์ฐ์

**โผ ๋ผ๋ฆฌ ์ฐ์ฐ์ : AND, OR, NOT** 

* AND :  ์์ ์๋ ์กฐ๊ฑด๊ณผ ๋ค์ ์ค๋ ์กฐ๊ฑด์ด ๋ชจ๋ ์ฐธ์ธ ๊ฒฝ์ฐ 
* OR : ์์ ์กฐ๊ฑด์ด๋ ๋ค์ ์กฐ๊ฑด์ด ์ฐธ์ธ ๊ฒฝ์ฐ
* NOT: ๋ค์ ์ค๋ ์กฐ๊ฑด์ ๊ฒฐ๊ณผ๋ฅผ ๋ฐ๋๋ก 



#### โ ์ฃผ์ _์ฐ์ ์์

```sql
--1
WHERE HEIGHT = 175 OR HEIGHT = 183 AND WHIGHT = 80
--2
WHERE (HEIGHT = 175 OR HEIGHT = 183) AND WEIGHT = 80  -- ์ ๋งคํ๋ค๊ณ  ๋๊ปด์ง๋ ๊ดํธ ์น์!

-- ๊ดํธ์ ์ฐจ์ด 
-- 1 ) ํค๊ฐ 175์ด๊ฑฐ๋, ํค๊ฐ 183์ด๋ฉด์ ๋ชธ๋ฌด๊ฒ๊ฐ 80์ธ ์ฌ๋ -- ๊ธฐํธ , ์ฃผ์๊น๊ฒ ๋ณด๊ธฐ 
-- 2) ํค๊ฐ 175 ๋๋ 183 ์ธ ์ฌ๋ ์ฃผ์์ ๋ชธ๋ฌด๊ฒ๊ฐ 80์ธ ์ฌ๋ 
```



#### ๐ก SQL ์์ ์ฌ์ฉํ  ์ ์๋ ์ฐ์ฐ์ 

* **BETWEEN ๊ฐ1 AND ๊ฐ2**
  * ๊ฐ1 ๊ณผ ๊ฐ 2 ์ฌ์ด์ ๋น๊ต (๊ฐ1 <= ๋น๊ต๊ฐ <= ๊ฐ2)

* **IN(๊ฐ1, ๊ฐ2 ....)**
  * ๋ชฉ๋ก ์ค์ ๊ฐ์ด ํ๋๋ผ๋ ์ผ์นํ๋ฉด ์ฑ๊ณต

* **LIKE** 
  * ๋น๊ต ๋ฌธ์์ด๊ณผ ํํ ์ผ์น, ์์ผ๋ ์นด๋ (% : 0๊ฐ ์ด์ ๋ฌธ์, _: 1๊ฐ ๋จ์ผ๋ฌธ์)

* **IS NULL / IN NOT NULL** 
  * NULL ์ฌ๋ถ๋ฅผ ํ์ธํ  ๋๋ ํญ์ = ๋์ ์ IS ์ฌ์ฉ



* **๋ถ์  ์ฐ์ฐ์** 

> * ๊ฐ์ง ์๋ค. **!=, ^=, <>**
> * ~์ ๊ฐ์ง ์๋ค.  **NOT ์นผ๋ผ๋ช =** 
> * ~๋ณด๋ค ํฌ์ง ์๋ค. **NOT ์นผ๋ผ๋ช >**

```sql
WHERE ์นผ๋ผ๋ช1 != ๋น๊ต๊ฐ1
	AND ์นผ๋ผ๋ช2 ^= ๋น๊ต๊ฐ2
	AND ์นผ๋ผ๋ช3 <> ๋น๊ต๊ฐ3
	AND NOT ์นผ๋ผ๋ช4 = ๋น๊ต๊ฐ4
	AND NOT ์นผ๋ผ๋ช5 > ๋น๊ต๊ฐ5;
```



#### ๐ก ์ฐ์ฐ์ ์ฐ์ ์์ 

* **1์์_๊ดํธ : ()**

* 2์์_NOT

* 3์์_๋น๊ต ์ฐ์ฐ์, SQL 

* 4์์_AND

* 5์์_OR



---

### ๐ SQLite Ageeregate Functions

โผ Aggregate Functions_์ง๊ณํจ์ 

* **๊ฐ ์งํฉ์ ๋ํ ๊ณ์ฐ์ ์ํํ๊ณ  ๋จ์ผ ๊ฐ์ ๋ฐํ** 
  * ์ฌ๋ฌ ํ์ผ๋ก๋ถํฐ ํ๋์ ๊ฒฐ๊ณผ๊ฐ์ ๋ฐํํ๋ ํจ์ 
* **SELECT ๊ตฌ๋ฌธ์์๋ง ์ฌ์ฉ๋จ**
* EX) ํ์ด๋ธ ์ ์ฒด ํ ์๋ฅผ ๊ตฌํ๋ **COUNT(*)**
* EX) age ์ปฌ๋ผ ์ ์ฒด ํ๊ท  ๊ฐ์ ๊ตฌํ๋ **AVG(age)**



| **COUNT** | **๊ทธ๋ฃน์ ํญ๋ชฉ ์๋ฅผ ๊ฐ์ ธ์**               |
| :-------: | :---------------------------------------- |
|  **AVG**  | **๋ชจ๋  ๊ฐ์ ํ๊ท ์ ๊ณ์ฐ**                 |
|  **MAX**  | **๊ทธ๋ฃน์ ์๋ ๋ชจ๋  ๊ฐ์ ์ต๋๊ฐ์ ๊ฐ์ ธ์ด** |
|  **MIN**  | **๊ทธ๋ฃน์ ์๋ ๋ชจ๋  ๊ฐ์ ์ต์๊ฐ์ ๊ฐ์ ธ์ด** |
|  **SUM**  | **๋ชจ๋  ๊ฐ์ ํฉ์ ๊ณ์ฐ**                   |



**โผ COUNT(๋ ์ฝ๋์ ๊ฐ์ ์กฐํํ๊ธฐ)**

```sql
SELECT COUNT(์ปฌ๋ผ) FROM ํ์ด๋ธ์ด๋ฆ;
```

```sql
-- ํ์ด๋ธ์ ๋ ์ฝ๋ ์ด ๊ฐ์๋ฅผ ์กฐํ 
SELECT COUNT(*) FROM users;
```



**โผ AVG, SUM, MIN, MAX** 

_ ์ ํจ์๋ค์ ๊ธฐ๋ณธ์ ์ผ๋ก ํด๋น ์ปฌ๋ผ์ด ์ซ์(INTEGER)์ผ ๋๋ง ์ฌ์ฉ๊ฐ๋ฅ

```sql
SELECT AVG(์ปฌ๋ผ) FROM ํ์ด๋ธ์ด๋ฆ;
SELECT SUM(์ปฌ๋ผ) FROM ํ์ด๋ธ์ด๋ฆ;
SELECT MIN(์ปฌ๋ผ) FROM ํ์ด๋ธ์ด๋ฆ;
SELECT MAC(์ปฌ๋ผ) FROM ํ์ด๋ธ์ด๋ฆ;
```



```sql
-- 30์ธ ์ด์์ธ ์ฌ๋๋ค์ ์ซ์ 
SELECT COUNT(*) FROM users WHERE age >= 30;

-- ์ ์ฒด ์ค์ ๊ฐ์ฅ ์์ ๋์ด 
SELECT MIN(age) FORM users;

-- ์ด์จ ์ค์ ๊ฐ์ฅ ์์ ๋์ด 
SELECT MIN(age), first_name FROM users WHERE last_name = '์ด';

-- ์ด์จ ์ค์ ๊ฐ์ฅ ์์ ๋์ด๋ฅผ ๊ฐ์ง ์ฌ๋์ ์ด๋ฆ๊ณผ ๊ณ์ข ์๊ณ  
SELECT MIN(age), first_name, balance FROM users WHERE last_name = '์ด'; 
```



```sql
-- 30์ด์์ธ ์ฌ๋๋ค์ ํ๊ท  ๋์ด 
SELECT AVG(age) FROM users WHERE age >= 30;

-- ๊ณ์ข ์์ก์ด ๊ฐ์ฅ ๋์ ์ฌ๋๊ณผ ๊ทธ ์ก์๋ฅผ ์กฐํํ๋ ค๋ฉด? 
SELECT MAX(balance), first_name FROM users;

-- ๋์ด๊ฐ 30์ด์์ธ ์ฌ๋์ ๊ณ์ข ํ๊ท  ์์ก์ ์กฐํํ๋ ค๋ฉด? 
SELECT AVG(balance) FROM users WHERE age >= 30;
```



---



### ๐ LIKE 

* "quert data based on pattern  matching"
* ํจํด ์ผ์น๋ฅผ ๊ธฐ๋ฐ์ผ๋ก ๋ฐ์ดํฐ๋ฅผ ์กฐํํ๋ ๋ฐฉ๋ฒ 
* SQLite ๋ ํจํด ๊ตฌ์ฑ์ ์ํ 2๊ฐ์ wildcards ๋ฅผ ์ ๊ณต 

> * **%** _ percent sign : 0๊ฐ ์ด์์ ๋ฌธ์ 
>
> * **_** (underscore) : ์์์ ๋จ์ผ ๋ฌธ์ 



|                       %                       |                       _                       |
| :-------------------------------------------: | :-------------------------------------------: |
| ์ด ์๋ฆฌ์ ๋ฌธ์์ด์ด ์์ ์๋, ์์ ์๋ ์๋ค. | ๋ฐ๋์ ์ด ์๋ฆฌ์ ํ๊ฐ์ ๋ฌธ์๊ฐ ์กด์ฌํด์ผ ํ๋ค. |



โผ LIKE statement : ํจํด์ ํ์ธํ์ฌ ํด๋นํ๋ ๊ฐ์ ์กฐํํ๊ธฐ 

```sql
SELECT * FROM ํ์ด๋ธ์ด๋ฆ WHERE ์ปฌ๋ผ LIKE 'ํจํด';
```





|    ์์ผ๋ ์นด๋ ํจํด    |                       ์๋ฏธ                       |
| :--------------------: | :----------------------------------------------: |
|         **2%**         |               **2๋ก ์์ํ๋ ๊ฐ**                |
|         **%2**         |                **2๋ก ๋๋๋ ๊ฐ**                 |
|        **%2%**         |               **2๊ฐ ๋ค์ด๊ฐ๋ ๊ฐ**                |
|        **_2%**         | **์๋ฌด ๊ฐ์ด ํ๋ ์๊ณ  ๋๋ฒ์งธ๊ฐ 2๋ก ์์ํ๋ ๊ฐ** |
|      **1 _ _ _**       |          **1๋ก ์์ํ๊ณ  ์ด 4์๋ฆฌ์ธ ๊ฐ**          |
| **2_ % _ % / 2 _ _ %** |        **2๋ก ์์ํ๊ณ  ์ ์ด๋ 3์๋ฆฌ์ธ ๊ฐ**        |



```sql
-- ๋์ด๊ฐ 20๋์ธ ์ฌ๋๋ง ์กฐํํ๋ค๋ฉด? 
SELECT * FROM users WHERE age LIKE '2_';

-- ์ง์ญ๋ฒํธ๊ฐ 02 ์ธ ์ฌ๋ 
SELECT COUNT(*) FROM users WHERE phone LIKE '02-%';

-- '์ค'์ผ๋ก ๋๋๋ ์ฌ๋๋ง ์กฐํ 
SELECT COUNT(*) FROM users WHERE first_name LIKE '%์ค';

-- ์ค๊ฐ ๋ฒํธ๊ฐ 5114์ธ ์ฌ๋๋ง ์กฐํ 
SELECT COUNT(*) FROM users WHERE phon LIKE '%-5114-%';
```



---



#### ๐ ORDER BY _ (sorting)

* "sort a result set of a query"
* ์กฐํ ๊ฒฐ๊ณผ ์งํฉ์ ์ ๋ ฌ 
* SELECT ๋ฌธ์ ์ถ๊ฐํ์ฌ ์ฌ์ฉ
* ์ ๋ ฌ ์์๋ฅผ ์ํ 2๊ฐ์ KEYWORD ์ ๊ณต
  * **ASC  ์ค๋ฆ์ฐจ์ (default)**
  * **DESC ๋ด๋ฆผ์ฐจ์**  



```sql
-- ๋์ด ์์ผ๋ก ์ค๋ฆ์ฐจ์ ์ ๋ ฌํ์ฌ ์์ 10๊ฐ 
SELECT first_name FROM users ORDER BY age ASC LIMIT 10;

-- ASC ๋ฅผ ์๋ตํด๋ ์ ์์ ์ผ๋ก ์ถ๋ ฅ์ด ๊ฐ๋ฅ 

-- ๋์ด ์, ์ฑ ์์ผ๋ก ์ค๋ฆ์ฐจ์ ์ ๋ ฌํ์ฌ ์์ 10๊ฐ๋ง ์กฐํ 
SELECT * FROM users ORDER BY age, last_name LIMIT 10;

-- ๊ณ์ข ์์ก ์ ๋ด๋ฆผ์ฐจ์ 
SELECT last_name, first_name, balance FROM users ORDER BY balance DESC LIMIT 10;

-- ๊ณ์ข ์์ก ๋ด๋ฆผ์ฐจ์ (๋์ -> ๋ฎ์๊ฒ), ์ฑ ์ค๋ฆ์ฐจ์ (ใฑ -> ใ)
SELECT last_name, first_name, balance FROM users ORDER BY balance DESC, last_name ASC LIMIT 10;
```

