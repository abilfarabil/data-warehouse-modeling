# Project Analisis Data - Amazon Sales Report

## Deskripsi Project
Project ini bertujuan untuk menganalisis data penjualan dari laporan Amazon dengan menggunakan DBT (Data Build Tool) dan BigQuery. Skema bintang (Star Schema) dibangun dengan tabel dimensi dan tabel fakta untuk menghasilkan analisis yang relevan.

## Tabel yang Dibuat
### Tabel Dimensi
1. **dim_fulfilment**
   - Menyimpan informasi tentang metode pemenuhan dan pihak yang memenuhi.
   - File: [dim_fulfilment.sql](.dbt/models/fulfilment/dim_fulfilment.sql)

2. **dim_product**
   - Menyimpan detail produk, termasuk style, SKU, kategori, dan ukuran.
   - File: [dim_product.sql](.dbt/models/product/dim_product.sql)

3. **dim_promotion**
   - Menyimpan informasi promosi yang terkait dengan produk.
   - File: [dim_promotion.sql](.dbt/models/promotion/dim_promotion.sql)

4. **dim_sales_shipment**
   - Menyimpan detail pengiriman, termasuk status kurir dan alamat pengiriman.
   - File: [dim_sales_shipment.sql](.dbt/models/shipment/dim_sales_shipment.sql)

5. **dim_sales_channel**
   - Menyimpan informasi tentang saluran penjualan.
   - File: [dim_sales_channel.sql](.dbt/models/sales_channel/dim_sales_channel.sql)

### Tabel Fakta
1. **fact_salesorder**
   - Menyimpan informasi tentang pesanan penjualan, termasuk tanggal, jumlah, dan pendapatan.
   - File: [fact_salesorder.sql](.dbt/models/fact/fact_salesorder.sql)

## Entity-Relationship Diagram (ERD)
Diagram ERD yang menggambarkan hubungan antara tabel dimensi dan tabel fakta dalam skema bintang:

![ERD](images/20_ERD_Star_Schema.png)

## Analisis Data: Top Selling Products
Analisis ini menunjukkan produk terlaris berdasarkan jumlah penjualan dan pendapatan:

### Hasil Analisis
![22_Hasil_Query_Top_Selling_Products_di_BigQuery](images/22_Hasil_Query_Top_Selling_Products_di_BigQuery.png)

## Screenshot yang Diambil
Berikut adalah daftar screenshot yang diambil untuk dokumentasi:
1. **Upload Data ke BigQuery**
   - ![1_Upload_Data_amazon_sale_report_ke_BigQuery](images/1_Upload_Data_amazon_sale_report_ke_BigQuery.png)

2. **Membangun Tabel Dimensi (dim_fulfilment)**
   - ![2_Membuat_Model_DBT_Untuk_dim_fulfilment](images/2_Membuat_Model_DBT_Untuk_dim_fulfilment.png)
   - ![3_Menjalankan_Model_DBT_Setelah_model_dim_fulfilment_sql_selesai](images/3_Menjalankan_Model_DBT_Setelah_model_dim_fulfilment_sql_selesai.png)
   - ![4_Verifikasi_Tabel_dim_fulfilment_di_BigQuery](images/4_Verifikasi_Tabel_dim_fulfilment_di_BigQuery.png)

3. **Membangun Tabel Dimensi (dim_product)**
   - ![5_Membuat_Model_DBT_Untuk_dim_product](images/5_Membuat_Model_DBT_Untuk_dim_product.png)
   - ![6_Menjalankan_Model_DBT_Setelah_model_dim_product_sql_selesai](images/6_Menjalankan_Model_DBT_Setelah_model_dim_product_sql_selesai.png)
   - ![7_Verifikasi_Tabel_dim_product_di_BigQuery](images/7_Verifikasi_Tabel_dim_product_di_BigQuery.png)

4. **Membangun Tabel Dimensi (dim_promotion)**
   - ![8_Membuat_Model_DBT_Untuk_dim_promotion](images/8_Membuat_Model_DBT_Untuk_dim_promotion.png)
   - ![9_Menjalankan_Model_DBT_Setelah_model_dim_promotion_sql_selesai](images/9_Menjalankan_Model_DBT_Setelah_model_dim_promotion_sql_selesai.png)
   - ![10_Verifikasi_Tabel_dim_promotion_di_BigQuery](images/10_Verifikasi_Tabel_dim_promotion_di_BigQuery.png)

5. **Membangun Tabel Dimensi (dim_sales_shipment)**
   - ![11_Membuat_Model_DBT_Untuk_dim_sales_shipment](images/11_Membuat_Model_DBT_Untuk_dim_sales_shipment.png)
   - ![12_Menjalankan_Model_DBT_Setelah_model_dim_sales_shipment_sql_selesai](images/12_Menjalankan_Model_DBT_Setelah_model_dim_sales_shipment_sql_selesai.png)
   - ![13_Verifikasi_Tabel_dim_sales_shipment_di_BigQuery](images/13_Verifikasi_Tabel_dim_sales_shipment_di_BigQuery.png)

6. **Membangun Tabel Dimensi (dim_sales_channel)**
   - ![14_Membuat_Model_DBT_Untuk_dim_sales_channel](images/14_Membuat_Model_DBT_Untuk_dim_sales_channel.png)
   - ![15_Menjalankan_Model_DBT_Setelah_model_dim_sales_channel_sql_selesai](images/15_Menjalankan_Model_DBT_Setelah_model_dim_sales_channel_sql_selesai.png)
   - ![16_Verifikasi_Tabel_dim_sales_channel_di_BigQuery](images/16_Verifikasi_Tabel_dim_sales_channel_di_BigQuery.png)

7. **Membangun Tabel Fakta (fact_salesorder)**
   - ![17_Membuat_Model_DBT_Untuk_fact_salesorder](images/17_Membuat_Model_DBT_Untuk_fact_salesorder.png)
   - ![18_Menjalankan_Model_DBT_Setelah_model_fact_salesorder_sql_selesai](images/18_Menjalankan_Model_DBT_Setelah_model_fact_salesorder_sql_selesai.png)
   - ![19_Verifikasi_Tabel_fact_salesorder_di_BigQuery](images/19_Verifikasi_Tabel_fact_salesorder_di_BigQuery.png)

8. **ERD Star Schema**
   - ![20_ERD_Star_Schema](images/20_ERD_Star_Schema.png)

9. **Query Analisis Top Selling Products**
   - ![21_Query_Analisis_Top_Selling_Products_di_BigQuery](images/21_Query_Analisis_Top_Selling_Products_di_BigQuery.png)
   - ![22_Hasil_Query_Top_Selling_Products_di_BigQuery](images/22_Hasil_Query_Top_Selling_Products_di_BigQuery.png)

## Penutup
Dokumentasi ini merangkum langkah-langkah yang diambil dalam Project analisis data menggunakan DBT dan BigQuery. Hasil analisis ini diharapkan dapat memberikan wawasan yang berguna dalam memahami kinerja produk di platform Amazon.
