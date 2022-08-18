-- SQLite

-- 1. 흡연 여부(smoking)로 구분한 각 그룹의 컬렴명과 그룹의 사람의 수를 출력하시오.

SELECT smoking, COUNT(*)
FROM healthcare
GROUP BY smoking;

-- smoking	COUNT(*)
-- 1	        626138
-- 2	        189808
-- 3	        183711
              -- 343


-- 2. 음주 여부(is_drinking)로 구분한 각 그룹의 컬렴명과 그룹의 사람의 수를 출력하시오.
SELECT is_drinking, COUNT(*)
FROM healthcare
GROUP BY is_drinking;

-- is_drinking	COUNT(*)
-- 0	          415119
-- 1	          584685
                -- 196




-- 3. 음주 여부로 구분한 각 그룹에서 혈압(blood_pressure)이 200이상인 사람의 수를 출력하시오.
SELECT is_drinking, COUNT(*)
FROM healthcare
WHERE blood_pressure >= 200 
GROUP BY is_drinking;


-- is_drinking	COUNT(*)
-- 0	          6064
-- 1	          1770


-- 4. 시도(sido)에 사는 사람의 수가 50000명 이상인 시도의 코드와 그 시도에 사는 사람의 수를 출력하시오.
SELECT sido, COUNT(*)
FROM healthcare
GROUP BY sido
HAVING COUNT(*) >= 50000;

-- sido	COUNT(*)
-- 11   166231
-- 26	  69025
-- 28	  58345
-- 41	  247369
-- 47	  54438
-- 48	  68530


-- 5. 키(height)를 기준으로 구분하고, 각 키와 사람의 수를 출력하시오.
-- 단, 사람의 수를 기준으로 내림차순 5개까지 출력하시오.
SELECT height, COUNT(*) 
FROM healthcare
GROUP BY height
ORDER BY COUNT(*) DESC LIMIT 5;

-- height	COUNT(*)
-- 160	  184993
-- 155	  181306
-- 165	  179352
-- 170	  152585
-- 150	  128555



-- 6. 키(height)와 몸무게(weight)를 기준으로 구분하고, 몸무게와, 키, 해당 그룹의 사람의 수를 출력하시오. 
SELECT weight, height, COUNT(*) 
FROM healthcare
GROUP BY height, weight
ORDER BY COUNT(*) DESC LIMIT 5;


-- weight	height	COUNT(*)
-- 55	      155	  45866
-- 60	      160	  42454
-- 65	      165	  40385
-- 50	      155	  38582
-- 55	      160	  38066



-- 7. 음주여부에 따라 평균 허리둘레(waist)와 사람의 수를 출력하시오.
SELECT is_drinking, AVG(waist), COUNT(*)
FROM healthcare
GROUP BY is_drinking;


-- is_drinking	AVG(waist)	      COUNT(*)
-- 0	          81.2128249971711	415119
-- 1	          83.1541594191841	584685
--              82.7714285714286	196




-- 8. 각 성별(gender)의 평균 왼쪽 시력(va_left)과 평균 오른쪽 시력(va_right)를 출력하시오.
-- 단, 평균 왼쪽 시력과 평균 오른쪽 시력의 컬럼명을 '평균 왼쪽 시력' '평균 오른쪽 시력'로 표시하고, 
-- 평균 시력은 소수점 둘째 자리까지 출력하시오.
SELECT round(avg(va_left),2) AS '평균 왼쪽 시력', round(avg(va_right),2) AS '평균 오른쪽 시력'
FROM healthcare GROUP BY gender;

-- 평균 왼쪽 시력	평균 오른쪽 시력
-- 0.98	          0.99
-- 0.88	          0.88



-- 9. 각 나이대(age)의 평균 키와 평균 몸무게를 출력하시오.
-- 단, 평균 키와 평균 몸무게의 컬럼명을 '평균 키' '평균 몸무게'로 표시하고, 
-- 평균키가 160 이상 평균 몸무게가 60 이상인 데이터만 출력하시오.

SELECT age, AVG(height) AS '평균 키', AVG(weight) AS '평균 몸무게' 
FROM healthcare 
GROUP BY age 
HAVING AVG(height) >= 160 AND AVG(weight) >= 60;


-- age	평균 키	        평균 몸무게
-- 9	165.66545300972	  67.2402208898302
-- 10	164.119689244962	65.677140776194
-- 11	162.111550610398	63.9036737713782
-- 12	160.653006214415	62.5955563062588

-- 10.  음주 여부(is_drinking)와 흡연 여부(smoking)에 따른 평균 BMI를 출력하시오.
-- 단, 음주 여부 또는 흡연 여부가 공백이 아닌 행만 사용하세요.

SELECT is_drinking, smoking, avg(weight/(weight*0.01)/(height*0.01)) AS BMI 
FROM healthcare WHERE is_drinking != '' AND smoking != '' 
GROUP BY is_drinking, smoking;

-- is_drinking	  smoking	    BMI
-- 0	              1	        64.5738789945945
-- 0	              2	        60.6474942792317
-- 0	              3	        60.7313216402321
-- 1	              1       	62.770750086732
-- 1	              2	        59.8045393424654
-- 1	              3	        59.7384136033683