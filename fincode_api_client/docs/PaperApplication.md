# FincodeApiClient::PaperApplication

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **postal_account_number_1** | **String** | ゆうちょ 預金記号  | [optional] |
| **postal_account_number_2** | **String** | ゆうちょ 預金番号  | [optional] |
| **request_form_id** | **String** | 依頼書ID。\\ 依頼書を管理画面から登録した際に登録者が指定した、依頼書を一意に識別するIDです。\\ ※プラットフォームショップの場合、プラットフォーム全体で一意である必要があります。  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaperApplication.new(
  postal_account_number_1: 12345,
  postal_account_number_2: 06789012,
  request_form_id: 12345678901234567890
)
```

