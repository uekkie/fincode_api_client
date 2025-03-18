# FincodeApiClient::DirectdebitPaperApplication

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **preregistered_date** | **String** | 依頼書 仮登録日時。\\ 依頼書を仮登録した日時です。\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **request_form_id** | **String** | 依頼書ID。\\ 依頼書を管理画面から登録した際に登録者が指定した、依頼書を一意に識別するIDです。  | [optional] |
| **paper_failure_description** | **String** | 依頼書登録に失敗した理由。  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::DirectdebitPaperApplication.new(
  preregistered_date: 2022/05/16 23:59:59.999,
  request_form_id: 12345678901234567890,
  paper_failure_description: 依頼書の登録が○○○という理由で失敗しました。
)
```

