# FincodeApiClient::PaymentVirtualAccountCancelingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ この決済で利用する決済手段です。  - &#x60;Virtualaccount&#x60;: 銀行振込  |  |
| **access_id** | **String** | 取引ID  |  |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentVirtualAccountCancelingRequest.new(
  pay_type: null,
  access_id: a_**********************
)
```

