-- 코드를 입력하세요
SELECT A.PRODUCT_ID, A.PRODUCT_NAME, sum(A.PRICE * B.AMOUNT) as TOTAL_SALES
from FOOD_PRODUCT as A
inner join FOOD_ORDER as B
on A.PRODUCT_ID = B.PRODUCT_ID
where B.PRODUCE_DATE like '2022-05%'
group by A.PRODUCT_NAME
order by TOTAL_SALES desc, A.PRODUCT_ID asc;

