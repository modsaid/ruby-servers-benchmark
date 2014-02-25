ruby servers benchmark
=======================

Quick performance comparison between sinatra and goliath

sinatra
-------

```
cd sinatra-test
bundle install
ruby hello.rb
```

then hit it with siege

```
time siege -c300 -r50 http://localhost:4567/hi
```

Goliath
-------

Goliath is asynchronous server which is expected to be more scalable and better

```
cd goliath-test
bundle install
ruby hello.rb -sv
```

then hit it with siege

```
time siege -c300 -r50 http://localhost:4567/hi
```

results
-------

Showing up for each test in the related "results" file

Sinatra

```
Transactions:		       15000 hits
Availability:		      100.00 %
Elapsed time:		       46.89 secs
Data transferred:	        0.17 MB
Response time:		        0.28 secs
Transaction rate:	      319.90 trans/sec
Concurrency:		       89.68
Successful transactions:       15000
Failed transactions:	           0
Longest transaction:	        3.24
Shortest transaction:	        0.00
```

goliath

```
Transactions:		       15000 hits
Availability:		      100.00 %
Elapsed time:		       36.61 secs
Data transferred:	        0.16 MB
Response time:		        0.03 secs
Transaction rate:	      409.72 trans/sec
Concurrency:		       10.32
Successful transactions:       15000
Failed transactions:	           0
Longest transaction:	        1.41
Shortest transaction:	        0.00
```




