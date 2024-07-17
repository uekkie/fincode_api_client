# FincodeApiClient::PaymentSessionCreatingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction** | [**PaymentSessionCreatingRequestTransaction**](PaymentSessionCreatingRequestTransaction.md) |  |  |
| **card** | [**PaymentSessionCreatingRequestCard**](PaymentSessionCreatingRequestCard.md) |  | [optional] |
| **konbini** | [**PaymentSessionCreatingRequestKonbini**](PaymentSessionCreatingRequestKonbini.md) |  | [optional] |
| **paypay** | [**PaymentSessionCreatingRequestPaypay**](PaymentSessionCreatingRequestPaypay.md) |  | [optional] |
| **success_url** | **String** | 成功時リダイレクトURL\\ &#x60;link_url&#x60;上で決済に成功すると、fincodeはこのURLにPOSTメソッドでリダイレクトします。  | [optional] |
| **cancel_url** | **String** | キャンセル時リダイレクトURL\\ &#x60;link_url&#x60;上で決済がキャンセルされると、fincodeはこのURLにPOSTメソッドでリダイレクトします。  | [optional] |
| **expire** | **String** | リダイレクト型決済URL 有効期限\\ 形式： &#x60;yyyy/MM/dd HH.MM.SS.SSS&#x60;  - デフォルト： URL発行時点から24時間 - 最長： 30日 - 最短： 5分  | [optional] |
| **shop_service_name** | **String** | ショップ／サービス名\\ 決済URL上で表示されるショップおよびサービスの名称です。\\ \\ デフォルトでは本番環境申請時に登録した「明細書表記」の値が設定されます。  | [optional] |
| **guide_mail_send_flag** | [**GuideMailSendFlag**](GuideMailSendFlag.md) | 決済メール 送信フラグ\\ リダイレクト型決済URLを添付したメールをfincodeから送信するかどうかを指定します。  - &#x60;0&#x60;：送信しない（デフォルト） - &#x60;1&#x60;：送信する  | [optional] |
| **receiver_mail** | **String** | 決済メール 送信先メールアドレス\\ リダイレクト型決済URLをfincodeからのメール送信機能で送信する場合の送信先メールアドレスです。  | [optional] |
| **mail_customer_name** | **String** | 購入メール 購入者の名前\\ リダイレクト型決済URLをfincodeからのメール送信機能で送信する場合のメール中で用いられる購入者の名前です。\\ \\ fincodeが提供するデフォルトのメールテンプレートでは敬称がテンプレート側に含まれています。  | [optional] |
| **thanks_mail_send_flag** | [**ThanksMailSendFlag**](ThanksMailSendFlag.md) |  | [optional] |
| **shop_mail_template_id** | **String** | メールテンプレートID\\ メールテンプレートIDが設定されている場合、リダイレクト型決済URLの送信先メールアドレスに送信されるメールのテンプレートが変更されます。\\ \\ fincodeが提供するデフォルトのメールテンプレートを使用する場合は&#x60;null&#x60;を設定します。  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentSessionCreatingRequest.new(
  transaction: null,
  card: null,
  konbini: null,
  paypay: null,
  success_url: https://your-service.example.com/success,
  cancel_url: https://your-service.example.com/cancel,
  expire: 2022/02/31 23:59:59.999,
  shop_service_name: Your Service,
  guide_mail_send_flag: null,
  receiver_mail: receiver-email@example.com,
  mail_customer_name: 買物 太郎,
  thanks_mail_send_flag: null,
  shop_mail_template_id: null
)
```

