🏢 Fority Concept: Enterprise Data Warehouse
This repository contains the code, data models, and documentation for the Fority Concept Data Warehouse, an end-to-end data engineering project built from scratch using Microsoft SQL Server.

📌 Project Overview
The primary objective of this project is to develop a modern, scalable data warehouse that consolidates enterprise data from two distinct source systems (ERP and CRM). By resolving data quality issues and integrating these sources, the final data model empowers the Fority Concept analytics team to perform fast ad-hoc SQL queries and generate actionable business intelligence reports.

🏗️ Data Architecture (Medallion Approach)
This pipeline leverages the Medallion Architecture to incrementally process and refine data quality:

🥉 Bronze Layer (Raw Zone): Data is ingested directly from the ERP and CRM CSV files in its raw, unprocessed state. Stored as physical tables using a Full Load (Truncate & Insert) batch process for historical traceability.

🥈 Silver Layer (Cleansed Zone): Raw data is filtered, cleaned, and standardized. Data types are enforced and duplicates are removed to create a unified single source of truth for the enterprise.

🥇 Gold Layer (Analytics Zone): Highly refined data structured into a Dimensional Model (Star Schema). Instead of physical tables, this layer utilizes SQL Views to dynamically query the Silver layer, providing optimized datasets (Fact and Dimension tables) for reporting tools.

🛠️ Tech Stack
Database Engine: Microsoft SQL Server

Architecture Model: Medallion (Bronze, Silver, Gold)

Data Modeling: Dimensional Modeling (Star Schema)

Business Intelligence: Power BI (Ad-Hoc Queries & Standard Reporting)

Design & Diagramming: Draw.io

📐 General Principles & Naming Conventions
To ensure scalability and readability, the following naming conventions are strictly enforced across the codebase:

Format: snake_case (lowercase letters with underscores).

Language: English.

Object Naming Rules

Bronze & Silver Tables: <sourcesystem>_<entity> (Example: crm_customer_info)

Gold Views: <category>_<entity>

Categories: dim_ (Dimension), fact_ (Fact), agg_ (Aggregated)

Example: dim_customers or fact_sales

Column Naming Rules

Surrogate Keys: All primary keys in dimension tables use the suffix _key (e.g., customer_key).

Technical Columns: System-generated metadata columns use the prefix dwh_ (e.g., dwh_load_date).

Stored Procedures

Pattern: load_<layer> (Examples: load_bronze, load_silver)

🚀 Getting Started
1. Clone the Repository

Bash
git clone https://github.com/your-username/fority-concept-data-warehouse.git
2. Setup the Database

Open SQL Server Management Studio (SSMS).

Run the initial setup scripts to create the database and the Bronze, Silver, and Gold schemas.

3. Execute the Data Pipeline

Run the load_bronze stored procedures to ingest the raw source data.

Run the load_silver stored procedures to cleanse and merge the data.

4. Analyze

Query the Gold layer views for ad-hoc analysis or connect your BI tool (Power BI/Tableau) directly to the views to build dashboards.

📜 License
This project is licensed under the MIT License - see the LICENSE file for details. (Note: You can change this to Apache 2.0 or another license if you prefer).

👨‍💻 About Me
Hello! I'm a Data Professional passionate about building scalable data architectures, transforming raw data into actionable insights, and solving complex business problems through data engineering and analytics.

Connect with me on LinkedIn: https://www.linkedin.com/in/gibson-samuel-95b5461b6/

Email: your.lilcutedev@gmail.com

If you have any questions or feedback about this project, feel free to reach out!
