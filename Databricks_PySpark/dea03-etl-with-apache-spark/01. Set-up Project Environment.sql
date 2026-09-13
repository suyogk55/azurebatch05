-- Databricks notebook source
-- MAGIC %md
-- MAGIC ## Set-up the project environment for GizmoBox Data Lakehouse

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### 1. Access the container gizmobox

-- COMMAND ----------

-- MAGIC %fs ls 'abfss://gizmobox@b06covidreportingdl.dfs.core.windows.net/'

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### 2. Create External Location

-- COMMAND ----------

CREATE EXTERNAL LOCATION IF NOT EXISTS batch06_ext_sc
    URL 'abfss://gizmobox@b06covidreportingdl.dfs.core.windows.net/'
    WITH (STORAGE CREDENTIAL batch06_ext_sc)
    COMMENT 'External Location For the Gizmobox Data Lakehouse'

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### 3. Create the catalog - gizmobox

-- COMMAND ----------

SHOW CATALOGS;

-- COMMAND ----------

CREATE CATALOG IF NOT EXISTS gizmobox
      MANAGED LOCATION 'abfss://gizmobox@b06covidreportingdl.dfs.core.windows.net/'
      COMMENT 'This is the catalog for the Gizmobox Data Lakehouse' ;

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### 4. Create Schemas
-- MAGIC 1. Landing
-- MAGIC 1. Bronze
-- MAGIC 1. Silver
-- MAGIC 1. Gold

-- COMMAND ----------

SELECT current_catalog();

-- COMMAND ----------

USE CATALOG gizmobox;


CREATE SCHEMA IF NOT EXISTS landing
     MANAGED LOCATION 'abfss://gizmobox@b06covidreportingdl.dfs.core.windows.net/landing';  
CREATE SCHEMA IF NOT EXISTS bronze
     MANAGED LOCATION 'abfss://gizmobox@b06covidreportingdl.dfs.core.windows.net/bronze';  
CREATE SCHEMA IF NOT EXISTS silver
     MANAGED LOCATION 'abfss://gizmobox@b06covidreportingdl.dfs.core.windows.net/silver';  
CREATE SCHEMA IF NOT EXISTS gold
     MANAGED LOCATION 'abfss://gizmobox@b06covidreportingdl.dfs.core.windows.net/gold';            

-- COMMAND ----------

SHOW SCHEMAS;

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### 5. Create Volume

-- COMMAND ----------

USE CATALOG gizmobox;
USE SCHEMA landing;

CREATE EXTERNAL VOLUME IF NOT EXISTS operational_data
    LOCATION 'abfss://gizmobox@b06covidreportingdl.dfs.core.windows.net/landing/operational_data/';

-- COMMAND ----------

-- MAGIC %fs ls /Volumes/gizmobox/landing/operational_data/addresses