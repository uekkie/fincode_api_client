# FincodeApiClient::CreatePaymentRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'fincode_api_client'

FincodeApiClient::CreatePaymentRequest.openapi_one_of
# =>
# [
#   :'PaymentApplePayCreatingRequest',
#   :'PaymentCardCreatingRequest',
#   :'PaymentDirectDebitCreatingRequest',
#   :'PaymentKonbiniCreatingRequest',
#   :'PaymentPayPayCreatingRequest',
#   :'PaymentVirtualAccountCreatingRequest'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'fincode_api_client'

FincodeApiClient::CreatePaymentRequest.build(data)
# => #<PaymentApplePayCreatingRequest:0x00007fdd4aab02a0>

FincodeApiClient::CreatePaymentRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PaymentApplePayCreatingRequest`
- `PaymentCardCreatingRequest`
- `PaymentDirectDebitCreatingRequest`
- `PaymentKonbiniCreatingRequest`
- `PaymentPayPayCreatingRequest`
- `PaymentVirtualAccountCreatingRequest`
- `nil` (if no type matches)

