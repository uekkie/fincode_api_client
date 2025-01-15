# FincodeApiClient::CustomerPaymentMethodListRetrievingResponseListInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | 決済手段ID  | [optional] |
| **pay_type** | **String** | - &#x60;Directdebit&#x60;   ※ 現時点では&#x60;Directdebit&#x60;（口座振替）のみ指定可能です。カード情報を取得する場合は カード取得API を使用します。  | [optional] |
| **customer_id** | **String** | この決済手段が紐づく顧客のID  | [optional] |
| **status** | [**PaymentMethodStatus**](PaymentMethodStatus.md) |  | [optional] |
| **redirect_url** | **String** | リダイレクトURL \\ 購入者をこのURLへリダイレクトさせ、ステータスがAWAITING_CUSTOMER_ACTION の決済手段を有効化するための後続の処理へ誘導してください。   - 振替口座登録の場合： このURLにアクセスして振替口座登録の承認を行います。このURLには1度だけアクセスできます。 - カード登録の場合： このURLにアクセスして3Dセキュア認証を行います。  | [optional] |
| **redirect_url_accessed_flag** | [**RedirectUrlAccessedFlag**](RedirectUrlAccessedFlag.md) |  | [optional] |
| **return_url** | **String** | 加盟店戻りURL（成功時）\\ 購入者がアクションを完了し、決済手段の登録に成功した際にリダイレクトされるURLです。\\ POSTメソッドでリダイレクトがされます。  | [optional] |
| **default_flag** | [**PropertiesDefaultFlag**](PropertiesDefaultFlag.md) |  | [optional] |
| **client_field_1** | **Object** |  | [optional] |
| **client_field_2** | **Object** |  | [optional] |
| **client_field_3** | **Object** |  | [optional] |
| **delete_flag** | [**PropertiesDeleteFlag**](PropertiesDeleteFlag.md) |  | [optional] |
| **process_date** | **Object** |  | [optional] |
| **created** | **Object** |  | [optional] |
| **updated** | **Object** |  | [optional] |
| **directdebit** | [**Directdebit**](Directdebit.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::CustomerPaymentMethodListRetrievingResponseListInner.new(
  id: pm_**********************,
  pay_type: Directdebit,
  customer_id: c_********************,
  status: null,
  redirect_url: https://url.to/redirect/payer,
  redirect_url_accessed_flag: null,
  return_url: https://url.to/return/payer/success,
  default_flag: null,
  client_field_1: null,
  client_field_2: null,
  client_field_3: null,
  delete_flag: null,
  process_date: null,
  created: null,
  updated: null,
  directdebit: null
)
```

