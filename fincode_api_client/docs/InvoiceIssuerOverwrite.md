# FincodeApiClient::InvoiceIssuerOverwrite

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addr_state** | **String** | 発行元事業者住所の都道府県コード  | [optional] |
| **addr_city** | **String** | 発行元事業者住所の市区町村  | [optional] |
| **addr_line_1** | **String** | 発行元事業者住所の町名・番地  | [optional] |
| **addr_line_2** | **String** | 発行元事業者住所の建物名・部屋番号  | [optional] |
| **addr_line_3** | **String** | 発行元事業者住所 その他  | [optional] |
| **addr_post_code** | **String** | 発行元事業者住所の郵便番号  | [optional] |
| **email** | **String** | 発行元事業者のメールアドレス  | [optional] |
| **phone_number** | **String** | 発行元事業者の電話番号  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::InvoiceIssuerOverwrite.new(
  addr_state: null,
  addr_city: null,
  addr_line_1: null,
  addr_line_2: null,
  addr_line_3: null,
  addr_post_code: null,
  email: null,
  phone_number: null
)
```

