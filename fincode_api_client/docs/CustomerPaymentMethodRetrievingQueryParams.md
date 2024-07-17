# FincodeApiClient::CustomerPaymentMethodRetrievingQueryParams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**PaymentMethodPayType**](PaymentMethodPayType.md) | 決済種別\\ &lt;span class&#x3D;\&quot;smallText\&quot;&gt; ※ 現時点では&#x60;Directdebit&#x60;（口座振替）のみ指定可能です。カード情報を取得する場合は カード取得API を使用します。 &lt;/span&gt;  |  |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::CustomerPaymentMethodRetrievingQueryParams.new(
  pay_type: null
)
```

