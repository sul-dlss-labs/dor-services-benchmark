$LOAD_PATH.unshift File.expand_path('..', __FILE__)
require 'item'
require 'benchmark'
Dor::Config.workflow.url = 'http://sul-lyberservices-dev.stanford.edu/workflow'
Dor::Config.fedora.url = 'http://fedoraAdmin:fedoraAdmin@localhost:8983/fedora'
Dor::Config.solr.url = 'http://localhost:8983/solr/development'

n = 100

Benchmark.bm do |x|
  x.report("Create #{n} ") { n.times { Item.create } }
end
