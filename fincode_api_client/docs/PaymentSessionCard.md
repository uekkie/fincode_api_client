# FincodeApiClient::PaymentSessionCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_code** | [**CardPaymentSessionJobCode**](CardPaymentSessionJobCode.md) |  | [optional][default to &#39;AUTH&#39;] |
| **tds_type** | [**TdsType**](TdsType.md) |  | [optional] |
| **td_tenant_name** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 加盟店名。\\ 3Dセキュア認証の際に表示されるショップ名や加盟店名を指定できます。\\ 使用可能な文字は以下の通りです。 - 半角英数 - 半角記号： !\&quot;#$%&amp;&#39;()*+,-./:;&lt;&#x3D;&gt;?@[\\]&#x60;^_{|}~ - 半角スペース  未指定の場合、 カード決済の契約時にfincodeが下記の形式に従って設定した値が自動的に使用されます。\\ \\ 形式：&#x60;{{ショップID}}-{{英数字からなる固定値}}&#x60;  | [optional] |
| **tds2_type** | [**Tds2Type**](Tds2Type.md) |  | [optional] |
| **item_code** | **String** | 商品コード\\ ※ 通常は&#x60;null&#x60;  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentSessionCard.new(
  job_code: null,
  tds_type: null,
  td_tenant_name: s_***********-ab123,
  tds2_type: null,
  item_code: null
)
```

