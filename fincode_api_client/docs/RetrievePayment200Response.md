# FincodeApiClient::RetrievePayment200Response

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'fincode_api_client'

FincodeApiClient::RetrievePayment200Response.openapi_one_of
# =>
# [
#   :'PaymentApplePayRetrievingResponse',
#   :'PaymentCardRetrievingResponse',
#   :'PaymentDirectDebitRetrievingResponse',
#   :'PaymentGooglePayRetrievingResponse',
#   :'PaymentKonbiniRetrievingResponse',
#   :'PaymentPayPayRetrievingResponse',
#   :'PaymentVirtualAccountRetrievingResponse'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'fincode_api_client'

FincodeApiClient::RetrievePayment200Response.build(data)
# => #<PaymentApplePayRetrievingResponse:0x00007fdd4aab02a0>

FincodeApiClient::RetrievePayment200Response.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PaymentApplePayRetrievingResponse`
- `PaymentCardRetrievingResponse`
- `PaymentDirectDebitRetrievingResponse`
- `PaymentGooglePayRetrievingResponse`
- `PaymentKonbiniRetrievingResponse`
- `PaymentPayPayRetrievingResponse`
- `PaymentVirtualAccountRetrievingResponse`
- `nil` (if no type matches)

