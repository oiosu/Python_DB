## 📑 Database

![image](https://user-images.githubusercontent.com/99783474/184887116-b0bdf9e8-89bf-49fc-a52c-cfdc9339f42f.png)

- 데이터베이스는 **체계화된 데이터**의 모임
- 여러 사람이 공유하고 사용할 목적으로 통합 관리되는 정보의 집합
- 논리적으로 연관된(하나 이상의) 지료의 모음으로 그 내용을 고도로 구조화 함으로써 검색과 갱신의 효율화를 꾀한 것 
- 즉, **몇 개의 자료 파일을 조직적으로 통합**하여 **자료 항목의 중복을 없애**고 **자료를 구조화**하여 기억시켜 놓은 **자료의 집합체** 



#### ✔ 데이터 베이스로 얻는 장점 

| 데이터 중복 최소화                    |
| ------------------------------------- |
| **데이터 무결성(정확한 정보를 보장)** |
| **데이터 일관성**                     |
| **데이터 독립성(물리적/논리적)**      |
| **데이터 표준화**                     |
| **데이터 보안 유지**                  |



---



### 💡 RDB_관계형 데이터 베이스 (Relational Database)

* 서로 관련된 데이터를 저장하고 접근할 수 있는 데이터 베이스 유형 
* 키 와 값 (핵심은 표로 정리된 것)

![image](https://user-images.githubusercontent.com/99783474/184887192-bd33ba52-f70d-4cca-ad22-9061222f37b0.png)


* 스키마 (schema) 

> 데이터 베이스에서 자료의 **구조**, 표현방법, 관계등 전반적인 **명세를 기술**한 것 

![image](https://user-images.githubusercontent.com/99783474/184887287-3b64663a-0218-43c5-8576-4ae83fc01b0e.png)





**📢 [스키마 3층 구조](https://ko.wikipedia.org/wiki/%EB%8D%B0%EC%9D%B4%ED%84%B0%EB%B2%A0%EC%9D%B4%EC%8A%A4_%EC%8A%A4%ED%82%A4%EB%A7%88)** 

> - 외부 스키마(External Schema)_ 사용자 뷰(View)
>
>    : 프로그래머나 사용자의 입장에서 데이터베이스의 모습으로 조직의 일부분을 정의한 것
>
> - 개념 스키마(Conceptual Schema) _ 전체적인 뷰(View)
>
>    : 모든 응용 시스템과 사용자들이 필요로하는 데이터를 통합한 조직 전체의 데이터베이스 구조를 논리적으로 정의한 것
>
> - 내부 스키마(Internal Schema)_ 저장 스키마(Storage Schema)
>
>     : 전체 데이터베이스의 물리적 저장 형태를 기술하는 것



* 테이블 (table)

> 스키마를 기반으로 테이블이 만들어진다. 
>
> **열(컬럼/필드)**와 **행(레코드/값)**의 모델을 사용해 조직된 데이터 요소들의 집합 



![image](https://user-images.githubusercontent.com/99783474/184887463-16ef88c3-e1b8-4b23-98a2-4d7aa2039205.png)


◼ 열(column) : 각 열에 고유한 데이터 형식 지정 

: 아래의 예시에서는 name이란 필드에 고객의 이름(TEXT) 정보가 저장 

![image](https://user-images.githubusercontent.com/99783474/184887523-083f4184-3885-4574-80c0-97f5e81e1aba.png)



**◼ 행(row) : 실제 데이터가 저장되는 형태** 

: 아래의 예시에서는 총 3명의 고객 정보가 저장되어 있음(레코드가 3개)

![image](https://user-images.githubusercontent.com/99783474/184887586-4c693638-3834-466d-acfb-e22fe9eb9808.png)



**◼ 기본키_ Primary Key (반드시 필요함) : 각 행(레코드)의 고유 값** 

: 반드시 설정해야 하며, 데이터 베이스 관리 및 관계 설정 시 주요하게 활용 됨 

![image](https://user-images.githubusercontent.com/99783474/184887642-3905c237-cca1-4d47-8ea3-5bb86eaceb58.png)

---



### 💡 RDBMS 

* MYSQL, SQLITE, POSTGRESQL, ORACLE, SQLSERVER

_ **SQLite** 로 사용할 계획 

* 서버 형태가 아니 파일 형식으로 응용 프로그램에 넣어서 사용하는 **비교적 가벼운 데이터 베이스** 
* 구글 안드로이드 운영체제에 기본적으로 탑재도니 데이터 베이스이며, 임베디드 소프트웨어에도 많이 활용됨
* 로컬에서 간단한 DB 구성을 할 수 있으며, 오픈 소스 프로젝트이기 떄문에 자유롭게 사용가능 



**◼ SQLite Data Type**

```sqlite
1. NULL
2. INTEGER 
	-- 크기에 따라 0, 1, 2, 3, 4, 6 또는 8바이트에 저장된 부호 있는 정수 
3. REAL 
	-- 8바이트 부동 소수점 숫자로 저장된 부동 소수점 값 
4. TEXT 
5. BLOB 
	-- 입력된 그대로 정확히 저장된 데이터(별다른 타입 없이 그대로 저장 )
```



**◼ SQLite Type Affinity(1/2)**

​	◾ 특정 컬럼에 저장하도록 권장하는 데이터 타입_INTEGER, TEXT 위주로 활용할 계획 

```sqlite
1. INTEGER ⭐
2. TEXT ⭐
3. BLOB
4. REAL
5. NUMERIC
```



| **Example Typenames From The create table statement**        | **Resulting Affinity** |
| ------------------------------------------------------------ | ---------------------- |
| **INT, INTEGER, TINYINT, SMALLINT, MEDIUMINT, BIGINT, UNSIGNED BIG INT, INT2, INT8** | **INTEGER**            |
| **CHARACTED(20), VARCHAR(255), VARYING CHARACTER(255), NCHAR(55), NATIVE CHARACTER(70), NVARCHAR(100), TEXT, CLOB** | **TEXT**               |
| **BLOB(no datatype specified)**                              | **BLOB**               |
| **REAL, DOUBLE, DOUBLE PRECISION, FLOAT**                    | **REAL**               |
| **NUMERIC, DECIMAL(10, 5), BOOLEAN, DATE, DATETIME**         | **NUMERIC**            |



---



#### 💡 SQL 

* 관계형 데이터베이스 관리시스템의 **데이터 관리**를 위해 설계된 **특수 목적으로 프로그래밍 언어** 
* 데이터 베이스 스키마 생성 및 수정 
* 자료의 검색 및 관리 
* 데이터 베이스 객체 접근 조정 관리 



**◼ DDL(Data Definition Language) _ 데이터 정의 언어**  

: 관계형 데이터 베이스 구조(테이블, 스키마)를 정의하기 위한 명령어 

: CREATE, DROP, ALTER



**◼ DML(Data Manipulatioin Language) _ 데이터 조작 언어**

: 데이터를 저장, 조회, 수정, 삭제 등을 하기 위한 명렁어 

: INSERT, SELECT, UPDATE, DELETE



**◼ DCL(Data Control Language) _ 데이터 제어 언어**

: 데이터 베이스 사용자의 권한 제어를 위해 사용하는 명령어 

: GRANT, REVOKE, COMMIT, ROLLBACK



##### ✔ SQL Keywords _ Data Manipulation Language

* 참고 사이트 : **[SQL Keywords Reference](https://www.w3schools.com/sql/sql_ref_keywords.asp)**

|   INSERT   |   새로운 데이터 삽입(추가)    |
| :--------: | :---------------------------: |
| **SELECT** | **저장되어 있는 데이터 조회** |
| **UPDATE** | **저장되어 있는 데이터 갱신** |
| **DELETE** | **저장되어 있는 데이터 삭제** |



---



### 💡 HELLO WORLD!

#### 1. 테이블 생성 및 삭제 

(1) 데이터 베이스 생성하기 

```sqlite
$ sqlite3 tutorial.sqlite3
sqlite> .database
```

![image](https://user-images.githubusercontent.com/99783474/184887795-977fc917-3757-4b00-919a-f4922e113579.png)



#### 2. csv 파일을 table 로 만들기 

```sqlite
sqlite > .mode csv
sqlite > .import hellodb.csv ✔examples
sqlite >  ✔.tables
✔examples
```



#### 3. SELECT

```sqlite
SELECT * FROM examples;
```



* **SELECT  확인하기** _ SELECT 문은 특정 테이블의 레코드(행) 정보를 반환!

  ```sqlite
  sqlite> SELECT * FROM examples;
  1, "길동", "홍", 600, "충청도" , 010-000-000
  ```

* **optional 터미널 view 변경하기** 

  ```sqlite
  sqlite> SELET * FORM examples;
  1, "길동", "홍", 600, "충청도" , 010-000-000
  sqlite> .headers on
  sqlite> SELECT * FROM examples;
  id, first_name, last_name, age, country, phone
  1, "길동", "홍", 600, "충청도" , 010-000-000
  sqlite> .mode column
  sqlite? SELECT * FROM examples;
  id   forst_name   last_name   age   country   phone
  --   ----------   ---------   ---   -------   -----
  1 		길동			홍		600		충청도		010-000-000
  ```

---

#### 4. **sqlite 확장 프로그램 사용하기 (1/5)** _VSCODE

(1) sqlite 파일 우측 클릭 - OPEN DATABSE 

(2) New Qurty 클릭 

(3) 우측 화면에 sql 명령어를 작성하는 페이지가 출력됨 

(4) Run Query (전체 코드실행) or Run Selected Query (선택 코드만 실행)

(5) 새로고침 클릭 후 데이터 베이스 변화 확인 

(6) 특정 코드만 실행 후 가장 우측 화면에서 결과 확인해보기 

---



* **테이블 생성 및 삭제 statement**

  * **CREATE TABLE** 

    : 데이터베이스에서 테이블 생성 

  * **DROP TABLE**

    : 데이터 베이스에서 테이블 제거 

    

#### 5. CFREATE

```sqlite
CREATE TABLE classmates(
id INTEGER PRIMARY KEY, 
name TEXT
);
```



* **CREATE _ 테이블 생성 및 확인하기 _ CREATE는 테이블을 생성!**

```sqlite
sqlite> CREATE TABLE ✔calssmates (
	...> id INTEGER PRIMARY KEY,
	...> name TEXT
	...> );
sqlite> ✔.tables
✔classmates examples
```



* **특정 테이블의 schema 조회** 

```sqlite
sqllite> ✔.schema classmates
CREATE TABLE calssmates (
id INTEGER PRIMARY KEY, 
name TEXT
);
```



#### 6. DROP

```sqlite
DROP TABLE calssmates;
```

```sqlite
sqlite> DROP TABLE calssmates;
sqlite> .tables 
examples
```



---



##### 📌 다음과 같은 스키마(schema)를 가지고 있는 classmates 테이블을 만들고 스키마를 확인해보세요. 

![image](https://user-images.githubusercontent.com/99783474/184887889-f339ea35-5b3a-4901-84ec-bfad9ad68384.png)
```sqlite
CREATE TABLE classmates (
name TEXT,
age INT, 
address TEXT
);
```

```sqlite
--터미널 창 확인
sqlite> .schema calssmates
CREATE TABLE calssmates (
name TEXT
age INT, 
address TEXT
);
```



---



**◼ 필드 제약 조건** 

◾ **NOT NULL** : NULL 값 입력 금지 

◾ **UNIQUE** : 중복 값 입력 금지 (NULL 값은 중복 입력 가능)

◾ **PRIMARY KEY** : 테이블에서 반드시 하나, NOT NULL + UNIQUE

◾ **FOREIGN KEY** : 외래키, 다른 테이블의 KEY

◾ **CHECK** : 조건으로 설정된 값만 입력 허용

◾ **DEFAULT** : 기본 설정 값



---



##### 📌 테이블의 의미 확인해보기  

```sqlite
CREATE TABLE students(
id INTENGER PRIMARY KEY,
name TEXT NOT NULL,  
age INTENGER DEFAULT 1 CHECK (0 < age) 
);
```



```sqlite
CREATE TABLE students(
id INTENGER PRIMARY KEY,
name TEXT NOT NULL,   -- #허용하지 않겠다. (⭐제약조건 중요)
age INTENGER DEFAULT 1 CHECK (0 < age) --#기본값은 1이고 age는 0보다 크다는 것을 체크하라
);
```



* **음수값 test** 

```sqlite
sqlite > INSERT INTO studendts VALUES (1, '홍길동', -1);
```

```sqlite
CHECK constraint failed 라는 결과가 나옴 
```



---



**📌 classmates 테이블에 이름이 홍길동이고 나이가 23인 데이터를 넣어봅시다.** 

**SELECT 문을 통해 확인해 보세요.** 



```sqlite
INSERT INTO classmates (name, age) VALUES ('홍길동', 23);
```

```
sqlite> SELECT * FROM calssmates;
name             age            address
-------------    ------------   -----------
홍길동				23		
```



**📌 classmates 테이블에 이름이 홍길동이고 나이가 30이고, 주소가 서울인 데이터를 넣어봅시다.** 

**SELECT 문을 통해 확인해 보세요.** 



```sqlite
INSERT INTO classmates VALUES ('홍길동', 30, '서울');
```

```
sqlite> SELECT * FROM classmates;
name             age            address
-------------    ------------   -----------
홍길동				23		
홍길동				30				서울
```

👉 **NOT NULL**를 통해 비어있는 값이 없도록 설계를 해줘야 한다. 



---



**◼ rowid** 

: **SQLite에서 PRIMARY KEY가 없는 경우 자동으로 증가하는 PK 컬럼** _자동으로 id값 생성 가능 

```
sqlite> SELECT rowid, * FROM classmates;
rowid 		name		age			address
--------	---------	----------	----------
1			홍길동			23				
2			홍길동			30			서울
```



◼ 비어있는 주소 _ 지우고 다시 새로 만들기 

```
sqlite> DROP TABLE classmates;
sqlite> CREATE TABLE calssmates (
	...> id INTEGER PRIMARY KEY,
	...> name TEXT NOT NULL,
	...> age INT NOT NULL,
	...> address TEXT NOT NULL
	...> );
```



---



**📌 classmates 테이블에 이름이 홍길동이고 나이가 30이고, 주소가 서울인 데이터를 넣어봅시다.** 

**SELECT 문을 통해 확인해 보세요.** 

```SQLITE
INSERT INTO classmates VALUES ('홍길동', 30, '서울');

-- ERROR : table classmates has 4 columns but 3 values were supplied
-- 스키마에 id를 직접 작성했기 때문에 입력할 column 들을 명시하지 않으면 자동으로 입력되지 않음
```



**(1) 첫번째 방법 _ id 를 포함한 모든 value를 작성** 

```sqlite
INSERT INTO classmates VALUES (1, '홍길동', 30, '서울');
```



**(2) 두번째 방법 _ 각 value에 맞는 column들을 명시적으로 작성** 

```sqlite
INSERT INTO classmates (name, age, address) VALUES ('홍길동', 30, '서울');
```



---



**◼ INSERT 직접 해보기** 

​	◾ 방금 새롭게 생성한 테이블에 다음과 같은 정보를 저장하고 확인하기 

​	◾각 정보는 이름/나이/주소로 구분 됨 

> * 홍길동 / 30 / 서울
> * 김철수 / 30 / 제주
> * 이호영 / 26 / 인천
> * 박민희 / 29 / 대구 
> * 최혜영 / 28 / 전주 



```sqlite
INSERT INTO classmates VALUES
('홍길동', 30, '서울'),
('김철수', 30, '제주'),
('이호영', 26, '인천'),
('박민희', 29, '대구'),
('최혜영', 28, '전주');
```



---



#### 7. READ 

#### ◼ SELECT

*  "query data from a table"

* 테이블에서 데이터를 조회 

* SELECT 문은 SQLite에서 가장 기본이 되는 문이며 다양한 절(clause) 와 함께 사용

  *  ORDER BY, DISTINCT, WHERE, LIMIT, GROUP BY 

  

#### [**✔ SELECT 와 많이 사용하는 명령어**](https://suy379.tistory.com/104#1._FROM_:_%ED%85%8C%EC%9D%B4%EB%B8%94_%EC%84%A0%ED%83%9D) 

* **FORM** **: 테이블 선택** 

```sqlite
SELECT * FROM MEMBER 
```



* **WHERE** **: 테이블 필터링** 

  : "specify the search condition for rows returned by the query"

  : 쿼리에서 반환된 행에 대한 특정 검색 조건을 지정 

```sqlite
SELECT *
FROM MEMBER 
WHERE gender = 'man'
```

> 만약 성별이 남자인 것만 필터링 하려면 위와 같이 입력하면 된다. 



* **GROUP BY** **: 테이블 그룹화** 

(정말 많이 쓰이는 기능 _ GROUP BY는 특히 집계함수 (COUNT, SUM등)과 자주 사용)

_ GROUP BY + 특정 컬럼 으로 특정 컬럼을 기준으로 데이터를 그룹화 할 수 있다. 

```sqlite
SELECT addr, COUNT(mem_no) AS mem_cnt
FROM MEMBER
WHERE gender = 'man'
GROUP BY addr

-- addr(주소지)로 그룹 바이 하고 남성만 필터링 하여 회원수를 집계하라 
```



```sqlite
-- addr(주소지), 성별(gender)로 그룹 바이 하여 회원수를 집계하라 

SELECT ddr, gender, count(mem_no) AS mem_cnt
FROM MEMBER
GROUP BY addr, gender
```



* **HAVING : GROUP BY 이후 필터링** 

> ⭐ HAVING 은 반드시 GROUP BY 명령어와 같이 사용되어야만 한다. 

> 먼저, HAVING BY 로 테이블을 그룹화 한 후 그룹화가 된 테이블에 특정 조건으로 필터링을 한다고 생각하면 된다. 

```sqlite
-- 주소지 (addr) 별로 회원수를 집계하되, 남자만 뽑고 회원수가 50이상만 나오도록 하라 

SELECT addr, count(mem_no) AS mem_cnt
FROM MEMBER
WHERE gender = 'men'
GROUP BY addr
HAVING count(mem_no) >= 50 
```

**⁉ 주의사항 :  HAVING mem_cnt >= 50으로 하면 안되나요? ___NO!!!**

**SQL은 HAVING 다음 SELECT가 실행되기 때문**

**HAVING mem_cnt라고 작성한다면, 아직 SELECT가 실행되기 이전이므로 mem_cnt 가 뭔지 SQL은 모르기 때문에 ERROR발생** 



* **ORDER BY : 테이블 정렬**

> 가지런히 정렬하는  명렬어 _ sorting 함 _ **⭐ 가장 마지막에 실행되는 명령어** 

**👉 내림차순으로 정렬하는 경우 DESC를 작성**

**👉 오름차순으로 정렬하는 경우 ASC 를 작성**

```sqlite
-- 주소지(addr)별로 회원수를 집계하되, 남자만 뽑고, 회원수가 50이상만 나오도록 하라, 
-- 회원수가 큰 것 부터 정렬하여라. 

SELECT addr, count(mem_no) AS mem_cnt
FROM MEMBER
WHERE gender = 'men'
GROUP BY addr
HAVING count(mem_no) >= 50
ORDER BY count(mem_no) DESC

-- SELECT 다음으로 ORDER BY가 실행되기 때문에 꼭 COUNT(mem_no)가 아닌 mem_cnt를 작성해도 된다. 
 ORDER BY mem_cnt DESC
 
-- 간단하게 숫자로 정렬하는 방법 _ '열번호'를 이용하여 정렬하기 
-- 두번째 열이 내림차순으로 정렬됨 _ 길게 컬럼명을 다 작성할 필요가 없기 때문에 이 방법을 사용함 
 ORDER BY 2 DESC
 
```



* **DISTINCT _ 중복된 레코드 결과값을 제거해주는 역할** 

  : "remove duplicate rows in the result set"

  : 조회 결과에서 중복 행을 제거 

  : DISTINCT 절은 SELECT 키워드 바로 뒤에 작성해야함 

  ```sqlite
   SELECT DISTINCT [컬럼명] FROM [테이블명] WHERE [조건절]
  ```

  ```sqlite
  -- NAME에 홍길동이라는 이름이 중복되어 나타나 제거할 경우 
  
  SELECT DISTINCT NAME FROM TBL_USER
  
  -- TBL_USER 테이블의 NAME이라는 열에 중복된 값을 모두 제거한 상태로 출력 
  
  ```



* **LIMIT _ 테이블 데이터 조회 시 한계 지정 가능** 

  : "constrain the number of rows returned by a query"

  : 쿼리에서 반환되는 행  수를 제한 

  : 특정 행부터 시작해서 조회하기 위해 OFFSET 키워드와 함께 사용하기도 함

```sqlite
 -- 행 10 개만 조회하기 
 
 SELECT title, content, writer FROM board LIMIT 10;
```

또한 **OFFSET 옵션**을 사용하게 된다면, 가져오고자 하는 행 데이터의 시작 지점을 지정이 가능하다. 

(**OFFSET** 값은 **0부터 시작하므로** 첫번째 행 데이터를 가리키는 값은 0이다.)

```sqlite
-- 11번째 ~20번째 행 데이터 조회 

SELECT title, content, writer FROM board LIMIT 10, 10;
```



---

### [✔ SQL 문법 vs SQL 실행순서 ](https://suy379.tistory.com/104#1._FROM_:_%ED%85%8C%EC%9D%B4%EB%B8%94_%EC%84%A0%ED%83%9D)

* #### SQL 문법 순서 

  * #### **SELECT** - FROM - WHERE - GROUP BY - HAVING - ORDER BY 

* #### SQL 실행 순서 

  * #### FROM - WHERE - GROUP BY - HAVING - **⭐SELECT** - ORDER BY

---



**📌 classmates 테이블에서 id, name 컬럼 값만 조회하세요.**

```sqlite
SELECT 컬럼1, 컬럼2, .... FROM 테이블 이름;

SELECT rowid, name FROM classmates;
rowid 		name
------		-----
1			홍길동
2			김철수
3			이호영
4			박민희
5			최혜영
```



**📌 classmates 테이블에서 id, name 컬럼 값을 하나만  조회하세요.**

```sqlite
SELECT 컬럼1, 컬럼2, .... FROM 테이블 이름 LIMIT 숫자;

SELECT rowid, name FROM classmates LIMIT 1;
rowid 		name
------		-----
1			홍길동
```



**📌 classmates 테이블에서 id, name 컬럼 값을 세 번째에 있는 하나만 조회하세요.**

```sqlite
SELECT 컬럼1, 컬럼2, .... FROM 테이블 이름 LIMIT 숫자 OFFSET 숫자;

SELECT rowid, name FROM classmates LIMIT 1 OFFSET 2;
rowid 		name
------		-----
3			이호영
```

> OFFSET : 처음부터 주어진 요소나 지점 까지의 차이를 나타내는 정수형 

(1) 문자열 'abcdedf' 에서 문자 'c' 는 시작점 'a' 에서 2의 OFFSET 을 지님 

(2) SELECT * FROM MY_TABLE LIMIT 10 **OFFSET 5**

​	_"6번째 행 부터 10개 행을 조회 (6번째 행부터 10개를 출력)"

​	_ 0부터 시작함



**📌 classmates 테이블에서 id, name 컬럼 값 중에 주소가 서울인 경우의 데이터를 조회하세요.**

```sqlite
SELECT 컬럼1, 컬럼2, .... FROM 테이블 이름 WHERE 조건;

SELECT * FROM classmates WHERE address ='서울';
name		age 		address
------		--------	---------
홍길동			30			서울
```



**📌 classmates 테이블에서 age 값 전체를 중복없이 조회하세요.**

```sqlite
SELECT DISTINCT 컬럼 FROM 테이블 이름;

SELECT DISTINCT age FROM classmates;
age
---
30
26
29
28
```



---



* **일반적으로 어떠한 필드를 기준으로 삭제와 업로드를 할까?** 

**=> 프라이머리 키를 기준으로 한다.** 

**=> 고유한 값을 가지고 있기 때문에** 

