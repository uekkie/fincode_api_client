# FincodeApiClient::RetrievePaymentList200Response

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'fincode_api_client'

FincodeApiClient::RetrievePaymentList200Response.openapi_one_of
# =>
# [
#   :'PaymentApplePayListRetrievingResponse',
#   :'PaymentCardListRetrievingResponse',
#   :'PaymentDirectDebitListRetrievingResponse',
#   :'PaymentGooglePayListRetrievingResponse',
#   :'PaymentKonbiniListRetrievingResponse',
#   :'PaymentPayPayListRetrievingResponse',
#   :'PaymentVirtualAccountListRetrievingResponse'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'fincode_api_client'

FincodeApiClient::RetrievePaymentList200Response.build(data)
# => #<PaymentApplePayListRetrievingResponse:0x00007fdd4aab02a0>

FincodeApiClient::RetrievePaymentList200Response.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PaymentApplePayListRetrievingResponse`
- `PaymentCardListRetrievingResponse`
- `PaymentDirectDebitListRetrievingResponse`
- `PaymentGooglePayListRetrievingResponse`
- `PaymentKonbiniListRetrievingResponse`
- `PaymentPayPayListRetrievingResponse`
- `PaymentVirtualAccountListRetrievingResponse`
- `nil` (if no type matches)

