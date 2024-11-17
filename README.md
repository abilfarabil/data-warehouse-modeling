# Amazon Sales Report Analysis Project

## Overview
This project analyzes Amazon sales report data using DBT (Data Build Tool) and BigQuery. The analysis is built on a Star Schema design with dimension and fact tables to generate relevant business insights.

## Prerequisites
- Google Cloud Platform Account
- BigQuery Access
- DBT (Data Build Tool)
- Access to Amazon Sales Report data

## Installation & Setup
1. Clone this repository
```bash
git clone https://github.com/abilfarabil/data-warehouse-modeling
```

2. Set up BigQuery
- Upload the Amazon sales report data to BigQuery
- Configure BigQuery credentials in DBT
![Upload Data](images/1_Upload_Data_amazon_sale_report_ke_BigQuery.png)

## Project Structure
```
project/
├── .dbt/
│   └── models/
│       ├── fulfilment/
│       │   └── dim_fulfilment.sql
│       ├── product/
│       │   └── dim_product.sql
│       ├── promotion/
│       │   └── dim_promotion.sql
│       ├── shipment/
│       │   └── dim_sales_shipment.sql
│       ├── sales_channel/
│       │   └── dim_sales_channel.sql
│       └── fact/
│           └── fact_salesorder.sql
└── images/
```

## Data Model
### Dimension Tables
1. **dim_fulfilment**
   - Stores fulfillment method information
   - Implementation: [dim_fulfilment.sql](.dbt/models/fulfilment/dim_fulfilment.sql)
   ![Fulfilment Model](images/2_Membuat_Model_DBT_Untuk_dim_fulfilment.png)

2. **dim_product**
   - Contains product details (style, SKU, category, size)
   - Implementation: [dim_product.sql](.dbt/models/product/dim_product.sql)
   ![Product Model](images/5_Membuat_Model_DBT_Untuk_dim_product.png)

3. **dim_promotion**
   - Stores promotion-related information
   - Implementation: [dim_promotion.sql](.dbt/models/promotion/dim_promotion.sql)
   ![Promotion Model](images/8_Membuat_Model_DBT_Untuk_dim_promotion.png)

4. **dim_sales_shipment**
   - Contains shipping details and delivery status
   - Implementation: [dim_sales_shipment.sql](.dbt/models/shipment/dim_sales_shipment.sql)
   ![Shipment Model](images/11_Membuat_Model_DBT_Untuk_dim_sales_shipment.png)

5. **dim_sales_channel**
   - Stores sales channel information
   - Implementation: [dim_sales_channel.sql](.dbt/models/sales_channel/dim_sales_channel.sql)
   ![Sales Channel Model](images/14_Membuat_Model_DBT_Untuk_dim_sales_channel.png)

### Fact Table
1. **fact_salesorder**
   - Contains sales order transactions
   - Implementation: [fact_salesorder.sql](.dbt/models/fact/fact_salesorder.sql)
   ![Fact Sales Order](images/17_Membuat_Model_DBT_Untuk_fact_salesorder.png)

## Data Model (ERD)
Star Schema Entity Relationship Diagram:
![ERD](images/20_ERD_Star_Schema.png)

## Analysis Results
### Top Selling Products Analysis
Query and results showing best-performing products by sales volume and revenue:
![Analysis Query](images/21_Query_Analisis_Top_Selling_Products_di_BigQuery.png)
![Analysis Results](images/22_Hasil_Query_Top_Selling_Products_di_BigQuery.png)

## Implementation Steps
Detailed steps of the implementation process are documented through screenshots:

1. Data Upload to BigQuery
2. Dimension Tables Creation
3. Fact Table Implementation
4. Model Verification
5. Analysis Execution

Full implementation details with screenshots can be found in the [Implementation Details](images) section.

## Technologies Used
- DBT (Data Build Tool)
- Google BigQuery
- SQL
- Star Schema Data Modeling

## References
- [DBT Documentation](https://docs.getdbt.com/)
- [Google BigQuery Documentation](https://cloud.google.com/bigquery/docs)
- [Star Schema Design Principles](https://www.kimballgroup.com/data-warehouse-business-intelligence-resources/kimball-techniques/dimensional-modeling-techniques/)
