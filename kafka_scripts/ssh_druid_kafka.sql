CREATE EXTERNAL TABLE ssh_druid_kafka_2(
`__time` timestamp,
uid string,
id_orig_h string,
id_orig_p string,
id_resp_h string,
id_resp_p string,
status string,
direction string,
client string,
server string,
resp_size int)
STORED BY 'org.apache.hadoop.hive.druid.DruidStorageHandler'
TBLPROPERTIES (
"kafka.bootstrap.servers" = "ip-172-31-19-216.ec2.internal:6667",
"kafka.topic" = "ssh",
"druid.kafka.ingestion.useEarliestOffset" = "true",
"druid.kafka.ingestion.maxRowsInMemory" = "5",
"druid.kafka.ingestion.startDelay" = "PT1S",
"druid.kafka.ingestion.period" = "PT1S",
"druid.kafka.ingestion.consumer.retries" = "2"
);