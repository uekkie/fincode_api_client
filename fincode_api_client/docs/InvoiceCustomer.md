# FincodeApiClient::InvoiceCustomer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | 顧客（請求先）宛名  | [optional] |
| **email** | **String** | 顧客（請求先）メールアドレス  | [optional] |
| **addr_country** | **String** | 顧客（請求先）住所の国コード    | [optional] |
| **addr_state** | **String** | 顧客（請求先）住所の都道府県コード    | [optional] |
| **addr_city** | **String** | 顧客（請求先）住所の市区町村    | [optional] |
| **addr_line_1** | **String** | 顧客（請求先）住所の町名・番地    | [optional] |
| **addr_line_2** | **String** | 顧客（請求先）住所の建物名・部屋番号    | [optional] |
| **addr_line_3** | **String** | 顧客（請求先）住所 その他    | [optional] |
| **addr_post_code** | **String** | 顧客（請求先）住所の郵便番号    | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::InvoiceCustomer.new(
  name: null,
  email: null,
  addr_country: null,
  addr_state: null,
  addr_city: null,
  addr_line_1: null,
  addr_line_2: null,
  addr_line_3: null,
  addr_post_code: null
)
```

