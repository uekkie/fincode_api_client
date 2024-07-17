# FincodeApiClient::PlanCreatingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | プランID  | [optional] |
| **plan_name** | **String** | プラン名  | [optional] |
| **description** | **String** | プランの説明  | [optional] |
| **shop_id** | **String** | ショップID  | [optional] |
| **amount** | **Integer** | 利用金額  | [optional] |
| **tax** | **Integer** | 税送料  | [optional] |
| **total_amount** | **Integer** | 合計金額\\ 利用金額と税送料の合計金額です。  | [optional] |
| **interval_pattern** | **String** | 課金間隔  - &#x60;month&#x60;：月 - &#x60;year&#x60;：年  | [optional] |
| **interval_count** | **Float** | 課金間隔数  - &#x60;1&#x60;：月次／年次の課金 - &#x60;2&#x60;：2ヶ月に1回の課金 - &#x60;3&#x60;：3ヶ月に1回の課金 - &#x60;6&#x60;：6ヶ月に1回の課金  | [optional] |
| **used_flag** | **String** | 利用済みフラグ\\ このプランを用いたサブスクリプション（解約含む）が1つ以上存在する場合&#x60;1&#x60;を返し、存在しない場合&#x60;0&#x60;を返します。  - &#x60;0&#x60;：このプランを用いたサブスクリプションはまだ存在しない - &#x60;1&#x60;：このプランを用いたサブスクリプションが存在する  | [optional] |
| **delete_flag** | [**DeleteFlag**](DeleteFlag.md) |  | [optional] |
| **created** | **String** | 作成日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **updated** | **String** | 更新日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PlanCreatingResponse.new(
  id: pl_*********************,
  plan_name: Basic Plan,
  description: Basic Plan Description,
  shop_id: s_***********,
  amount: 1000,
  tax: 100,
  total_amount: 1100,
  interval_pattern: month,
  interval_count: null,
  used_flag: 1,
  delete_flag: null,
  created: 2022/05/16 23:59:59.999,
  updated: 2022/05/16 23:59:59.999
)
```

