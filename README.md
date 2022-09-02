# 🌾 Python_DB
### 🌱 [Python_Database Day_01](https://github.com/oiosu/Python_DB/blob/main/20220816_DB/python_data0816.md)
### 🌱 [Python_Database Day_01_실습](https://github.com/oiosu/Python_DB/blob/main/20220816_DB/README.md)
![image](https://user-images.githubusercontent.com/99783474/184888276-a8834876-b116-4ee4-8a24-9a6600d26dfb.png)

- 데이터베이스는 **체계화된 데이터**의 모임
- 여러 사람이 공유하고 사용할 목적으로 통합 관리되는 정보의 집합__
- 논리적으로 연관된(하나 이상의) 지료의 모음으로 그 내용을 고도로 구조화 함으로써 검색과 갱신의 효율화를 꾀한 것 
- 즉, **몇 개의 자료 파일을 조직적으로 통합**하여 **자료 항목의 중복을 없애**고 **자료를 구조화**하여 기억시켜 놓은 **자료의 집합체** 


### 💡 [RDB_관계형 데이터 베이스 (Relational Database)](https://github.com/oiosu/Python_DB/blob/main/20220816_DB/python_data0816.md)

* 서로 관련된 데이터를 저장하고 접근할 수 있는 데이터 베이스 유형 
* 키 와 값 (핵심은 표로 정리된 것)


- **스키마 (schema)** : 데이터 베이스에서 자료의 **구조**, 표현방법, 관계등 전반적인 **명세를 기술**한 것 

- **테이블 (table)** : 스키마를 기반으로 테이블이 만들어지며 열(컬럼/필드)와 행(레코드/값)의 모델을 사용해 조직된 데이터 요소들의 집합이다. 

- **열(column)** : 각 열에 고유한 데이터 형식 지정 

- **행(row)** : 실제 데이터가 저장되는 형태

- **기본키_ Primary Key_반드시 필요함** : 각 행(레코드)의 고유 값


### [💡 RDBMS](https://github.com/oiosu/Python_DB/blob/main/20220816_DB/python_data0816.md) 

_ **SQLite** 로 사용할 계획 

* 서버 형태가 아니 파일 형식으로 응용 프로그램에 넣어서 사용하는 **비교적 가벼운 데이터 베이스** 
* 구글 안드로이드 운영체제에 기본적으로 탑재도니 데이터 베이스이며, 임베디드 소프트웨어에도 많이 활용됨
* 로컬에서 간단한 DB 구성을 할 수 있으며, 오픈 소스 프로젝트이기 떄문에 자유롭게 사용가능 

#### **◼ SQLite Data Type**

```sql
1. NULL
2. INTEGER ⭐
	-- 크기에 따라 0, 1, 2, 3, 4, 6 또는 8바이트에 저장된 부호 있는 정수 
3. REAL 
	-- 8바이트 부동 소수점 숫자로 저장된 부동 소수점 값 
4. TEXT ⭐
5. BLOB 
	-- 입력된 그대로 정확히 저장된 데이터(별다른 타입 없이 그대로 저장 )

```

### [💡 SQL](https://github.com/oiosu/Python_DB/blob/main/20220816_DB/python_data0816.md)

* 관계형 데이터베이스 관리시스템의 **데이터 관리**를 위해 설계된 **특수 목적으로 프로그래밍 언어** 
* 데이터 베이스 스키마 생성 및 수정 
* 자료의 검색 및 관리 
* 데이터 베이스 객체 접근 조정 관리 

**◼ DDL(Data Definition Language) _ 데이터 정의 언어**  

**◼ DML(Data Manipulatioin Language) _ 데이터 조작 언어**

**◼ DCL(Data Control Language) _ 데이터 제어 언어**

### [💡 HELLO WORLD!](https://github.com/oiosu/Python_DB/blob/main/20220816_DB/python_data0816.md)

#### [1. 테이블 생성 및 삭제](https://github.com/oiosu/Python_DB/blob/main/20220816_DB/python_data0816.md) [2. csv 파일을 table 로 만들기](https://github.com/oiosu/Python_DB/blob/main/20220816_DB/python_data0816.md)    [3. SELECT](https://github.com/oiosu/Python_DB/blob/main/20220816_DB/python_data0816.md) [4. sqlite 확장 프로그램 사용하기](https://github.com/oiosu/Python_DB/blob/main/20220816_DB/python_data0816.md) [5. CREATE](https://github.com/oiosu/Python_DB/blob/main/20220816_DB/python_data0816.md) [6. DROP](https://github.com/oiosu/Python_DB/blob/main/20220816_DB/python_data0816.md)


#### [**✔ SELECT 와 많이 사용하는 명령어**](https://suy379.tistory.com/104#1._FROM_:_%ED%85%8C%EC%9D%B4%EB%B8%94_%EC%84%A0%ED%83%9D) 

#### [✔ SQL 문법 vs SQL 실행순서 ](https://suy379.tistory.com/104#1._FROM_:_%ED%85%8C%EC%9D%B4%EB%B8%94_%EC%84%A0%ED%83%9D)

![image](https://user-images.githubusercontent.com/99783474/184893522-b8ffe90f-a785-477e-a56a-a13fd19272c4.png)

---

### 🌱[Python_Database Day_02](https://github.com/oiosu/Python_DB/blob/main/20220817_DB/python_data0817.md)

### 🌱 [Python_Database Day_02_실습](https://github.com/oiosu/Python_DB/blob/main/20220817_DB/2%EC%9D%BC%EC%B0%A8%20%EC%8B%A4%EC%8A%B5.md)

### 🌱[Python_Database Day_02_실습 해설](https://github.com/oiosu/Python_DB/blob/main/20220818_DB/03%EC%8B%A4%EC%8A%B5.md)
---

### [📑 WHERE](https://github.com/oiosu/Python_DB/blob/main/20220817_DB/python_data0817.md)

#### ✔ 특정 조건으로 데이터 조회하기 

```sql
SELECT * FROM 테이블 이름 WHERE 조건; 
```

### 💡 WHERE 절에서 사용할 수 있는 연산자 

**◼ 비교 연산자** 

: = , >, >=, <, <= 는 숫자 혹은 문자 값의 대/소, 동일 여부를 확인하는 연산자

**◼ 논리 연산자 : AND, OR, NOT** 

* AND :  앞에 있는 조건과 뒤에 오는 조건이 모두 참인 경우 
* OR : 앞의 조건이나 뒤의 조건이 참인 경우
* NOT: 뒤에 오는 조건의 결과를 반대로 

### [⁉ 주의 _우선순위](https://github.com/oiosu/Python_DB/blob/main/20220817_DB/python_data0817.md)

```sql
--1
WHERE HEIGHT = 175 OR HEIGHT = 183 AND WHIGHT = 80
--2
WHERE (HEIGHT = 175 OR HEIGHT = 183) AND WEIGHT = 80  -- 애매하다고 느껴질때 괄호 치자!

-- 괄호의 차이 
-- 1 ) 키가 175이거나, 키가 183이면서 몸무게가 80인 사람 -- 기호 , 주의깊게 보기 
-- 2) 키가 175 또는 183 인 사람 주에서 몸무게가 80인 사람 
```

### [💡 SQL 에서 사용할 수 있는 연산자  & 연산자 우선순위](https://github.com/oiosu/Python_DB/blob/main/20220817_DB/python_data0817.md) 

---

### [📑 SQLite Ageeregate Functions](https://github.com/oiosu/Python_DB/blob/main/20220817_DB/python_data0817.md)


◼ Aggregate Functions_집계함수 

* **값 집합에 대한 계산을 수행하고 단일 값을 반환** 
  * 여러 행으로부터 하나의 결과값을 반환하는 함수 
* **SELECT 구문에서만 사용됨**
* EX) 테이블 전체 행 수를 구하는 **COUNT(*)**
* EX) age 컬럼 전체 평균 값을 구하는 **AVG(age)**

![image](https://user-images.githubusercontent.com/99783474/185177046-4040e35d-9270-4b2f-8f19-5a2db65f215e.png)

### [ 📑 LIKE](https://github.com/oiosu/Python_DB/blob/main/20220817_DB/python_data0817.md)  [📑 ORDER BY _ (sorting) ](https://github.com/oiosu/Python_DB/blob/main/20220817_DB/python_data0817.md)


---

### 🌱[Python_Database Day_03](https://github.com/oiosu/Python_DB/blob/main/20220818_DB/03%EC%8B%A4%EC%8A%B5.md)

### 🌱 [Python_Database Day_03_실습](https://github.com/oiosu/Python_DB/blob/main/20220818_DB/03%EC%8B%A4%EC%8A%B5.md)

---

### [📑 기본 함수와 연산](https://github.com/oiosu/Python_DB/blob/main/20220818_DB/03%EC%8B%A4%EC%8A%B5.md) 

### [💡 문자열 함수  & 숫자 함수](https://github.com/oiosu/Python_DB/blob/main/20220818_DB/03%EC%8B%A4%EC%8A%B5.md) 


### [📑 GROUP BY](https://github.com/oiosu/Python_DB/blob/main/20220818_DB/03%EC%8B%A4%EC%8A%B5.md)

**_ Agrregate function (집계함수) 다시보기** 

* 값 집합에 대한 계산을 수행하고 **단일 값을 반환**
  * 여러 행으로부터 하나의 결괏값을 반환하는 함수 
* SELECT 구문에서만 사용됨 

> 테이블 전체 행 수를 구하는 **COUNT(*)**
>
> age 컬럼 전체 평균 값을 구하는 **AVG(age)**




### - **ALIAS** 

* 칼럼명이나 테이블명이 너무 길거나 다른 명칭으로 확인하고 싶을 떄는 ALIAS를 활용
* **AS를 생략하여 공백으로 표현할 수 있음**
* 별칭에 공백, 특수문자 등이 있는 경우 따옴표로 묶어서 표기 


### [💡 GROUP BY](https://github.com/oiosu/Python_DB/blob/main/20220818_DB/03%EC%8B%A4%EC%8A%B5.md) 

#### (행을 그룹해주는 것이고 각각 집계함수로 넘겨주는 것)

* 지정된 컬럼의 값이 같은 행들로 묶음
* **⭐ 집계함수와 활용하였을 때 의미가 있음**(같이 묶어서 조회해주기 때문)
* 그룹화된 각각의 그룹이 하나의 집합으로 집계함수의 인수로 넘겨짐

```sql
SELECT 칼럼명
FROM 테이블명 
WHERE 조건식
GROUP BY 칼럼 혹은 표현식
HAVING 그룹조건식
ORDER BY 칼럼 혹은 표현식
LIMIT 숫자 OFFSET 숫자;
```

![image](https://user-images.githubusercontent.com/99783474/185345674-84b23e87-2643-4641-9bbf-a1f22c4d3d16.png)
![image](https://user-images.githubusercontent.com/99783474/185345749-24ab32a2-3cce-4ab4-8fdb-94bd0f3a2b05.png)


### [💡 HAVING](https://github.com/oiosu/Python_DB/blob/main/20220818_DB/03%EC%8B%A4%EC%8A%B5.md)

* 집계함수는 WHERE 절의 조건식에서는 사용할 수 없음_실행 순서에 의해 
  * **WHERE 로 처리하는 것이 GROUP BY 그룹화보다 순서상 앞서 있기 때문**
* 집계 결과에서 조건에 맞는 값을 따로 활용하기 위해서 HAVING 을 활용 


---

### 🌱[Python_Database Day_04](https://github.com/oiosu/Python_DB/blob/main/20220819_DB/20220819_DB.md)

### 🌱 [Python_Database Day_04_실습](https://github.com/oiosu/Python_DB/blob/main/20220819_DB/20220819_DB.md)

---

### [💡 CASE](https://github.com/oiosu/Python_DB/blob/main/20220819_DB/20220819_DB.md)

- CASE문은 특정 상황에서 데이터를 변환하여 활용할 수 있음
- ELSE를 생략하는 경우 NULL 값이 지정됨

```sql
CASE 
	WHEN 조건식 THEN 식
	WHEN 조건식 THEN TLR
	ELSE 식
CASE
```

### 서브쿼리 / 메인쿼리 

![image](https://user-images.githubusercontent.com/99783474/185796986-8ceca92c-02a0-43c7-9441-b4ba8032cba0.png)

---

### 🌱[Python_Database Day_04](https://github.com/oiosu/Python_DB/blob/main/20220822_DB/5%EC%9D%BC%EC%B0%A8%20%EC%8B%A4%EC%8A%B5.md)

### 🌱 [Python_Database Day_04_실습](https://github.com/oiosu/Python_DB/blob/main/20220822_DB/5%EC%9D%BC%EC%B0%A8%20%EC%8B%A4%EC%8A%B5.md)

---

### 🔵 INNER JOIN _ 두 테이블에 모두 일치하는 행만 반환

![image](https://user-images.githubusercontent.com/99783474/185911703-5ad9d0ee-bb97-4ad7-8802-0ac9903768ed.png)


### 🔵 OUTER JOIN _ 동일한 값이 없는 행도 반환

![image](https://user-images.githubusercontent.com/99783474/185911804-68009fc0-e1f2-4851-a333-85c9cf180755.png)

### 🔵 CROSS JOIN _ 모든 가능한 경우의 수의 JOIN

```sql
SELECT *
FROM 테이블1 CROSS JOIN 테이블2;
```
```sql
-- 모든 게시글과 모든 사용자 정보를 출력하시오. 
 
SELECT *
FROM articles FULL OUTER JOIN users
	ON users.id = articles.user_id;
```

### [SQL_JOINS_VISUALIZER](SQL Joins Visualizer (leopard.in.ua))

![image](https://user-images.githubusercontent.com/99783474/185912128-42ea205c-6642-40ef-8e4f-e435405de06c.png)

---



