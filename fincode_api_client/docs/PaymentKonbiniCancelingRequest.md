# FincodeApiClient::PaymentKonbiniCancelingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ この決済で利用する決済手段です。  - &#x60;Konbini&#x60;: コンビニ決済  |  |
| **access_id** | **String** | 取引ID  |  |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentKonbiniCancelingRequest.new(
  pay_type: null,
  access_id: a_**********************
)
```

