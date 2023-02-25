# -*- coding: utf-8 -*-
"""Boston Crime Analysis - AWS Glue ETL transformation script.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/13LLkpxiywbDYm-K-qwuCE75kK4BycuR2
"""

import sys
from awsglue.transforms import *
from awsglue.utils import getResolvedOptions
from pyspark.context import SparkContext
from awsglue.context import GlueContext
from awsglue.job import Job
from awsglue.dynamicframe import DynamicFrame
from pyspark.sql.functions import when, col

args = getResolvedOptions(sys.argv, ["JOB_NAME"])
sc = SparkContext()
glueContext = GlueContext(sc)
spark = glueContext.spark_session
job = Job(glueContext)
job.init(args["JOB_NAME"], args)

# Script generated for node AWS Glue Data Catalog
AWSGlueDataCatalog_node1677035666462 = glueContext.create_dynamic_frame.from_catalog(
    database="myawsbostoncrimesdb",
    table_name="myaws_bostoncrimes_datalake",
    transformation_ctx="AWSGlueDataCatalog_node1677035666462",
)

crimeDF = AWSGlueDataCatalog_node1677035666462.toDF()

crimeDF1= crimeDF.fillna({
    "district":"Unknown"
})

crimeDF1= crimeDF.fillna({
    "shooting":"Unknown",
    "incident_number":"Unknown",
    "offense_code_group":"Unknown",
    "offense_description":"Unknown",
    "day_of_week":"Unknown",
    "ucr_part":"Unknown",
    "street":"Unknown"
})

crimeDF1 = crimeDF1.withColumn("offense_code", when(col("offense_code").isNull(), -1).otherwise(col("offense_code")))
crimeDF1 = crimeDF1.withColumn("occurred_on_date", when(col("occurred_on_date").isNull(), "9999-12-31 23:59:59").otherwise(col("occurred_on_date")))
crimeDF1 = crimeDF1.withColumn("year", when(col("year").isNull(), 9999).otherwise(col("year")))
crimeDF1 = crimeDF1.withColumn("month", when(col("month").isNull(), -1).otherwise(col("month")))
crimeDF1 = crimeDF1.withColumn("hour", when(col("hour").isNull(), -1).otherwise(col("hour")))
crimeDF1 = crimeDF1.withColumn("Lat", when(col("Lat").isNull(), -999).otherwise(col("Lat")))
crimeDF1 = crimeDF1.withColumn("Long", when(col("Long").isNull(), -999).otherwise(col("Long")))

dynamic_dframe = DynamicFrame.fromDF(crimeDF1, glueContext, "dynamic_df")

# Script generated for node Change Schema (Apply Mapping)
ChangeSchemaApplyMapping_node1677035684533 = ApplyMapping.apply(
    frame=dynamic_dframe,
    mappings=[
        ("incident_number", "string", "incident_number", "string"),
        ("offense_code", "long", "offense_code", "long"),
        ("offense_code_group", "string", "offense_code_group", "string"),
        ("offense_description", "string", "offense_description", "string"),
        ("district", "string", "district", "string"),
        ("reporting_area", "long", "reporting_area", "int"),
        ("shooting", "string", "shooting", "string"),
        ("occurred_on_date", "string", "occurred_on_date", "timestamp"),
        ("year", "long", "year", "int"),
        ("month", "long", "month", "int"),
        ("day_of_week", "string", "day_of_week", "string"),
        ("hour", "long", "hour", "int"),
        ("ucr_part", "string", "ucr_part", "string"),
        ("street", "string", "street", "string"),
        ("lat", "double", "lat", "double"),
        ("long", "double", "long", "double"),
    ],
    transformation_ctx="ChangeSchemaApplyMapping_node1677035684533",
)

# Script generated for node Amazon S3
AmazonS3_node1677035823617 = glueContext.write_dynamic_frame.from_options(
    frame=ChangeSchemaApplyMapping_node1677035684533,
    connection_type="s3",
    format="csv",
    connection_options={
        "path": "s3://myaws-bostoncrimes-transformed",
        "partitionKeys": [],
    },
    transformation_ctx="AmazonS3_node1677035823617",
)

job.commit()