Brazilian Portuguese Metaphone Plugin for Elasticsearch
========================================

This plugin integrates the Metaphone algorithm for Brazilian Portuguese into Elasticsearch.

## Installing

```sh
./elasticsearch-plugin install https://github.com/rodrigopc/elasticsearch-analysis-metaphone_ptBR/blob/master/dist/elasticsearch-analysis-metaphone_ptBR-1.0.1.zip?raw=true
```

## Building from source

```bash
mvn clean package
./elasticsearch-plugin install file:target/releases/elasticsearch-analysis-metaphone_ptBR-1.0.1.zip
```

## Compatibility

|Metaphone ptBR Plugin|Elasticsearch|JDK
|---|---|---|
| 1.0.0|5.0.0|1.8+|
| 1.0.1|5.6.3|1.8+|

## Usage

This plugin includes the 'br_metaphone' token filter. 

Example usage:

```javascript
{
  "settings": {
    "analysis": {
      "analyzer": {
        "myAnalyzer": {
          "tokenizer":  "standard",
          "filter": [
            "br_metaphone"
          ]
        }
      }
    }
  }
}
```