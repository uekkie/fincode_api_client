# FincodeApiClient::CustomerPaymentMethodRetrievingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | 決済手段ID | [optional] |
| **pay_type** | [**PaymentMethodPayType**](PaymentMethodPayType.md) | 決済手段の種別。\\ この決済手段の実体の種別を示します。  - &#x60;Card&#x60;: この決済手段はクレジットカード/デビットカード/プリペイドカードです。 - &#x60;Directdebit&#x60;: この決済手段は口座振替用口座情報です。  | [optional] |
| **customer_id** | **String** | この決済手段が紐づく顧客のID  | [optional] |
| **status** | [**PaymentMethodStatus**](PaymentMethodStatus.md) |  | [optional] |
| **redirect_url** | **String** | リダイレクトURL。\\ 購入者にこのURLを提供することで、ステータスが&#x60;AWAITING_CUSTOMER_ACTION&#x60; の決済手段を有効化するためのアクションを購入者にとらせることができます。 - 振替口座登録の場合： このURLにアクセスして振替口座登録の承認を行います。このURLには1度だけアクセスできます。 - カード登録の場合： このURLにアクセスして3Dセキュア認証を行います。  | [optional] |
| **redirect_url_accessed_flag** | **String** | リダイレクトURLアクセス済みフラグ\\ 購入者が&#x60;redirect_url&#x60;にアクセスしたことがあるかどうかを示すフラグです。  - &#x60;0&#x60;: 未アクセス - &#x60;1&#x60;: 1回以上アクセス済み  | [optional] |
| **return_url** | **String** | 加盟店戻りURL。（成功時）\\ 購入者がアクションを完了し、決済手段の登録に成功した際にリダイレクトされるURLです。\\ POSTメソッドでリダイレクトがされます。  | [optional] |
| **return_url_on_failure** | **String** | 加盟店戻りURL。（失敗時）\\ 購入者がアクションを完了し、決済手段の登録に失敗した際にリダイレクトされるURLです。\\ POSTメソッドでリダイレクトがされます。  | [optional] |
| **default_flag** | **String** | デフォルトフラグ。\\ この決済手段が決済実行やサブスクリプション登録などで決済手段IDを指定しない場合に自動的に使用する決済手段かどうかを示すフラグです。\\ 顧客に対して、決済種別ごとに必ず1つのデフォルト決済手段が存在します。（決済手段が1つも登録されていない場合を除く）  - &#x60;0&#x60;: デフォルト決済手段ではない - &#x60;1&#x60;: デフォルト決済手段  | [optional] |
| **client_field_1** | **String** | 加盟店自由項目  | [optional] |
| **client_field_2** | **String** | 加盟店自由項目  | [optional] |
| **client_field_3** | **String** | 加盟店自由項目  | [optional] |
| **delete_flag** | [**DeleteFlag**](DeleteFlag.md) |  | [optional] |
| **process_date** | **String** | 処理日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **created** | **String** | 作成日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **updated** | **String** | 更新日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **card** | [**PaymentMethodCard**](PaymentMethodCard.md) |  | [optional] |
| **directdebit** | [**PaymentMethodDirectdebit**](PaymentMethodDirectdebit.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::CustomerPaymentMethodRetrievingResponse.new(
  id: pm_**********************,
  pay_type: null,
  customer_id: c_********************,
  status: null,
  redirect_url: https://url.to/redirect/payer,
  redirect_url_accessed_flag: 1,
  return_url: https://url.to/return/payer/success,
  return_url_on_failure: https://url.to/return/payer/failure,
  default_flag: 1,
  client_field_1: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_2: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_3: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  delete_flag: null,
  process_date: 2022/05/16 23:59:59.999,
  created: 2022/05/16 23:59:59.999,
  updated: 2022/05/16 23:59:59.999,
  card: null,
  directdebit: null
)
```

