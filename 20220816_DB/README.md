# 사전 설정

## 실행

```bash
$ sqlite3 healthcare.sqlite3 
```

## Column 출력 설정

```sql
sqlite3> .headers on 
sqlite3> .mode column
```

## table 및 스키마 조회

```sql
sqlite3> .tables
healthcare

sqlite3> .schema healthcare
CREATE TABLE healthcare (
id PRIMARY KEY,        
sido INTEGER NOT NULL, 
gender INTEGER NOT NULL,
age INTEGER NOT NULL,  
height INTEGER NOT NULL,
weight INTEGER NOT NULL,
waist REAL NOT NULL,   
va_left REAL NOT NULL, 
va_right REAL NOT NULL,

blood_pressure INTEGER 
NOT NULL,
smoking INTEGER NOT NULL,
is_drinking BOOLEAN NOT NULL
);
```

# 문제

### 1. 추가되어 있는 모든 데이터의 수를 출력하시오.

```sql
SELECT COUNT(*) FROM healthcare;
```

```
COUNT(*)
--------
1000000
```

### 2. 나이 그룹이 10(age)미만인 사람의 수를 출력하시오.

```sql
SELECT COUNT(*) FROM healthcare WHERE age < 10;


-- COUNT(*)
-- 156277
```

![image-20220816230446761](README.assets/image-20220816230446761.png)

```
SELECT FROM healthcare WHERE age < 10; 
-- COUNT(*) 을 제외한 경우에는 다음과 같이 나온다. 


id	sido	gender	age	height	weight	waist	va_left	va_right	blood_pressure	smoking	is_drinking
1	36	1	9	165	60	72.1	1.2	1.5	127	1	0
6	27	1	9	185	85	94.0	1.2	1.2	114	3	1
7	44	1	9	165	80	93.0	0.8	0.7	112	3	1
26	48	1	9	165	55	77.5	1.5	1.5	130	1	0
32	27	2	9	155	60	67.0	1.2	1.0	131	1	1
33	46	2	9	170	70	80.0	0.8	0.8	110	3	1
38	44	1	9	165	75	84.0	1.0	1.0	139	2	1
42	11	2	9	170	60	72.0	1.5	1.5	130	3	1
52	46	2	9	150	45	68.0	0.9	0.9	108	1	1
62	27	1	9	175	70	83.0	0.9	1.2	110	3	1
64	47	2	9	165	85	98.0	0.9	0.7	127	1	1
66	26	2	9	160	70	80.0	1.2	1.2	120	1	1
90	41	1	9	170	65	80.0	1.5	1.5	111	2	1
96	47	2	9	160	50	69.0	1.2	1.2	108	1	1
99	11	2	9	155	60	82.0	1.5	1.5	130	1	1
100	11	1	9	165	70	86.0	0.7	1.2	125	2	1
107	11	1	9	180	90	98.6	0.5	1.0	123	3	1
108	47	2	9	165	55	70.0	0.9	1.0	100	1	1
131	41	1	9	175	75	86.0	1.2	1.0	118	3	0
133	43	2	9	150	55	73.0	0.9	0.9	116	1	0
137	26	2	9	155	50	71.0	1.0	1.0	102	1	1
138	27	2	9	165	70	83.0	0.5	0.6	115	1	0
150	41	1	9	170	65	84.2	1.0	1.2	117	2	1
151	44	2	9	145	35	53.0	0.1	0.2	120	1	1
156	41	1	9	165	70	85.0	1.0	1.2	112	1	1
160	11	2	9	165	55	66.0	0.9	0.8	116	1	1
161	28	1	9	175	90	101.0	1.2	1.2	133	1	1
180	11	1	9	170	70	75.0	1.5	1.5	103	3	1
186	30	1	9	180	75	77.0	0.8	0.7	128	2	1
205	11	1	9	180	85	90.0	0.9	1.2	129	2	0
208	41	2	9	160	55	69.0	1.5	1.5	134	1	1
211	41	1	9	180	90	95.0	1.0	0.9	132	2	1
214	48	1	9	175	95	98.0	1.0	1.0	135	2	0
216	47	1	9	165	65	82.0	1.2	1.5	126	3	1
218	26	2	9	165	55	69.0	1.0	0.7	110	1	1
255	29	1	9	175	75	87.0	1.5	1.5	120	1	1
268	41	2	9	160	45	67.0	1.5	1.2	131	3	1
276	41	2	9	155	55	74.0	1.5	1.0	128	1	1
283	29	2	9	155	45	68.2	0.8	1.0	118	1	0
291	48	2	9	160	70	88.5	1.2	1.2	112	1	1
294	41	2	9	160	60	81.0	1.0	0.9	137	1	1
299	48	2	9	165	50	68.0	1.5	1.5	100	1	0
315	31	1	9	165	50	68.0	1.0	1.0	130	1	1
318	41	1	9	180	85	88.1	0.6	0.4	118	1	1
326	11	1	9	170	70	88.0	0.9	1.0	120	3	1
336	41	1	9	170	70	84.0	1.2	1.0	139	3	1
338	47	1	9	170	70	87.0	1.2	1.0	109	3	0
339	41	2	9	155	55	70.0	0.6	0.5	117	1	1
343	11	1	9	170	75	89.4	1.0	1.5	151	2	1
349	29	2	9	150	55	84.0	0.5	1.0	131	1	0
```

### 3. 성별이 1인 사람의 수를 출력하시오.

```sql
SELECT COUNT(*) FROM healthcare WHERE gender = 1;

-- COUNT(*)
-- 510689
```

![image-20220816230839061](README.assets/image-20220816230839061.png)



### 4. 흡연 수치(smoking)가 3이면서 음주(is_drinking)가 1인 사람의 수를 출력하시오.

```sql
SELECT COUNT(*) FROM healthcare WHERE smoking = 3 AND is_drinking = 1;
```

```sql
COUNT(*)
150361
```

### 5. 양쪽 시력이(va_left, va_right) 모두 2.0이상인 사람의 수를 출력하시오.

```sql
SELECT COUNT(*) FROM healthcare WHERE va_left AND va_right >= 2.0;
```

```sql
COUNT(*)
8455
```

### 6. 시도(sido)를 모두 중복 없이 출력하시오.

```sql
SELECT DISTINCT sido FROM healthcare;
```

![image-20220816231738492](README.assets/image-20220816231738492.png)

### 자유롭게 조합해서 원하는 데이터를 출력해보세요.

> 예) 허리 둘레가 x이상이면서 몸무게가 y이하인 사람

```sql
SELECT DISTINCT sido FROM healthcare  ORDER BY count DESC;
```

![image-20220816234550644](README.assets/image-20220816234550644.png)

