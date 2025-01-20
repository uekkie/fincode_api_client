# FincodeApiClient::ExecutePaymentRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'fincode_api_client'

FincodeApiClient::ExecutePaymentRequest.openapi_one_of
# =>
# [
#   :'PaymentApplePayExecutingRequest',
#   :'PaymentCardExecutingRequest',
#   :'PaymentDirectDebitExecutingRequest',
#   :'PaymentGooglePayExecutingRequest',
#   :'PaymentKonbiniExecutingRequest',
#   :'PaymentPayPayExecutingRequest',
#   :'PaymentVirtualAccountExecutingRequest'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'fincode_api_client'

FincodeApiClient::ExecutePaymentRequest.build(data)
# => #<PaymentApplePayExecutingRequest:0x00007fdd4aab02a0>

FincodeApiClient::ExecutePaymentRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PaymentApplePayExecutingRequest`
- `PaymentCardExecutingRequest`
- `PaymentDirectDebitExecutingRequest`
- `PaymentGooglePayExecutingRequest`
- `PaymentKonbiniExecutingRequest`
- `PaymentPayPayExecutingRequest`
- `PaymentVirtualAccountExecutingRequest`
- `nil` (if no type matches)

