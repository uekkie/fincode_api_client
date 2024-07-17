# FincodeApiClient::PaymentBulkDetailList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list** | [**Array&lt;PaymentBulkDetail&gt;**](PaymentBulkDetail.md) | 一括決済詳細リスト\\ \\ 決済1件につき1オブジェクトが格納され、オブジェクト内には決済情報が格納されます。  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentBulkDetailList.new(
  list: null
)
```

