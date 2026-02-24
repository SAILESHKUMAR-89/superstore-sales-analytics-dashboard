SQL> /* ===== Superstore Clean Dataset Columns =====
SQL> 
SQL> Row ID
SQL> Order ID
SQL> Order Date
SQL> Ship Date
SQL> Ship Mode
SQL> Customer ID
SQL> Customer Name
SQL> Segment
SQL> Country
SQL> City
SQL> State
SQL> Region
SQL> Product ID
SQL> Category
SQL> Sub-Category
SQL> Product Name
SQL> Sales
SQL> Order month
SQL> Order year
SQL> Shipping days
SQL> 
SQL> ============================================ */
SQL> 
SQL> --Creating table for Superstore Sales Validation
SQL> CREATE TABLE SUPERSTORE_SALES(
  2  --Basic order info
  3  ROW_ID NUMBER,
  4  ORDER_ID VARCHAR2(50),
  5  ORDER_DATE DATE,
  6  SHIP_DATE DATE,
  7  SHIP_MODE VARCHAR2(30),
  8  --Customer info
  9  CUSTOMER_ID VARCHAR2(30),
 10  CUSTOMER_NAME VARCHAR2(100),
 11  SEGMENT VARCHAR2(50),
 12  --Location info
 13  COUNTRY VARCHAR2(30),
 14  CITY VARCHAR2(30),
 15  STATE VARCHAR2(50),
 16  REGION VARCHAR2(30),
 17  --Product info
 18  PRODUCT_ID VARCHAR2(30),
 19  PRODUCT_NAME VARCHAR2(50),
 20  CATEGORY VARCHAR2(30),
 21  SUB_CATEGORY VARCHAR(30),
 22  --Sales info
 23  SALES NUMBER,
 24  --Derived columns from clean data
 25  ORDER_MONTH NUMBER,
 26  ORDER_YEAR NUMBER,
 27  SHIPPING_DAYS NUMBER);

Table created.

SQL> DESC SUPERSTORE_SALES;
 Name                                                                                                                                            Null?    Type
 ---------------------------------------------------------------------------------------------------
 ROW_ID                                                                                                                                                   NUMBER
 ORDER_ID                                                                                                                                                 VARCHAR2(50)
 ORDER_DATE                                                                                                                                               DATE
 SHIP_DATE                                                                                                                                                DATE
 SHIP_MODE                                                                                                                                                VARCHAR2(30)
 CUSTOMER_ID                                                                                                                                              VARCHAR2(30)
 CUSTOMER_NAME                                                                                                                                            VARCHAR2(100)
 SEGMENT                                                                                                                                                  VARCHAR2(50)
 COUNTRY                                                                                                                                                  VARCHAR2(30)
 CITY                                                                                                                                                     VARCHAR2(30)
 STATE                                                                                                                                                    VARCHAR2(50)
 REGION                                                                                                                                                   VARCHAR2(30)
 PRODUCT_ID                                                                                                                                               VARCHAR2(30)
 PRODUCT_NAME                                                                                                                                             VARCHAR2(50)
 CATEGORY                                                                                                                                                 VARCHAR2(30)
 SUB_CATEGORY                                                                                                                                             VARCHAR2(30)
 SALES                                                                                                                                                    NUMBER
 ORDER_MONTH                                                                                                                                              NUMBER
 ORDER_YEAR                                                                                                                                               NUMBER
 SHIPPING_DAYS                                                                                                                                            NUMBER

SQL> SELECT COUNT(*) FROM SUPERSTORE_SALES;

  COUNT(*)
----------
         0

SQL> ALTER TABLE SUPERSTORE_SALES
  2  MODIFY (
  3  PRODUCT_ID VARCHAR2(50),
  4  PRODUCT_NAME VARCHAR2(200),
  5  );
)
*
ERROR at line 5:
ORA-00904: : invalid identifier


SQL> ALTER TABLE SUPERSTORE_SALES
  2  MODIFY (
  3  PRODUCT_ID VARCHAR2(50),
  4  PRODUCT_NAME VARCHAR2(200),
  5  );
)
*
ERROR at line 5:
ORA-00904: : invalid identifier


SQL> ALTER TABLE SUPERSTORE_SALES
  2  MODIFY (
  3  PRODUCT_ID VARCHAR2(50),
  4  PRODUCT_NAME VARCHAR2(200));

Table altered.

SQL> DESC SUPERSTORE_SALES;
 Name                                                                                                                                            Null?    Type
 ---------------------------------------------------------------------------------------------------
 ROW_ID                                                                                                                                                   NUMBER
 ORDER_ID                                                                                                                                                 VARCHAR2(50)
 ORDER_DATE                                                                                                                                               DATE
 SHIP_DATE                                                                                                                                                DATE
 SHIP_MODE                                                                                                                                                VARCHAR2(30)
 CUSTOMER_ID                                                                                                                                              VARCHAR2(30)
 CUSTOMER_NAME                                                                                                                                            VARCHAR2(100)
 SEGMENT                                                                                                                                                  VARCHAR2(50)
 COUNTRY                                                                                                                                                  VARCHAR2(30)
 CITY                                                                                                                                                     VARCHAR2(30)
 STATE                                                                                                                                                    VARCHAR2(50)
 REGION                                                                                                                                                   VARCHAR2(30)
 PRODUCT_ID                                                                                                                                               VARCHAR2(50)
 PRODUCT_NAME                                                                                                                                             VARCHAR2(200)
 CATEGORY                                                                                                                                                 VARCHAR2(30)
 SUB_CATEGORY                                                                                                                                             VARCHAR2(30)
 SALES                                                                                                                                                    NUMBER
 ORDER_MONTH                                                                                                                                              NUMBER
 ORDER_YEAR                                                                                                                                               NUMBER
 SHIPPING_DAYS                                                                                                                                            NUMBER

SQL> DESCRIBE SUPERSTORE_SALES;
 Name                                                                                                                                            Null?    Type
 ---------------------------------------------------------------------------------------------------
 ROW_ID                                                                                                                                                   NUMBER
 ORDER_ID                                                                                                                                                 VARCHAR2(50)
 ORDER_DATE                                                                                                                                               DATE
 SHIP_DATE                                                                                                                                                DATE
 SHIP_MODE                                                                                                                                                VARCHAR2(30)
 CUSTOMER_ID                                                                                                                                              VARCHAR2(30)
 CUSTOMER_NAME                                                                                                                                            VARCHAR2(100)
 SEGMENT                                                                                                                                                  VARCHAR2(50)
 COUNTRY                                                                                                                                                  VARCHAR2(30)
 CITY                                                                                                                                                     VARCHAR2(30)
 STATE                                                                                                                                                    VARCHAR2(50)
 REGION                                                                                                                                                   VARCHAR2(30)
 PRODUCT_ID                                                                                                                                               VARCHAR2(50)
 PRODUCT_NAME                                                                                                                                             VARCHAR2(200)
 CATEGORY                                                                                                                                                 VARCHAR2(30)
 SUB_CATEGORY                                                                                                                                             VARCHAR2(30)
 SALES                                                                                                                                                    NUMBER
 ORDER_MONTH                                                                                                                                              NUMBER
 ORDER_YEAR                                                                                                                                               NUMBER
 SHIPPING_DAYS                                                                                                                                            NUMBER

SQL> SELECT COUNT(*) FROM SUPERSTORE_SALES;

  COUNT(*)
----------
         0

SQL> set pages 300 lines 300;
SQL> SELECT COUNT(*) FROM SUPERSTORE_SALES;

  COUNT(*)
----------
         0

SQL> set pagesize 200 linesize 200;
SQL> SELECT COUNT(*) FROM SUPERSTORE_SALES;

  COUNT(*)
----------
         0

SQL> DESC SUPERSTORE_SALES;
 Name                                                                                                              Null?    Type
 ---------------------------------------------------------------------------------------------------
 ROW_ID                                                                                                                     NUMBER
 ORDER_ID                                                                                                                   VARCHAR2(50)
 ORDER_DATE                                                                                                                 DATE
 SHIP_DATE                                                                                                                  DATE
 SHIP_MODE                                                                                                                  VARCHAR2(30)
 CUSTOMER_ID                                                                                                                VARCHAR2(30)
 CUSTOMER_NAME                                                                                                              VARCHAR2(100)
 SEGMENT                                                                                                                    VARCHAR2(50)
 COUNTRY                                                                                                                    VARCHAR2(30)
 CITY                                                                                                                       VARCHAR2(30)
 STATE                                                                                                                      VARCHAR2(50)
 REGION                                                                                                                     VARCHAR2(30)
 PRODUCT_ID                                                                                                                 VARCHAR2(50)
 PRODUCT_NAME                                                                                                               VARCHAR2(200)
 CATEGORY                                                                                                                   VARCHAR2(30)
 SUB_CATEGORY                                                                                                               VARCHAR2(30)
 SALES                                                                                                                      NUMBER
 ORDER_MONTH                                                                                                                NUMBER
 ORDER_YEAR                                                                                                                 NUMBER
 SHIPPING_DAYS                                                                                                              NUMBER

SQL> DESCRIBE SUPERSTORE_SALES;
 Name                                                                                                              Null?    Type
 ---------------------------------------------------------------------------------------------------
 ROW_ID                                                                                                                     NUMBER
 ORDER_ID                                                                                                                   VARCHAR2(50)
 ORDER_DATE                                                                                                                 DATE
 SHIP_DATE                                                                                                                  DATE
 SHIP_MODE                                                                                                                  VARCHAR2(30)
 CUSTOMER_ID                                                                                                                VARCHAR2(30)
 CUSTOMER_NAME                                                                                                              VARCHAR2(100)
 SEGMENT                                                                                                                    VARCHAR2(50)
 COUNTRY                                                                                                                    VARCHAR2(30)
 CITY                                                                                                                       VARCHAR2(30)
 STATE                                                                                                                      VARCHAR2(50)
 REGION                                                                                                                     VARCHAR2(30)
 PRODUCT_ID                                                                                                                 VARCHAR2(50)
 PRODUCT_NAME                                                                                                               VARCHAR2(200)
 CATEGORY                                                                                                                   VARCHAR2(30)
 SUB_CATEGORY                                                                                                               VARCHAR2(30)
 SALES                                                                                                                      NUMBER
 ORDER_MONTH                                                                                                                NUMBER
 ORDER_YEAR                                                                                                                 NUMBER
 SHIPPING_DAYS                                                                                                              NUMBER

SQL> set pages 200 lines 500;
SQL> DESC SUPERSTORE_SALES;
 Name                                                                                                                                                                   
 ---------------------------------------------------------------------------------------------------
 ROW_ID                                                                                                                                                                 
 ORDER_ID                                                                                                                                                               
 ORDER_DATE                                                                                                                                                             
 SHIP_DATE                                                                                                                                                              
 SHIP_MODE                                                                                                                                                              
 CUSTOMER_ID                                                                                                                                                            
 CUSTOMER_NAME                                                                                                                                                          
 SEGMENT                                                                                                                                                                
 COUNTRY                                                                                                                                                                
 CITY                                                                                                                                                                   
 STATE                                                                                                                                                                  
 REGION                                                                                                                                                                 
 PRODUCT_ID                                                                                                                                                             
 PRODUCT_NAME                                                                                                                                                           
 CATEGORY                                                                                                                                                               
 SUB_CATEGORY                                                                                                                                                           
 SALES                                                                                                                                                                  
 ORDER_MONTH                                                                                                                                                            
 ORDER_YEAR                                                                                                                                                             
 SHIPPING_DAYS                                                                                                                                                          

SQL> SET LINESIZE 100;
SQL> DESC SUPERSTORE_SALES;
 Name                                                  Null?    Type
 ----------------------------------------------------- -------- ------------------------------------
 ROW_ID                                                         NUMBER
 ORDER_ID                                                       VARCHAR2(50)
 ORDER_DATE                                                     DATE
 SHIP_DATE                                                      DATE
 SHIP_MODE                                                      VARCHAR2(30)
 CUSTOMER_ID                                                    VARCHAR2(30)
 CUSTOMER_NAME                                                  VARCHAR2(100)
 SEGMENT                                                        VARCHAR2(50)
 COUNTRY                                                        VARCHAR2(30)
 CITY                                                           VARCHAR2(30)
 STATE                                                          VARCHAR2(50)
 REGION                                                         VARCHAR2(30)
 PRODUCT_ID                                                     VARCHAR2(50)
 PRODUCT_NAME                                                   VARCHAR2(200)
 CATEGORY                                                       VARCHAR2(30)
 SUB_CATEGORY                                                   VARCHAR2(30)
 SALES                                                          NUMBER
 ORDER_MONTH                                                    NUMBER
 ORDER_YEAR                                                     NUMBER
 SHIPPING_DAYS                                                  NUMBER

SQL> SET LINESIZE 200;
SQL> SELECT COUNT(*) FROM SUPERSTORE_SALES;

  COUNT(*)
----------
      9800

SQL> SET NUMFORMAT 9999999990.99;
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> --KPI-1 Total Revenue
SQL> SELECT ROUND(SUM(SALES)2) AS TOTAL_REVENUE FROM SUPERSTORE_SALES;
SELECT ROUND(SUM(SALES)2) AS TOTAL_REVENUE FROM SUPERSTORE_SALES
                       *
ERROR at line 1:
ORA-00907: missing right parenthesis


SQL> SELECT ROUND(SUM(SALES),2) AS TOTAL_REVENUE FROM SUPERSTORE_SALES;

 TOTAL_REVENUE
--------------
    2261536.78

SQL> -- KPI 2: Total Unique Orders
SQL> SELECT COUNT(DISTINCT ORDER_ID) AS TOTAL_ORDERS FROM SUPERSTORE_SALES;

  TOTAL_ORDERS
--------------
       4922.00

SQL> -- KPI 3: Average Order Value
SQL> SELECT ROUND(SUM(SALES)/COUNT(DISTINCT ORDER_ID),2) AS AVG_ORDER_VALUE FROM SUPERSTORE_SALES;

AVG_ORDER_VALUE
---------------
         459.48

SQL> -- KPI 4: Revenue contribution by segment
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> SELECT SEGMENT, ROUND(SUM(SALES),2) AS SEGMENT_REVENUE,
  2  ROUND(100 * SUM(SALES)/(SELECT SUM(SALES) FROM SUPERSTORE_SALES),2) AS SEGMENT_PCT
  3  FROM SUPERSTORE_SALES
  4  GROUPBY SEGMENT
  5  
SQL> SELECT SEGMENT, ROUND(SUM(SALES),2) AS SEGMENT_REVENUE,
  2  ROUND(100 * SUM(SALES)/(SELECT SUM(SALES) FROM SUPERSTORE_SALES),2) AS SEGMENT_PCT
  3  FROM SUPERSTORE_SALES
  4  GROUP BY SEGMENT
  5  ORDER BY SEGMENT_REVENUE DESC;

SEGMENT                                            SEGMENT_REVENUE    SEGMENT_PCT
-------------------------------------------------- --------------- --------------
Consumer                                                1148060.53          50.76
Corporate                                                688494.07          30.44
Home Office                                              424982.18          18.79

SQL> -- KPI 5: Revenue contribution by region
SQL> SELECT REGION, ROUND(SUM(SALES),2) AS REGION_REVENUE,
  2  ROUND(100 * SUM(SALES)/(SELECT SUM(SALES) FROM SUPERSTORE_SALES),2) AS REGION_PCT
  3  GROUP BY REGION
  4  ORDER BY REGION_REVENUE DESC;
GROUP BY REGION
*
ERROR at line 3:
ORA-00923: FROM keyword not found where expected


SQL>  SELECT REGION, ROUND(SUM(SALES),2) AS REGION_REVENUE,
  2   ROUND(100 * SUM(SALES)/(SELECT SUM(SALES) FROM SUPERSTORE_SALES),2) AS REGION_PCT
  3  FROM SUPERSTORE_SALES
  4  GROUP BY REGION
  5  ORDER BY REGION_REVENUE;

REGION                         REGION_REVENUE     REGION_PCT
------------------------------ -------------- --------------
South                               389151.46          17.21
Central                             492646.91          21.78
East                                669518.73          29.60
West                                710219.68          31.40

SQL> -- KPI 6: Revenue contribution by category
SQL> SELECT CATEGORY, ROUND(SUM(SALES),2) AS CATEGORY_REVENUE,
  2  ROUND(100 * SUM(SALES)/(SELECT SUM(SALES) FROM SUPERSTORE_SALES),2) AS CATEGORY_PCT
  3  FROM SUPERSTORE_SALES
  4  GROUP BY CATEGORY
  5  ORDER BY CATEGORY_PCT DESC;

CATEGORY                       CATEGORY_REVENUE   CATEGORY_PCT
------------------------------ ---------------- --------------
Technology                            827455.87          36.59
Furniture                             728658.58          32.22
Office Supplies                       705422.33          31.19

SQL> WITH RANKED AS(
  2  SELECT SALES, NTILE(10) OVER (ORDER BY SALES DESC) AS DECILE
  3  FROM SUPERSTORE_SALES)
  4  SELECT ROUND(100 * SUM(CASE WHEN DECILE=1 THEN SALES ELSE 0 END)/SUM(SALES),2) AS TOP_10_PCT_RE
VENUE FROM RANKED;

TOP_10_PCT_REVENUE
------------------
             60.39

SQL> SELECT sales, decile
  2  FROM (
  3    SELECT sales, NTILE(10) OVER (ORDER BY sales DESC) AS decile
  4    FROM superstore_sales
  5  )
  6  WHERE ROWNUM <= 20;

         SALES         DECILE
-------------- --------------
      22638.48           1.00
      17499.95           1.00
      13999.96           1.00
      11199.97           1.00
      10499.97           1.00
       9892.74           1.00
       9449.95           1.00
       9099.93           1.00
       8749.95           1.00
       8399.98           1.00
       8187.65           1.00
       8159.95           1.00
       7999.98           1.00
       6999.96           1.00
       6354.95           1.00
       5443.96           1.00
       5399.91           1.00
       5199.96           1.00
       5083.96           1.00
       4912.59           1.00

20 rows selected.

SQL> -- Top 10% rows by Sales (simple and clear)
SQL> WITH ordered AS (
  2    SELECT
  3      sales,
  4      ROW_NUMBER() OVER (ORDER BY sales DESC) AS rn,
  5      COUNT(*) OVER () AS total_rows
  6    FROM superstore_sales
  7  )
  8  SELECT
  9    ROUND(
 10      100 * SUM(CASE WHEN rn <= total_rows * 0.10 THEN sales ELSE 0 END) / SUM(sales)
 11    , 2) AS top_10_pct_revenue
 12  FROM ordered;

TOP_10_PCT_REVENUE
------------------
             60.39

SQL> -- KPI 8A: Overall average shipping days
SQL> -- KPI 8B: Shipping performance by ship mode
SQL> SELECT SHIP_MODE, ROUND(AVG(SHIPPING_DAYS),2) AS AVG_SHIPPING_DAYS
  2  FROM SUPERSTORE_SALES
  3  GROUP BY SHIP_MODE
  4  ORDER BY AVG_SHIPPING_DAYS;

SHIP_MODE                      AVG_SHIPPING_DAYS
------------------------------ -----------------
Same Day                                    0.04
First Class                                 2.18
Second Class                                3.25
Standard Class                              5.01

SQL> - KPI 9: Year-over-Year Growth %
SP2-0734: unknown command beginning "- KPI 9: Y..." - rest of line ignored.
SQL> -- KPI 9: Year-over-Year Growth %
SQL> WITH YEARLY AS(
  2  SELECT ORDER_YEAR, SUM(SALES) AS REVENUE
  3  FROM SUPERSTORE_SALES
  4  GROUP BY ORDER_YEAR),
  5  YOY AS(
  6  SELECT ORDER_YEAR, REVENUE, LAG(REVENUE) OVER (ORDER BY ORDER_YEAR) AS PREV_REVENUE
  7  FROM YEARLY)
  8  SELECT ORDER_YEAR, ROUND(REVENUE,2) AS REVENUE,
  9  ROUND((REVENUE-PREV_REVENUE)/PREV_REVENUE * 100,2)
 10  FROM YOY
 11  ORDER BY ORDER_YEAR;

    ORDER_YEAR        REVENUE ROUND((REVENUE-PREV_REVENUE)/PREV_REVENUE*100,2)
-------------- -------------- ------------------------------------------------
       2015.00      479856.21
       2016.00      459436.01                                            -4.26
       2017.00      600192.55                                            30.64
       2018.00      722052.02                                            20.30

SQL> -- KPI 10: Monthly Revenue Trend
SQL> SELECT ORDER_MONTH, ROUND(SUM(SALES),2) AS MONTHLY_REVENUE
  2  FROM SUPERSTORE_SALES
  3  GROUP BY ORDER_MONTH
  4  ORDER BY ORDER_MONTH;

   ORDER_MONTH MONTHLY_REVENUE
-------------- ---------------
          1.00        94291.63
          2.00        59371.12
          3.00       197573.59
          4.00       136283.00
          5.00       154086.72
          6.00       145837.52
          7.00       145535.69
          8.00       157315.93
          9.00       300103.41
         10.00       199496.29
         11.00       350161.71
         12.00       321480.17

12 rows selected.

SQL>  SELECT ORDER_MONTH, ROUND(SUM(SALES),2) AS MONTHLY_REVENUE
  2   FROM SUPERSTORE_SALES
  3   GROUP BY ORDER_MONTH
  4  ORDER BY MONTHLY_REVENUE;

   ORDER_MONTH MONTHLY_REVENUE
-------------- ---------------
          2.00        59371.12
          1.00        94291.63
          4.00       136283.00
          7.00       145535.69
          6.00       145837.52
          5.00       154086.72
          8.00       157315.93
          3.00       197573.59
         10.00       199496.29
          9.00       300103.41
         12.00       321480.17
         11.00       350161.71

12 rows selected.

SQL> 