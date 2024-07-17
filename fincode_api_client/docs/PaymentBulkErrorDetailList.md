# FincodeApiClient::PaymentBulkErrorDetailList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error_detail** | [**Array&lt;PaymentBulkErrorDetail&gt;**](PaymentBulkErrorDetail.md) | 一括決済エラー詳細リスト\\ \\ エラー1件につき1オブジェクトが格納され、オブジェクト内にはエラーが発生した決済のIDとその決済で発生したエラーのリストが格納されます。  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentBulkErrorDetailList.new(
  error_detail: null
)
```

