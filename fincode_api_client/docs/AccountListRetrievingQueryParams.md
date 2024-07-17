# FincodeApiClient::AccountListRetrievingQueryParams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **processed** | **String** | 確定日（入金サイクルの締め日）を月単位で絞り込みます。\\ 形式： &#x60;yyyy/MM&#x60;  | [optional] |
| **status** | [**DepositStatusCode**](DepositStatusCode.md) |  | [optional] |
| **scheduled_from** | **Date** | 入金予定日の範囲指定（開始日）を指定します。\\ この日付以降に入金が行われた売上入金情報を検索できます。\\ 形式： &#x60;yyyy/MM/dd&#x60;  | [optional] |
| **scheduled_to** | **Date** | 入金予定日の範囲指定（終了日）を指定します。\\ この日付以前に入金が行われた売上入金情報を検索できます。\\ 形式： &#x60;yyyy/MM/dd&#x60;  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::AccountListRetrievingQueryParams.new(
  processed: 2022/05,
  status: null,
  scheduled_from: null,
  scheduled_to: null
)
```

