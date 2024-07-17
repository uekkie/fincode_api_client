# FincodeApiClient::PaymentDirectDebitCreatingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | オーダーID\\ 決済情報のIDです。  | [optional] |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ この決済で利用する決済手段です。  - &#x60;Directdebit&#x60;: 口座振替  |  |
| **amount** | **String** | 利用金額\\ &#x60;tax&#x60;との合計値が決済手段ごとに定められた決済金額の範囲内に収まる必要があります。\\ 参照： [口座振替 &gt; 制限事項 &gt; 利用可能な金額](https://docs.fincode.jp/payment/directdebit/restriction)  |  |
| **tax** | **String** | 税送料\\ &#x60;amount&#x60;との合計値が決済手段ごとに定められた決済金額の範囲内に収まる必要があります。\\ 参照： [口座振替 &gt; 制限事項 &gt; 利用可能な金額](https://docs.fincode.jp/payment/directdebit/restriction)  | [optional] |
| **remarks** | **String** | ご利用明細表示内容  - フォーマット：半角英数カナ／全角英数カナ／一部の記号／半角全角スペース - デフォルト： &#x60;ショップ名カナの先頭9文字&#x60;  ※ 利用可能な記号  - 半角：&#x60;.&#x60;、&#x60;(&#x60;、&#x60;)&#x60;、&#x60;–&#x60; - 全角：&#x60;．&#x60;、&#x60;（&#x60;、&#x60;）&#x60;、&#x60;ー&#x60;  | [optional] |
| **client_field_1** | **String** | 加盟店自由項目 1\\ 任意の値を挿入し、決済情報に保存できます。  | [optional] |
| **client_field_2** | **String** | 加盟店自由項目 2  | [optional] |
| **client_field_3** | **String** | 加盟店自由項目 3  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentDirectDebitCreatingRequest.new(
  id: o_**********************,
  pay_type: null,
  amount: 1000,
  tax: 100,
  remarks: フィンコードショッ,
  client_field_1: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_2: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_3: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
)
```

