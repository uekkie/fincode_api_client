# FincodeApiClient::CancelPayment200Response

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'fincode_api_client'

FincodeApiClient::CancelPayment200Response.openapi_one_of
# =>
# [
#   :'PaymentApplePayCancelingResponse',
#   :'PaymentCardCancelingResponse',
#   :'PaymentDirectDebitCancelingResponse',
#   :'PaymentGooglePayCancelingResponse',
#   :'PaymentKonbiniCancelingResponse',
#   :'PaymentPayPayCancelingResponse',
#   :'PaymentVirtualAccountCancelingResponse'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'fincode_api_client'

FincodeApiClient::CancelPayment200Response.build(data)
# => #<PaymentApplePayCancelingResponse:0x00007fdd4aab02a0>

FincodeApiClient::CancelPayment200Response.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PaymentApplePayCancelingResponse`
- `PaymentCardCancelingResponse`
- `PaymentDirectDebitCancelingResponse`
- `PaymentGooglePayCancelingResponse`
- `PaymentKonbiniCancelingResponse`
- `PaymentPayPayCancelingResponse`
- `PaymentVirtualAccountCancelingResponse`
- `nil` (if no type matches)

