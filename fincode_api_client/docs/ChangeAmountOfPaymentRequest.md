# FincodeApiClient::ChangeAmountOfPaymentRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'fincode_api_client'

FincodeApiClient::ChangeAmountOfPaymentRequest.openapi_one_of
# =>
# [
#   :'PaymentCardChangingAmountRequest',
#   :'PaymentDirectDebitChangingAmountRequest',
#   :'PaymentGooglePayChangingAmountRequest',
#   :'PaymentPayPayChangingAmountRequest'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'fincode_api_client'

FincodeApiClient::ChangeAmountOfPaymentRequest.build(data)
# => #<PaymentCardChangingAmountRequest:0x00007fdd4aab02a0>

FincodeApiClient::ChangeAmountOfPaymentRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PaymentCardChangingAmountRequest`
- `PaymentDirectDebitChangingAmountRequest`
- `PaymentGooglePayChangingAmountRequest`
- `PaymentPayPayChangingAmountRequest`
- `nil` (if no type matches)

