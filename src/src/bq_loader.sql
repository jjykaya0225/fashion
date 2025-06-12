--items에 관한 데이터 쿼리

SELECT 
_TABLE_SUFFIX as DATE, 
items.item_id as product_id, 
items.item_name as product_name, 
items.item_brand as product_brand, 
CAST(items.quantity as int64) as quantity
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`, 
UNNEST(items) AS items
WHERE _TABLE_SUFFIX BETWEEN "20210101" and "20210102"


--세션에 대한 데이터 쿼리
--변수 지정

DECLARE start_date STRING;
DECLARE end_date STRING;

SET start_date = "20210101";
SET end_date = "20210102";

SELECT 
_TABLE_SUFFIX as DATE, 
items.item_id as product_id, 
items.item_name as product_name, 
items.item_brand as product_brand, 
CAST(items.quantity as int64) as quantity
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`, 
UNNEST(items) AS items
WHERE _TABLE_SUFFIX BETWEEN start_date and end_date


--세션에 관한 데이터 쿼리
--변수 지정
--조건문 CASE WHEN END

DECLARE start_date STRING;
DECLARE end_date STRING;

SET start_date = "20210101";
SET end_date = "20210131";

SELECT 
_TABLE_SUFFIX as DATE,  
items.item_brand as brand, 
SUM(
  CASE
   WHEN event_name='view_item' THEN items.quantity
  END
) as item_viewed
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`, 
UNNEST(items) AS items
WHERE _TABLE_SUFFIX BETWEEN start_date and end_date
GROUP BY
 DATE,
 brand


--브랜드별로 가장 많이 본 아이템 쿼리
DECLARE start_date STRING;
DECLARE end_date STRING;

SET start_date = "20210101";
SET end_date = "20210131";

SELECT 
--_TABLE_SUFFIX as DATE,  
items.item_brand as brand, 
items.item_name as name,
SUM(
  CASE
   WHEN event_name='view_item' THEN items.quantity
  END
) as item_viewed
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`, 
UNNEST(items) AS items
WHERE _TABLE_SUFFIX BETWEEN start_date and end_date
GROUP BY
 --DATE,
 brand,
 name



