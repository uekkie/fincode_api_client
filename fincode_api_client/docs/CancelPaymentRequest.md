# FincodeApiClient::CancelPaymentRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'fincode_api_client'

FincodeApiClient::CancelPaymentRequest.openapi_one_of
# =>
# [
#   :'PaymentApplePayCancelingRequest',
#   :'PaymentCardCancelingRequest',
#   :'PaymentDirectDebitCancelingRequest',
#   :'PaymentGooglePayCancelingRequest',
#   :'PaymentKonbiniCancelingRequest',
#   :'PaymentPayPayCancelingRequest',
#   :'PaymentVirtualAccountCancelingRequest'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'fincode_api_client'

FincodeApiClient::CancelPaymentRequest.build(data)
# => #<PaymentApplePayCancelingRequest:0x00007fdd4aab02a0>

FincodeApiClient::CancelPaymentRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PaymentApplePayCancelingRequest`
- `PaymentCardCancelingRequest`
- `PaymentDirectDebitCancelingRequest`
- `PaymentGooglePayCancelingRequest`
- `PaymentKonbiniCancelingRequest`
- `PaymentPayPayCancelingRequest`
- `PaymentVirtualAccountCancelingRequest`
- `nil` (if no type matches)

