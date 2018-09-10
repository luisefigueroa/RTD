create external table ftp_druid_kafka( 
`__time` timestamp,
uid string,
id_orig_h string,
id_orig_p string,
id_resp_h string,
id_resp_p string,
`user` string,
password string,
command string,
arg string,
mime_type string,
file_size double,
reply_code string,
reply_msg string,
passive string,
orig_h string,
resp_h string,
resp_p string,
fuid string)
STORED BY 'org.apache.hadoop.hive.druid.DruidStorageHandler'
TBLPROPERTIES (
"kafka.bootstrap.servers"="ip-172-31-19-216.ec2.internal:6667",
"kafka.topic" = "ftp",
"druid.kafka.ingestion.useEarliestOffset" = "true",
"druid.kafka.ingestion.maxRowsInMemory" = "5",
"druid.kafka.ingestion.startDelay" = "PT1S",
"druid.kafka.ingestion.period" = "PT1S",
 "druid.kafka.ingestion.consumer.retries" = "2"
 );


