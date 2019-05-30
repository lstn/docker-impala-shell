impala-shell

```
docker run -t -i lestienne/impala-shell:latest-slim impala-shell -i <impala-server>:21000 -d <db>
```

http://www.cloudera.com/content/cloudera-content/cloudera-docs/CDH5/latest/Impala/Installing-and-Using-Impala/ciiu_connecting.html#connecting

> connect <your impala server>;
> show databases;
> use <database>;
> show tables;
