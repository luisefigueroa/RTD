create external table dhcp_druid_kafka( 
`__time` timestamp,
uid string,
id_orig_h string,
id_orig_p string,
id_resp_h string,
id_resp_p string,
mac string,
assigned_ip string,
lease_time double,
trans_id int)
STORED BY 'org.apache.hadoop.hive.druid.DruidStorageHandler'
TBLPROPERTIES (
"kafka.bootstrap.servers"="ip-172-31-19-216.ec2.internal:6667",
"kafka.topic" = "dhcp",
"druid.kafka.ingestion.useEarliestOffset" = "true",
"druid.kafka.ingestion.maxRowsInMemory" = "5",
"druid.kafka.ingestion.startDelay" = "PT1S",
"druid.kafka.ingestion.period" = "PT1S",
 "druid.kafka.ingestion.consumer.retries" = "2"
 );

 