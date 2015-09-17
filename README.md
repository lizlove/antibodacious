# antibodacious

Run `brew install elasticsearch` followed by `elasticsearch` to start the Elasticsearch server. Then run `Document.import` in the Rails console to create the Elasticsearch index. Now you should be able to query:

```
response = Document.search('antibiotic')

response.results.total
# => 1

response.results.first._score
# => 0.25

response.results.first._source.name
# => "Antibiotic"
```

Note that Document.import must be run again every time a new document is added to index it for search.
