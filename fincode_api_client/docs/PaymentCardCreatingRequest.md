# FincodeApiClient::PaymentCardCreatingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | オーダーID\\ 決済情報のIDです。  | [optional] |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ この決済で利用する決済手段です。  - &#x60;Card&#x60;: カード  |  |
| **job_code** | [**CardPaymentJobCode**](CardPaymentJobCode.md) |  |  |
| **amount** | **String** | 利用金額\\ &#x60;tax&#x60;との合計値が決済手段ごとに定められた決済金額の範囲内に収まる必要があります。\\ 参照： [カード決済 &gt; 制限事項 &gt; 利用可能な金額](https://docs.fincode.jp/payment/restriction)  | [optional] |
| **tax** | **String** | 税送料\\ &#x60;amount&#x60;との合計値が決済手段ごとに定められた決済金額の範囲内に収まる必要があります。\\ 参照： [カード決済 &gt; 制限事項 &gt; 利用可能な金額](https://docs.fincode.jp/payment/restriction)  | [optional] |
| **tds_type** | [**TdsType**](TdsType.md) |  | [optional] |
| **tds2_type** | [**Tds2Type**](Tds2Type.md) |  | [optional] |
| **td_tenant_name** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 加盟店名。\\ 3Dセキュア認証の際に表示されるショップ名や加盟店名を指定できます。\\ 未指定の場合、 カード決済の契約時にfincodeが下記の形式に従って設定した値が自動的に使用されます。\\ \\ 形式：&#x60;{{ショップID}}-{{英数字からなる固定値}}&#x60;  | [optional] |
| **client_field_1** | **String** | 加盟店自由項目 1\\ 任意の値を挿入し、決済情報に保存できます。  | [optional] |
| **client_field_2** | **String** | 加盟店自由項目 2  | [optional] |
| **client_field_3** | **String** | 加盟店自由項目 3  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentCardCreatingRequest.new(
  id: o_**********************,
  pay_type: null,
  job_code: null,
  amount: 1000,
  tax: 100,
  tds_type: null,
  tds2_type: null,
  td_tenant_name: s_***********-ab123,
  client_field_1: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_2: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_3: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
)
```

