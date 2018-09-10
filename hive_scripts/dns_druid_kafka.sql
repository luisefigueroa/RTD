create external table dns_druid_kafka( 
`__time` timestamp,
`uid` string,
id_orig_h string, 
id_orig_p string,
id_resp_h string,
id_resp_p string,
proto string,
port string,
query string,
qclass string,
qclass_name string,
q_type string,
q_type_name string,
rcode string,
rcode_name string,
QR string,
AA string,
TC string,
RD string,
Z string,
answers	string,
TTLs string,
rejected string)
STORED BY 'org.apache.hadoop.hive.druid.DruidStorageHandler'
TBLPROPERTIES (
"kafka.bootstrap.servers"="ip-172-31-19-216.ec2.internal:6667",
"kafka.topic" = "dns",
"druid.kafka.ingestion.useEarliestOffset" = "true",
"druid.kafka.ingestion.maxRowsInMemory" = "5",
"druid.kafka.ingestion.startDelay" = "PT1S",
"druid.kafka.ingestion.period" = "PT1S",
"druid.kafka.ingestion.consumer.retries" = "2"
 );