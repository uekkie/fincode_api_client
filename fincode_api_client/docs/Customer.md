# FincodeApiClient::Customer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | 顧客ID  | [optional] |
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
| **card_registration** | **String** | 決済手段（カード）登録状況  - &#x60;0&#x60;: 未登録 - &#x60;1&#x60;: 1件以上のカードが登録済み  | [optional] |
| **directdebit_registration** | **String** | 決済手段（口座振替）登録状況  - &#x60;0&#x60;: 未登録 - &#x60;1&#x60;: 1件以上の振替用口座が登録済み  | [optional] |
| **created** | **String** | 作成日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **updated** | **String** | 更新日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::Customer.new(
  id: c_**********************,
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
  addr_post_code: 150-0043,
  card_registration: 1,
  directdebit_registration: 1,
  created: 2022/05/16 23:59:59.999,
  updated: 2022/05/16 23:59:59.999
)
```

