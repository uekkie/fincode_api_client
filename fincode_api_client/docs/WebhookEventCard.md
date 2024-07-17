# FincodeApiClient::WebhookEventCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **String** | ショップID  | [optional] |
| **customer_id** | **String** | 顧客ID  | [optional] |
| **customer_group_id** | **String** | 顧客情報共有グループID\\ プラットフォームショップにおいて顧客情報が共有されている場合、顧客が所属する共有グループのIDです。  | [optional] |
| **card_id** | **String** | カードID  | [optional] |
| **default_flag** | [**DefaultFlag**](DefaultFlag.md) |  | [optional] |
| **card_no_display** | **Object** |  | [optional] |
| **expire_display** | **Object** |  | [optional] |
| **process_date** | **String** | 処理日時  | [optional] |
| **process_type** | **String** | 処理タイプ  - &#x60;I&#x60;: 登録 - &#x60;U&#x60;: 更新  | [optional] |
| **pay_type** | **String** | 決済種別  | [optional] |
| **forward** | **String** | 仕向け先  | [optional] |
| **event** | [**FincodeEvent**](FincodeEvent.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::WebhookEventCard.new(
  shop_id: s_***********,
  customer_id: c_**********************,
  customer_group_id: cg_**********,
  card_id: cs_**********************,
  default_flag: null,
  card_no_display: null,
  expire_display: null,
  process_date: 2022/01/01 12:34:56.789,
  process_type: null,
  pay_type: null,
  forward: 12345,
  event: null
)
```

