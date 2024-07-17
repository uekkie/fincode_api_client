generate lib
```shell
openapi-generator generate -i ./fincode-openapi.yml -g ruby -o ./fincode_api_client/ --additional-properties=gemName=fincode_api_client,gemRequiredRubyVersion='>= 3.2.0' --library=faraday
```
build gem
```shell
gem build ./fincode_api_client/fincode_api_client.gemspec
```