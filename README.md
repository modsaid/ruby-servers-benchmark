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
