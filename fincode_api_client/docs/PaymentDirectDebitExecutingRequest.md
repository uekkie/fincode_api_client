# FincodeApiClient::PaymentDirectDebitExecutingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ この決済で利用する決済手段です。  - &#x60;Directdebit&#x60;: 口座振替  |  |
| **access_id** | **String** | 取引ID  |  |
| **customer_id** | **String** | 顧客ID\\ 購入者となる顧客のIDです。  |  |
| **payment_method_id** | **String** | 決済手段ID\\ この決済に使用する決済手段（口座振替用口座）のIDです。指定しない場合、デフォルト決済手段が使用されます。  | [optional] |
| **target_date** | **String** | 振替指定日\\ 振替を行う日を指定します。下記の日付を指定できます。  - &#x60;yyyy/MM/05&#x60;: 5日 - &#x60;yyyy/MM/06&#x60;: 6日 - &#x60;yyyy/MM/23&#x60;: 23日 - &#x60;yyyy/MM/27&#x60;: 27日  形式： &#x60;yyyy/MM/dd&#x60;\\ 実際の振替は営業日に行われるため、必ずしも指定した日付に引き落としはされません。\\ 詳細は[Docs &gt; 口座振替年間スケジュール](https://docs.fincode.jp/payment/directdebit/schedule)の「振替日」の列で確認できます。  |  |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentDirectDebitExecutingRequest.new(
  pay_type: null,
  access_id: a_**********************,
  customer_id: c_**********************,
  payment_method_id: pm_**********************,
  target_date: 2022/05/06
)
```

