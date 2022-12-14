# πΎ Python_DB
### π± [Python_Database Day_01](https://github.com/oiosu/Python_DB/blob/main/20220816_DB/python_data0816.md)
### π± [Python_Database Day_01_μ€μ΅](https://github.com/oiosu/Python_DB/blob/main/20220816_DB/README.md)
![image](https://user-images.githubusercontent.com/99783474/184888276-a8834876-b116-4ee4-8a24-9a6600d26dfb.png)

- λ°μ΄ν°λ² μ΄μ€λ **μ²΄κ³νλ λ°μ΄ν°**μ λͺ¨μ
- μ¬λ¬ μ¬λμ΄ κ³΅μ νκ³  μ¬μ©ν  λͺ©μ μΌλ‘ ν΅ν© κ΄λ¦¬λλ μ λ³΄μ μ§ν©__
- λΌλ¦¬μ μΌλ‘ μ°κ΄λ(νλ μ΄μμ) μ§λ£μ λͺ¨μμΌλ‘ κ·Έ λ΄μ©μ κ³ λλ‘ κ΅¬μ‘°ν ν¨μΌλ‘μ¨ κ²μκ³Ό κ°±μ μ ν¨μ¨νλ₯Ό κΎν κ² 
- μ¦, **λͺ κ°μ μλ£ νμΌμ μ‘°μ§μ μΌλ‘ ν΅ν©**νμ¬ **μλ£ ν­λͺ©μ μ€λ³΅μ μμ **κ³  **μλ£λ₯Ό κ΅¬μ‘°ν**νμ¬ κΈ°μ΅μμΌ λμ **μλ£μ μ§ν©μ²΄** 


### π‘ [RDB_κ΄κ³ν λ°μ΄ν° λ² μ΄μ€ (Relational Database)](https://github.com/oiosu/Python_DB/blob/main/20220816_DB/python_data0816.md)

* μλ‘ κ΄λ ¨λ λ°μ΄ν°λ₯Ό μ μ₯νκ³  μ κ·Όν  μ μλ λ°μ΄ν° λ² μ΄μ€ μ ν 
* ν€ μ κ° (ν΅μ¬μ νλ‘ μ λ¦¬λ κ²)


- **μ€ν€λ§ (schema)** : λ°μ΄ν° λ² μ΄μ€μμ μλ£μ **κ΅¬μ‘°**, ννλ°©λ², κ΄κ³λ± μ λ°μ μΈ **λͺμΈλ₯Ό κΈ°μ **ν κ² 

- **νμ΄λΈ (table)** : μ€ν€λ§λ₯Ό κΈ°λ°μΌλ‘ νμ΄λΈμ΄ λ§λ€μ΄μ§λ©° μ΄(μ»¬λΌ/νλ)μ ν(λ μ½λ/κ°)μ λͺ¨λΈμ μ¬μ©ν΄ μ‘°μ§λ λ°μ΄ν° μμλ€μ μ§ν©μ΄λ€. 

- **μ΄(column)** : κ° μ΄μ κ³ μ ν λ°μ΄ν° νμ μ§μ  

- **ν(row)** : μ€μ  λ°μ΄ν°κ° μ μ₯λλ νν

- **κΈ°λ³Έν€_ Primary Key_λ°λμ νμν¨** : κ° ν(λ μ½λ)μ κ³ μ  κ°


### [π‘ RDBMS](https://github.com/oiosu/Python_DB/blob/main/20220816_DB/python_data0816.md) 

_ **SQLite** λ‘ μ¬μ©ν  κ³ν 

* μλ² ννκ° μλ νμΌ νμμΌλ‘ μμ© νλ‘κ·Έλ¨μ λ£μ΄μ μ¬μ©νλ **λΉκ΅μ  κ°λ²Όμ΄ λ°μ΄ν° λ² μ΄μ€** 
* κ΅¬κΈ μλλ‘μ΄λ μ΄μμ²΄μ μ κΈ°λ³Έμ μΌλ‘ νμ¬λλ λ°μ΄ν° λ² μ΄μ€μ΄λ©°, μλ² λλ μννΈμ¨μ΄μλ λ§μ΄ νμ©λ¨
* λ‘μ»¬μμ κ°λ¨ν DB κ΅¬μ±μ ν  μ μμΌλ©°, μ€ν μμ€ νλ‘μ νΈμ΄κΈ° λλ¬Έμ μμ λ‘­κ² μ¬μ©κ°λ₯ 

#### **βΌ SQLite Data Type**

```sql
1. NULL
2. INTEGER β­
	-- ν¬κΈ°μ λ°λΌ 0, 1, 2, 3, 4, 6 λλ 8λ°μ΄νΈμ μ μ₯λ λΆνΈ μλ μ μ 
3. REAL 
	-- 8λ°μ΄νΈ λΆλ μμμ  μ«μλ‘ μ μ₯λ λΆλ μμμ  κ° 
4. TEXT β­
5. BLOB 
	-- μλ ₯λ κ·Έλλ‘ μ νν μ μ₯λ λ°μ΄ν°(λ³λ€λ₯Έ νμ μμ΄ κ·Έλλ‘ μ μ₯ )

```

### [π‘ SQL](https://github.com/oiosu/Python_DB/blob/main/20220816_DB/python_data0816.md)

* κ΄κ³ν λ°μ΄ν°λ² μ΄μ€ κ΄λ¦¬μμ€νμ **λ°μ΄ν° κ΄λ¦¬**λ₯Ό μν΄ μ€κ³λ **νΉμ λͺ©μ μΌλ‘ νλ‘κ·Έλλ° μΈμ΄** 
* λ°μ΄ν° λ² μ΄μ€ μ€ν€λ§ μμ± λ° μμ  
* μλ£μ κ²μ λ° κ΄λ¦¬ 
* λ°μ΄ν° λ² μ΄μ€ κ°μ²΄ μ κ·Ό μ‘°μ  κ΄λ¦¬ 

**βΌ DDL(Data Definition Language) _ λ°μ΄ν° μ μ μΈμ΄**  

**βΌ DML(Data Manipulatioin Language) _ λ°μ΄ν° μ‘°μ μΈμ΄**

**βΌ DCL(Data Control Language) _ λ°μ΄ν° μ μ΄ μΈμ΄**

### [π‘ HELLO WORLD!](https://github.com/oiosu/Python_DB/blob/main/20220816_DB/python_data0816.md)

#### [1. νμ΄λΈ μμ± λ° μ­μ ](https://github.com/oiosu/Python_DB/blob/main/20220816_DB/python_data0816.md) [2. csv νμΌμ table λ‘ λ§λ€κΈ°](https://github.com/oiosu/Python_DB/blob/main/20220816_DB/python_data0816.md)    [3. SELECT](https://github.com/oiosu/Python_DB/blob/main/20220816_DB/python_data0816.md) [4. sqlite νμ₯ νλ‘κ·Έλ¨ μ¬μ©νκΈ°](https://github.com/oiosu/Python_DB/blob/main/20220816_DB/python_data0816.md) [5. CREATE](https://github.com/oiosu/Python_DB/blob/main/20220816_DB/python_data0816.md) [6. DROP](https://github.com/oiosu/Python_DB/blob/main/20220816_DB/python_data0816.md)


#### [**β SELECT μ λ§μ΄ μ¬μ©νλ λͺλ Ήμ΄**](https://suy379.tistory.com/104#1._FROM_:_%ED%85%8C%EC%9D%B4%EB%B8%94_%EC%84%A0%ED%83%9D) 

#### [β SQL λ¬Έλ² vs SQL μ€νμμ ](https://suy379.tistory.com/104#1._FROM_:_%ED%85%8C%EC%9D%B4%EB%B8%94_%EC%84%A0%ED%83%9D)

![image](https://user-images.githubusercontent.com/99783474/184893522-b8ffe90f-a785-477e-a56a-a13fd19272c4.png)

---

### π±[Python_Database Day_02](https://github.com/oiosu/Python_DB/blob/main/20220817_DB/python_data0817.md)

### π± [Python_Database Day_02_μ€μ΅](https://github.com/oiosu/Python_DB/blob/main/20220817_DB/2%EC%9D%BC%EC%B0%A8%20%EC%8B%A4%EC%8A%B5.md)

### π±[Python_Database Day_02_μ€μ΅ ν΄μ€](https://github.com/oiosu/Python_DB/blob/main/20220818_DB/03%EC%8B%A4%EC%8A%B5.md)
---

### [π WHERE](https://github.com/oiosu/Python_DB/blob/main/20220817_DB/python_data0817.md)

#### β νΉμ  μ‘°κ±΄μΌλ‘ λ°μ΄ν° μ‘°ννκΈ° 

```sql
SELECT * FROM νμ΄λΈ μ΄λ¦ WHERE μ‘°κ±΄; 
```

### π‘ WHERE μ μμ μ¬μ©ν  μ μλ μ°μ°μ 

**βΌ λΉκ΅ μ°μ°μ** 

: = , >, >=, <, <= λ μ«μ νΉμ λ¬Έμ κ°μ λ/μ, λμΌ μ¬λΆλ₯Ό νμΈνλ μ°μ°μ

**βΌ λΌλ¦¬ μ°μ°μ : AND, OR, NOT** 

* AND :  μμ μλ μ‘°κ±΄κ³Ό λ€μ μ€λ μ‘°κ±΄μ΄ λͺ¨λ μ°ΈμΈ κ²½μ° 
* OR : μμ μ‘°κ±΄μ΄λ λ€μ μ‘°κ±΄μ΄ μ°ΈμΈ κ²½μ°
* NOT: λ€μ μ€λ μ‘°κ±΄μ κ²°κ³Όλ₯Ό λ°λλ‘ 

### [β μ£Όμ _μ°μ μμ](https://github.com/oiosu/Python_DB/blob/main/20220817_DB/python_data0817.md)

```sql
--1
WHERE HEIGHT = 175 OR HEIGHT = 183 AND WHIGHT = 80
--2
WHERE (HEIGHT = 175 OR HEIGHT = 183) AND WEIGHT = 80  -- μ λ§€νλ€κ³  λκ»΄μ§λ κ΄νΈ μΉμ!

-- κ΄νΈμ μ°¨μ΄ 
-- 1 ) ν€κ° 175μ΄κ±°λ, ν€κ° 183μ΄λ©΄μ λͺΈλ¬΄κ²κ° 80μΈ μ¬λ -- κΈ°νΈ , μ£ΌμκΉκ² λ³΄κΈ° 
-- 2) ν€κ° 175 λλ 183 μΈ μ¬λ μ£Όμμ λͺΈλ¬΄κ²κ° 80μΈ μ¬λ 
```

### [π‘ SQL μμ μ¬μ©ν  μ μλ μ°μ°μ  & μ°μ°μ μ°μ μμ](https://github.com/oiosu/Python_DB/blob/main/20220817_DB/python_data0817.md) 

---

### [π SQLite Ageeregate Functions](https://github.com/oiosu/Python_DB/blob/main/20220817_DB/python_data0817.md)


βΌ Aggregate Functions_μ§κ³ν¨μ 

* **κ° μ§ν©μ λν κ³μ°μ μννκ³  λ¨μΌ κ°μ λ°ν** 
  * μ¬λ¬ νμΌλ‘λΆν° νλμ κ²°κ³Όκ°μ λ°ννλ ν¨μ 
* **SELECT κ΅¬λ¬Έμμλ§ μ¬μ©λ¨**
* EX) νμ΄λΈ μ μ²΄ ν μλ₯Ό κ΅¬νλ **COUNT(*)**
* EX) age μ»¬λΌ μ μ²΄ νκ·  κ°μ κ΅¬νλ **AVG(age)**

![image](https://user-images.githubusercontent.com/99783474/185177046-4040e35d-9270-4b2f-8f19-5a2db65f215e.png)

### [ π LIKE](https://github.com/oiosu/Python_DB/blob/main/20220817_DB/python_data0817.md)  [π ORDER BY _ (sorting) ](https://github.com/oiosu/Python_DB/blob/main/20220817_DB/python_data0817.md)


---

### π±[Python_Database Day_03](https://github.com/oiosu/Python_DB/blob/main/20220818_DB/03%EC%8B%A4%EC%8A%B5.md)

### π± [Python_Database Day_03_μ€μ΅](https://github.com/oiosu/Python_DB/blob/main/20220818_DB/03%EC%8B%A4%EC%8A%B5.md)

---

### [π κΈ°λ³Έ ν¨μμ μ°μ°](https://github.com/oiosu/Python_DB/blob/main/20220818_DB/03%EC%8B%A4%EC%8A%B5.md) 

### [π‘ λ¬Έμμ΄ ν¨μ  & μ«μ ν¨μ](https://github.com/oiosu/Python_DB/blob/main/20220818_DB/03%EC%8B%A4%EC%8A%B5.md) 


### [π GROUP BY](https://github.com/oiosu/Python_DB/blob/main/20220818_DB/03%EC%8B%A4%EC%8A%B5.md)

**_ Agrregate function (μ§κ³ν¨μ) λ€μλ³΄κΈ°** 

* κ° μ§ν©μ λν κ³μ°μ μννκ³  **λ¨μΌ κ°μ λ°ν**
  * μ¬λ¬ νμΌλ‘λΆν° νλμ κ²°κ΄κ°μ λ°ννλ ν¨μ 
* SELECT κ΅¬λ¬Έμμλ§ μ¬μ©λ¨ 

> νμ΄λΈ μ μ²΄ ν μλ₯Ό κ΅¬νλ **COUNT(*)**
>
> age μ»¬λΌ μ μ²΄ νκ·  κ°μ κ΅¬νλ **AVG(age)**




### - **ALIAS** 

* μΉΌλΌλͺμ΄λ νμ΄λΈλͺμ΄ λλ¬΄ κΈΈκ±°λ λ€λ₯Έ λͺμΉ­μΌλ‘ νμΈνκ³  μΆμ λλ ALIASλ₯Ό νμ©
* **ASλ₯Ό μλ΅νμ¬ κ³΅λ°±μΌλ‘ ννν  μ μμ**
* λ³μΉ­μ κ³΅λ°±, νΉμλ¬Έμ λ±μ΄ μλ κ²½μ° λ°μ΄νλ‘ λ¬Άμ΄μ νκΈ° 


### [π‘ GROUP BY](https://github.com/oiosu/Python_DB/blob/main/20220818_DB/03%EC%8B%A4%EC%8A%B5.md) 

#### (νμ κ·Έλ£Ήν΄μ£Όλ κ²μ΄κ³  κ°κ° μ§κ³ν¨μλ‘ λκ²¨μ£Όλ κ²)

* μ§μ λ μ»¬λΌμ κ°μ΄ κ°μ νλ€λ‘ λ¬Άμ
* **β­ μ§κ³ν¨μμ νμ©νμμ λ μλ―Έκ° μμ**(κ°μ΄ λ¬Άμ΄μ μ‘°νν΄μ£ΌκΈ° λλ¬Έ)
* κ·Έλ£Ήνλ κ°κ°μ κ·Έλ£Ήμ΄ νλμ μ§ν©μΌλ‘ μ§κ³ν¨μμ μΈμλ‘ λκ²¨μ§

```sql
SELECT μΉΌλΌλͺ
FROM νμ΄λΈλͺ 
WHERE μ‘°κ±΄μ
GROUP BY μΉΌλΌ νΉμ ννμ
HAVING κ·Έλ£Ήμ‘°κ±΄μ
ORDER BY μΉΌλΌ νΉμ ννμ
LIMIT μ«μ OFFSET μ«μ;
```

![image](https://user-images.githubusercontent.com/99783474/185345674-84b23e87-2643-4641-9bbf-a1f22c4d3d16.png)
![image](https://user-images.githubusercontent.com/99783474/185345749-24ab32a2-3cce-4ab4-8fdb-94bd0f3a2b05.png)


### [π‘ HAVING](https://github.com/oiosu/Python_DB/blob/main/20220818_DB/03%EC%8B%A4%EC%8A%B5.md)

* μ§κ³ν¨μλ WHERE μ μ μ‘°κ±΄μμμλ μ¬μ©ν  μ μμ_μ€ν μμμ μν΄ 
  * **WHERE λ‘ μ²λ¦¬νλ κ²μ΄ GROUP BY κ·Έλ£Ήνλ³΄λ€ μμμ μμ μκΈ° λλ¬Έ**
* μ§κ³ κ²°κ³Όμμ μ‘°κ±΄μ λ§λ κ°μ λ°λ‘ νμ©νκΈ° μν΄μ HAVING μ νμ© 


---

### π±[Python_Database Day_04](https://github.com/oiosu/Python_DB/blob/main/20220819_DB/20220819_DB.md)

### π± [Python_Database Day_04_μ€μ΅](https://github.com/oiosu/Python_DB/blob/main/20220819_DB/20220819_DB.md)

---

### [π‘ CASE](https://github.com/oiosu/Python_DB/blob/main/20220819_DB/20220819_DB.md)

- CASEλ¬Έμ νΉμ  μν©μμ λ°μ΄ν°λ₯Ό λ³ννμ¬ νμ©ν  μ μμ
- ELSEλ₯Ό μλ΅νλ κ²½μ° NULL κ°μ΄ μ§μ λ¨

```sql
CASE 
	WHEN μ‘°κ±΄μ THEN μ
	WHEN μ‘°κ±΄μ THEN TLR
	ELSE μ
CASE
```

### μλΈμΏΌλ¦¬ / λ©μΈμΏΌλ¦¬ 

![image](https://user-images.githubusercontent.com/99783474/185796986-8ceca92c-02a0-43c7-9441-b4ba8032cba0.png)

---

### π±[Python_Database Day_05](https://github.com/oiosu/Python_DB/blob/main/20220822_DB/5%EC%9D%BC%EC%B0%A8%20%EC%8B%A4%EC%8A%B5.md)

### π± [Python_Database Day_05_μ€μ΅](https://github.com/oiosu/Python_DB/blob/main/20220822_DB/5%EC%9D%BC%EC%B0%A8%20%EC%8B%A4%EC%8A%B5.md)

---

### π΅ INNER JOIN _ λ νμ΄λΈμ λͺ¨λ μΌμΉνλ νλ§ λ°ν

![image](https://user-images.githubusercontent.com/99783474/185911703-5ad9d0ee-bb97-4ad7-8802-0ac9903768ed.png)


### π΅ OUTER JOIN _ λμΌν κ°μ΄ μλ νλ λ°ν

![image](https://user-images.githubusercontent.com/99783474/185911804-68009fc0-e1f2-4851-a333-85c9cf180755.png)

### π΅ CROSS JOIN _ λͺ¨λ  κ°λ₯ν κ²½μ°μ μμ JOIN

```sql
SELECT *
FROM νμ΄λΈ1 CROSS JOIN νμ΄λΈ2;
```
```sql
-- λͺ¨λ  κ²μκΈκ³Ό λͺ¨λ  μ¬μ©μ μ λ³΄λ₯Ό μΆλ ₯νμμ€. 
 
SELECT *
FROM articles FULL OUTER JOIN users
	ON users.id = articles.user_id;
```

### [SQL_JOINS_VISUALIZER](SQL Joins Visualizer (leopard.in.ua))

![image](https://user-images.githubusercontent.com/99783474/185912128-42ea205c-6642-40ef-8e4f-e435405de06c.png)

---

### π±[Python_Database Day_06](https://github.com/oiosu/Python_DB/blob/main/20220823_DB/20220823_DB.md)

### π± [Python_Database Day_06_μ€μ΅](https://github.com/oiosu/Python_DB/tree/main/20220823_DB)

---


### π‘ ERD(Entity Relationship Diagram) _κ°μ²΄ κ΄κ³ λͺ¨λΈ 

    μν°ν°(Entity) : μλ¬΄κ° κ΄μ¬νλ μ λ³΄
    μμ±(Attribute) : Entityκ° κ°μ§λ μ±κ²©, λ°μ΄ν° νμκ³Ό ν¬κΈ° λ° μ μ½μ¬ν­ μ§μ 
    κ΄κ³(Relationship) : Entity κ°μ κ΄κ³, μ°κ΄μ±


![image](https://user-images.githubusercontent.com/99783474/189498228-8e55a37d-d183-4e6d-a3a2-886b41fdc566.png)


βΌ μ¬λλ€μ΄ λ§μ κΈμ μμ±ν©λλ€. βΌ κΈμ μ¬λλ€μ΄ μμ±ν©λλ€. βΌ κΈμ λκΈλ€μ κ°μ§κ³  μμ΄μ

βΌ κΈμ μ΄λ―Έμ§, μμ, λ΄μ©μ ν¬ν¨ν©λλ€. βΌ λκΈμ μ¬λμ΄ μμ±ν΄μ. κΈμ΄ μμ΄μΌλ§ ν΄μ.

βΌ μ¬λλ€μ μ­ν μ κ°μ§κ³  μμ΅λλ€. βΌ μ¬λλ€μ΄ κΈμ μ’μμλ₯Ό λλ¦λλ€.

βΌ κΈμ μ¬λλ€μ μν΄μ μ’μμλ₯Ό λ°μ΅λλ€.


### π‘ Crowβs feet

![image](https://user-images.githubusercontent.com/99783474/189498245-3562bc81-f95b-4dca-a15a-44966dd94561.png)


---

### π±[Python_Database Day_07](https://github.com/oiosu/Python_DB/blob/main/20220823_DB/20220823_DB.md)

### π± [Python_Database Day_07_μ€μ΅](https://github.com/oiosu/Python_DB/tree/main/20220823_DB)

---

#### β λͺ¨λΈ μ€κ³ 

#### **(1) ν΄λμ€λ₯Ό μμ±νμ¬ λ΄κ° μνλ DBμ κ΅¬μ‘°λ₯Ό λ§λ λ€.** 

#### **(2) λͺ¨λΈ μ€κ³ λ° λ°μ** 

	* ν΄λμ€λ₯Ό μμ±νμ¬ λ΄κ° μνλ DBμ κ΅¬μ‘°λ₯Ό λ§λ λ€. 
	
	* ν΄λμ€μ λ΄μ©μΌλ‘ λ°μ΄ν°λ² μ΄μ€μ λ°μνκΈ° μν λ§μ΄κ·Έλ μ΄μ νμΌμ μμ±νλ€

---

### π±[Python_Database Day_08](https://github.com/oiosu/Python_DB/blob/main/20220825_DB/20220825_DB.md)

### π± [Python_Database Day_09_μ€μ΅](https://github.com/oiosu/Python_DB/blob/main/20220825_DB/20220825_DB.md)

---

#### β QuerySet API

#### β ORM νμ₯ _ 1:M



