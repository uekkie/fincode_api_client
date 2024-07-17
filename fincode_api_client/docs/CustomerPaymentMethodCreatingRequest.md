# FincodeApiClient::CustomerPaymentMethodCreatingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**PaymentMethodPayType**](PaymentMethodPayType.md) |  |  |
| **default_flag** | [**PropertiesDefaultFlag**](PropertiesDefaultFlag.md) |  |  |
| **return_url** | **String** | 加盟店戻りURL。（成功時）\\ 購入者がアクションを完了し、決済手段の登録に成功した際にリダイレクトされるURLです。\\ POSTメソッドでリダイレクトがされます。  | [optional] |
| **return_url_on_failure** | **String** | 加盟店戻りURL。（失敗時）\\ 購入者がアクションを完了し、決済手段の登録に失敗した際にリダイレクトされるURLです。\\ POSTメソッドでリダイレクトがされます。  | [optional] |
| **client_field_1** | **Object** | 加盟店自由項目 1  | [optional] |
| **client_field_2** | **Object** | 加盟店自由項目 1  | [optional] |
| **client_field_3** | **Object** | 加盟店自由項目 1  | [optional] |
| **card** | [**CustomerPaymentMethodCreatingRequestCard**](CustomerPaymentMethodCreatingRequestCard.md) |  | [optional] |
| **directdebit** | [**CustomerPaymentMethodCreatingRequestDirectdebit**](CustomerPaymentMethodCreatingRequestDirectdebit.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::CustomerPaymentMethodCreatingRequest.new(
  pay_type: null,
  default_flag: null,
  return_url: https://url.to/return/payer/success,
  return_url_on_failure: https://url.to/return/payer/failure,
  client_field_1: null,
  client_field_2: null,
  client_field_3: null,
  card: null,
  directdebit: null
)
```

