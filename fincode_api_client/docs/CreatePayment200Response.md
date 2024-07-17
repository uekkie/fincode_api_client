# FincodeApiClient::CreatePayment200Response

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'fincode_api_client'

FincodeApiClient::CreatePayment200Response.openapi_one_of
# =>
# [
#   :'PaymentApplePayCreatingResponse',
#   :'PaymentCardCreatingResponse',
#   :'PaymentDirectDebitCreatingResponse',
#   :'PaymentKonbiniCreatingResponse',
#   :'PaymentPayPayCreatingResponse',
#   :'PaymentVirtualAccountCreatingResponse'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'fincode_api_client'

FincodeApiClient::CreatePayment200Response.build(data)
# => #<PaymentApplePayCreatingResponse:0x00007fdd4aab02a0>

FincodeApiClient::CreatePayment200Response.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PaymentApplePayCreatingResponse`
- `PaymentCardCreatingResponse`
- `PaymentDirectDebitCreatingResponse`
- `PaymentKonbiniCreatingResponse`
- `PaymentPayPayCreatingResponse`
- `PaymentVirtualAccountCreatingResponse`
- `nil` (if no type matches)

