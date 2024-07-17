# FincodeApiClient::RetrievePaymentListParameter

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'fincode_api_client'

FincodeApiClient::RetrievePaymentListParameter.openapi_one_of
# =>
# [
#   :'ApplePay',
#   :'PayPay',
#   :'RetrievePaymentListParameterOneOf',
#   :'RetrievePaymentListParameterOneOf1',
#   :'RetrievePaymentListParameterOneOf2',
#   :'RetrievePaymentListParameterOneOf3'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'fincode_api_client'

FincodeApiClient::RetrievePaymentListParameter.build(data)
# => #<ApplePay:0x00007fdd4aab02a0>

FincodeApiClient::RetrievePaymentListParameter.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ApplePay`
- `PayPay`
- `RetrievePaymentListParameterOneOf`
- `RetrievePaymentListParameterOneOf1`
- `RetrievePaymentListParameterOneOf2`
- `RetrievePaymentListParameterOneOf3`
- `nil` (if no type matches)
