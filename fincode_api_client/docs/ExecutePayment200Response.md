# FincodeApiClient::ExecutePayment200Response

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'fincode_api_client'

FincodeApiClient::ExecutePayment200Response.openapi_one_of
# =>
# [
#   :'PaymentApplePayExecutingResponse',
#   :'PaymentCardExecutingResponse',
#   :'PaymentDirectDebitExecutingResponse',
#   :'PaymentGooglePayExecutingResponse',
#   :'PaymentKonbiniExecutingResponse',
#   :'PaymentPayPayExecutingResponse',
#   :'PaymentVirtualAccountExecutingResponse'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'fincode_api_client'

FincodeApiClient::ExecutePayment200Response.build(data)
# => #<PaymentApplePayExecutingResponse:0x00007fdd4aab02a0>

FincodeApiClient::ExecutePayment200Response.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PaymentApplePayExecutingResponse`
- `PaymentCardExecutingResponse`
- `PaymentDirectDebitExecutingResponse`
- `PaymentGooglePayExecutingResponse`
- `PaymentKonbiniExecutingResponse`
- `PaymentPayPayExecutingResponse`
- `PaymentVirtualAccountExecutingResponse`
- `nil` (if no type matches)

