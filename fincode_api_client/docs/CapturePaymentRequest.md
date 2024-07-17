# FincodeApiClient::CapturePaymentRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'fincode_api_client'

FincodeApiClient::CapturePaymentRequest.openapi_one_of
# =>
# [
#   :'PaymentApplePayCapturingRequest',
#   :'PaymentCardCapturingRequest',
#   :'PaymentPayPayCapturingRequest'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'fincode_api_client'

FincodeApiClient::CapturePaymentRequest.build(data)
# => #<PaymentApplePayCapturingRequest:0x00007fdd4aab02a0>

FincodeApiClient::CapturePaymentRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PaymentApplePayCapturingRequest`
- `PaymentCardCapturingRequest`
- `PaymentPayPayCapturingRequest`
- `nil` (if no type matches)

