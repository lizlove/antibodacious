# antibodacious

![Antibody](https://classconnection.s3.amazonaws.com/833/flashcards/2682833/jpg/turqouiseantibody-structure1362768151517.jpg)

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
