# FincodeApiClient::PaymentSessionCreatingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | リダイレクト型決済URL ID  | [optional] |
| **link_url** | **String** | リダイレクト型決済URL  | [optional] |
| **success_url** | **String** | 成功時リダイレクトURL\\ &#x60;link_url&#x60;上で決済に成功すると、fincodeはこのURLにPOSTメソッドでリダイレクトします。  | [optional] |
| **cancel_url** | **String** | キャンセル時リダイレクトURL\\ &#x60;link_url&#x60;上で決済がキャンセルされると、fincodeはこのURLにPOSTメソッドでリダイレクトします。  | [optional] |
| **status** | [**PaymentSessionStatus**](PaymentSessionStatus.md) |  | [optional] |
| **expire** | **String** | リダイレクト型決済URL 有効期限\\ 形式： &#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **shop_service_name** | **String** | ショップ／サービス名\\ 決済URL上で表示されるショップおよびサービスの名称です。\\ \\ デフォルトでは本番環境申請時に登録した「明細書表記」の値が設定されます。  | [optional] |
| **guide_mail_send_flag** | **String** | 決済メール 送信フラグ\\ リダイレクト型決済URLをfincodeからのメール送信機能で送信したかどうかを示します。  - &#x60;0&#x60;：送信しなかった（デフォルト） - &#x60;1&#x60;：送信した  | [optional] |
| **receiver_mail** | **String** | 決済メール 送信先メールアドレス\\ リダイレクト型決済URLをfincodeからのメール送信機能で送信する場合の送信先メールアドレスです。  | [optional] |
| **mail_customer_name** | **String** | 購入メール 購入者の名前\\ リダイレクト型決済URLをfincodeからのメール送信機能で送信する場合のメール中で用いられる購入者の名前です。\\ \\ fincodeが提供するデフォルトのメールテンプレートでは敬称がテンプレート側に含まれています。  | [optional] |
| **thanks_mail_send_flag** | **String** | 完了メール 送信フラグ\\ 決済が完了した際に購入者に完了メールを送信するかどうかを示します。  - &#x60;0&#x60;：送信しない（デフォルト） - &#x60;1&#x60;：送信する  | [optional] |
| **shop_mail_template_id** | **String** | メールテンプレートID\\ メールテンプレートIDが設定されている場合、リダイレクト型決済URLの送信先メールアドレスに送信されるメールのテンプレートが変更されます。\\ \\ fincodeが提供するデフォルトのメールテンプレートを使用する場合は&#x60;null&#x60;を設定します。  | [optional] |
| **transaction** | [**PaymentSessionTransaction**](PaymentSessionTransaction.md) |  | [optional] |
| **card** | [**PaymentSessionCard**](PaymentSessionCard.md) | カード決済に関する情報  | [optional] |
| **konbini** | [**PaymentSessionKonbini**](PaymentSessionKonbini.md) | コンビニ決済に関する情報  | [optional] |
| **paypay** | [**PaymentSessionPayPay**](PaymentSessionPayPay.md) | PayPayに関する情報  | [optional] |
| **created** | **String** | 作成日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **updated** | **String** | 更新日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentSessionCreatingResponse.new(
  id: lk_**********************,
  link_url: https://secure.test.fincode.jp/v1/links/lk_**********************,
  success_url: https://your-service.example.com/success,
  cancel_url: https://your-service.example.com/cancel,
  status: null,
  expire: 2022/02/31 23:59:59.999,
  shop_service_name: Your Service,
  guide_mail_send_flag: 1,
  receiver_mail: receiver-email@example.com,
  mail_customer_name: 買物 太郎,
  thanks_mail_send_flag: null,
  shop_mail_template_id: null,
  transaction: null,
  card: null,
  konbini: null,
  paypay: null,
  created: 2022/05/16 23:59:59.999,
  updated: 2022/05/16 23:59:59.999
)
```

