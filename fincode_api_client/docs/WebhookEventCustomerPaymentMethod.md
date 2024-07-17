# FincodeApiClient::WebhookEventCustomerPaymentMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **String** | ショップID  | [optional] |
| **customer_id** | **String** | 顧客ID  | [optional] |
| **payment_method_id** | **String** | 決済手段ID | [optional] |
| **pay_type** | [**PaymentMethodPayType**](PaymentMethodPayType.md) |  | [optional] |
| **status** | [**PaymentMethodStatus**](PaymentMethodStatus.md) |  | [optional] |
| **client_field_1** | **String** | 加盟店自由項目 1  | [optional] |
| **client_field_2** | **String** | 加盟店自由項目 2  | [optional] |
| **client_field_3** | **String** | 加盟店自由項目 3  | [optional] |
| **application_type** | [**DirectDebitApplicationType**](DirectDebitApplicationType.md) |  | [optional] |
| **event** | [**FincodeEvent**](FincodeEvent.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::WebhookEventCustomerPaymentMethod.new(
  shop_id: s_***********,
  customer_id: c_**********************,
  payment_method_id: pm_**********************,
  pay_type: null,
  status: null,
  client_field_1: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_2: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_3: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  application_type: null,
  event: null
)
```

