# Test fedora 3

A benchmark for DLSS objects in Fedora 3.

## Setup

```
curl -L https://github.com/samvera/hydra-jetty/archive/v7.3.0.zip > hydra-jetty-7.3.0.zip
unzip hydra-jetty-7.3.0
cd hydra-jetty-7.3.0
java -Xmx256m -XX:MaxPermSize=256m -jar start.jar
```

Then in another window:

```
bundle install
bundle exec ruby ./test.rb
```
