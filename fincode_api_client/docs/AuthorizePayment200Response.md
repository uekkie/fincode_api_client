# FincodeApiClient::AuthorizePayment200Response

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'fincode_api_client'

FincodeApiClient::AuthorizePayment200Response.openapi_one_of
# =>
# [
#   :'PaymentCardReauthorizingResponse',
#   :'PaymentGooglePayReauthorizingResponse'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'fincode_api_client'

FincodeApiClient::AuthorizePayment200Response.build(data)
# => #<PaymentCardReauthorizingResponse:0x00007fdd4aab02a0>

FincodeApiClient::AuthorizePayment200Response.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PaymentCardReauthorizingResponse`
- `PaymentGooglePayReauthorizingResponse`
- `nil` (if no type matches)

