### 📑 WHERE

```sql
-- users.csv _총 1000개정도 있는 데이터 
-- 데이터를 넣을 것 
-- classmates, examples, members, students 테이블 확인 가능

-- 05_users.sql
-- 테이블 생성 
CREATE TABLE users(
	first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    age INT NOT NULL,
    country TEXT NOT NULL,
    phone TEXT NOT NULL,
    balance INTEGER NOT NULL,
);

-- 데이터를 추가 
.mode csv
-- 반드시 같은 디렉토리에 있는 users.csv 파일을 users 테이블로 
.import users.csv users


```



---

#### ✔ 특정 조건으로 데이터 조회하기 

```sql
SELECT * FROM 테이블 이름 WHERE 조건; 
```

```sql
 -- 30세 이상인 사람들 
 SELECT * FROM users WHERE age >= 30;
 
 -- 활용 _ 30세 이상인 사람들의 이름 
 SELECT first_name FROM users WHERE age >= 30;
 
 -- 활용 _ 30세 이상인 사람들의 이름 3명만 
 SELECT first_name FROM users WHERE age >= 30 LIMIT 3;
```

```sql
-- USERS 테이블에서 AGE가 30이상이고 성이 '김'인 사람의 나이
SELECT age, first_name FROM users WHERE age >= 30 AND last_name = '김';
```

---



#### 💡 WHERE 절에서 사용할 수 있는 연산자 

**◼ 비교 연산자** 

: = , >, >=, <, <= 는 숫자 혹은 문자 값의 대/소, 동일 여부를 확인하는 연산자

**◼ 논리 연산자 : AND, OR, NOT** 

* AND :  앞에 있는 조건과 뒤에 오는 조건이 모두 참인 경우 
* OR : 앞의 조건이나 뒤의 조건이 참인 경우
* NOT: 뒤에 오는 조건의 결과를 반대로 



#### ⁉ 주의 _우선순위

```sql
--1
WHERE HEIGHT = 175 OR HEIGHT = 183 AND WHIGHT = 80
--2
WHERE (HEIGHT = 175 OR HEIGHT = 183) AND WEIGHT = 80  -- 애매하다고 느껴질때 괄호 치자!

-- 괄호의 차이 
-- 1 ) 키가 175이거나, 키가 183이면서 몸무게가 80인 사람 -- 기호 , 주의깊게 보기 
-- 2) 키가 175 또는 183 인 사람 주에서 몸무게가 80인 사람 
```



#### 💡 SQL 에서 사용할 수 있는 연산자 

* **BETWEEN 값1 AND 값2**
  * 값1 과 값 2 사이의 비교 (값1 <= 비교값 <= 값2)

* **IN(값1, 값2 ....)**
  * 목록 중에 값이 하나라도 일치하면 성공

* **LIKE** 
  * 비교 문자열과 형태 일치, 와일드 카드 (% : 0개 이상 문자, _: 1개 단일문자)

* **IS NULL / IN NOT NULL** 
  * NULL 여부를 확인할 때는 항상 = 대신에 IS 사용



* **부정 연산자** 

> * 같지 않다. **!=, ^=, <>**
> * ~와 같지 않다.  **NOT 칼럼명 =** 
> * ~보다 크지 않다. **NOT 칼럼명 >**

```sql
WHERE 칼럼명1 != 비교값1
	AND 칼럼명2 ^= 비교값2
	AND 칼럼명3 <> 비교값3
	AND NOT 칼럼명4 = 비교값4
	AND NOT 칼럼명5 > 비교값5;
```



#### 💡 연산자 우선순위 

* **1순위_괄호 : ()**

* 2순위_NOT

* 3순위_비교 연산자, SQL 

* 4순위_AND

* 5순위_OR



---

### 📑 SQLite Ageeregate Functions

◼ Aggregate Functions_집계함수 

* **값 집합에 대한 계산을 수행하고 단일 값을 반환** 
  * 여러 행으로부터 하나의 결과값을 반환하는 함수 
* **SELECT 구문에서만 사용됨**
* EX) 테이블 전체 행 수를 구하는 **COUNT(*)**
* EX) age 컬럼 전체 평균 값을 구하는 **AVG(age)**



| **COUNT** | **그룹의 항목 수를 가져움**               |
| :-------: | :---------------------------------------- |
|  **AVG**  | **모든 값의 평균을 계산**                 |
|  **MAX**  | **그룹에 있는 모든 값의 최대값을 가져옴** |
|  **MIN**  | **그룹에 있는 모든 값의 최소값을 가져옴** |
|  **SUM**  | **모든 값의 합을 계산**                   |



**◼ COUNT(레코드의 개수 조회하기)**

```sql
SELECT COUNT(컬럼) FROM 테이블이름;
```

```sql
-- 테이블의 레코드 총 개수를 조회 
SELECT COUNT(*) FROM users;
```



**◼ AVG, SUM, MIN, MAX** 

_ 위 함수들은 기본적으로 해당 컬럼이 숫자(INTEGER)일 때만 사용가능

```sql
SELECT AVG(컬럼) FROM 테이블이름;
SELECT SUM(컬럼) FROM 테이블이름;
SELECT MIN(컬럼) FROM 테이블이름;
SELECT MAC(컬럼) FROM 테이블이름;
```



```sql
-- 30세 이상인 사람들의 숫자 
SELECT COUNT(*) FROM users WHERE age >= 30;

-- 전체 중에 가장 작은 나이 
SELECT MIN(age) FORM users;

-- 이씨 중에 가장 작은 나이 
SELECT MIN(age), first_name FROM users WHERE last_name = '이';

-- 이씨 중에 가장 작은 나이를 가진 사람의 이름과 계좌 잔고 
SELECT MIN(age), first_name, balance FROM users WHERE last_name = '이'; 
```



```sql
-- 30이상인 사람들의 평균 나이 
SELECT AVG(age) FROM users WHERE age >= 30;

-- 계좌 잔액이 가장 높은 사람과 그 액수를 조회하려면? 
SELECT MAX(balance), first_name FROM users;

-- 나이가 30이상인 사람의 계좌 평균 잔액을 조회하려면? 
SELECT AVG(balance) FROM users WHERE age >= 30;
```



---



### 📑 LIKE 

* "quert data based on pattern  matching"
* 패턴 일치를 기반으로 데이터를 조회하는 방법 
* SQLite 는 패턴 구성을 위한 2개의 wildcards 를 제공 

> * **%** _ percent sign : 0개 이상의 문자 
>
> * **_** (underscore) : 임의의 단일 문자 



|                       %                       |                       _                       |
| :-------------------------------------------: | :-------------------------------------------: |
| 이 자리에 문자열이 있을 수도, 없을 수도 있다. | 반드시 이 자리에 한개의 문자가 존재해야 한다. |



◼ LIKE statement : 패턴을 확인하여 해당하는 값을 조회하기 

```sql
SELECT * FROM 테이블이름 WHERE 컬럼 LIKE '패턴';
```





|    와일드 카드 패턴    |                       의미                       |
| :--------------------: | :----------------------------------------------: |
|         **2%**         |               **2로 시작하는 값**                |
|         **%2**         |                **2로 끝나는 값**                 |
|        **%2%**         |               **2가 들어가는 값**                |
|        **_2%**         | **아무 값이 하나 있고 두번째가 2로 시작하는 값** |
|      **1 _ _ _**       |          **1로 시작하고 총 4자리인 값**          |
| **2_ % _ % / 2 _ _ %** |        **2로 시작하고 적어도 3자리인 값**        |



```sql
-- 나이가 20대인 사람만 조회한다면? 
SELECT * FROM users WHERE age LIKE '2_';

-- 지역번호가 02 인 사람 
SELECT COUNT(*) FROM users WHERE phone LIKE '02-%';

-- '준'으로 끝나는 사람만 조회 
SELECT COUNT(*) FROM users WHERE first_name LIKE '%준';

-- 중간 번호가 5114인 사람만 조회 
SELECT COUNT(*) FROM users WHERE phon LIKE '%-5114-%';
```



---



#### 📑 ORDER BY _ (sorting)

* "sort a result set of a query"
* 조회 결과 집합을 정렬 
* SELECT 문에 추가하여 사용
* 정렬 순서를 위한 2개의 KEYWORD 제공
  * **ASC  오름차순 (default)**
  * **DESC 내림차순**  



```sql
-- 나이 순으로 오름차순 정렬하여 상위 10개 
SELECT first_name FROM users ORDER BY age ASC LIMIT 10;

-- ASC 를 생략해도 정상적으로 출력이 가능 

-- 나이 순, 성 순으로 오름차순 정렬하여 상위 10개만 조회 
SELECT * FROM users ORDER BY age, last_name LIMIT 10;

-- 계좌 잔액 순 내림차순 
SELECT last_name, first_name, balance FROM users ORDER BY balance DESC LIMIT 10;

-- 계좌 잔액 내림차순 (높은 -> 낮은것), 성 오름차순 (ㄱ -> ㅎ)
SELECT last_name, first_name, balance FROM users ORDER BY balance DESC, last_name ASC LIMIT 10;
```

