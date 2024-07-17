# FincodeApiClient::CustomerUpdatingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | 顧客の名前  | [optional] |
| **email** | **String** | 顧客のメールアドレス\\ 形式： RFC5322  | [optional] |
| **phone_cc** | **String** | 顧客の電話番号の国コード（&#x60;+&#x60;は含まない）  | [optional] |
| **phone_no** | **String** | 顧客の電話番号  | [optional] |
| **addr_country** | **String** | 顧客の住所の国コード\\ 形式： ISO 3166-1 numeric  | [optional] |
| **addr_state** | **String** | 顧客の住所の州コードまたは都道府県コード\\ 参照： [国土交通省 都道府県コード](https://nlftp.mlit.go.jp/ksj/gml/codelist/PrefCd.html)  | [optional] |
| **addr_city** | **String** | 顧客の住所の都市名  | [optional] |
| **addr_line_1** | **String** | 顧客の住所の番地・区画  | [optional] |
| **addr_line_2** | **String** | 顧客の住所の建物名・部屋番号  | [optional] |
| **addr_line_3** | **String** | 顧客の住所 その他  | [optional] |
| **addr_post_code** | **String** | 顧客の住所の郵便番号  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::CustomerUpdatingRequest.new(
  name: John Doe,
  email: john@example.com,
  phone_cc: 81,
  phone_no: 09012345678,
  addr_country: 392,
  addr_state: 13,
  addr_city: 渋谷区,
  addr_line_1: 道玄坂1-14-6,
  addr_line_2: ヒューマックス渋谷ビル 7F,
  addr_line_3: GMOイプシロン株式会社,
  addr_post_code: 150-0043
)
```

