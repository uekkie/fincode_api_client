# FincodeApiClient::CardRegistrationSessionCreatingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | リダイレクト型カード登録URL ID  | [optional] |
| **link_url** | **String** | リダイレクト型カード登録URL\\ カード登録を行うユーザーがこのURLにアクセスし、カード情報を登録することで登録手続きが完了します。  | [optional] |
| **success_url** | **String** | 成功時リダイレクトURL\\ &#x60;link_url&#x60;上でカード登録に成功すると、fincodeはこのURLにPOSTメソッドでリダイレクトします。  | [optional] |
| **cancel_url** | **String** | キャンセル時リダイレクトURL\\ &#x60;link_url&#x60;上でカード登録がキャンセルされると、fincodeはこのURLにPOSTメソッドでリダイレクトします。  | [optional] |
| **status** | [**CardRegistrationSessionStatus**](CardRegistrationSessionStatus.md) |  | [optional] |
| **expire** | **String** | リダイレクト型カード登録URL 有効期限\\ 形式： &#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **shop_service_name** | **String** | ショップ／サービス名\\ カード登録URL上で表示されるショップおよびサービスの名称です。\\ \\ デフォルトでは本番環境申請時に登録した「明細書表記」の値が設定されます。  | [optional] |
| **guide_mail_send_flag** | **String** | カード登録メール 送信フラグ\\ リダイレクト型カード登録URLをfincodeからのメール送信機能で送信したかどうかを示します。  - &#x60;0&#x60;：送信しなかった（デフォルト） - &#x60;1&#x60;：送信した  | [optional] |
| **receiver_mail** | **String** | カード登録メール 送信先メールアドレス\\ リダイレクト型カード登録URLをfincodeからのメール送信機能で送信する場合の送信先メールアドレスです。  | [optional] |
| **mail_customer_name** | **String** | カード登録メール カード登録をするユーザーの名前\\ リダイレクト型決済URLをfincodeからのメール送信機能で送信する場合のメール中で用いられるユーザーの名前です。\\ \\ fincodeが提供するデフォルトのメールテンプレートでは敬称がテンプレート側に含まれています。  | [optional] |
| **completion_mail_send_flag** | **String** | 完了メール 送信フラグ\\ 決済が完了した際にカード登録をしたユーザーに完了メールを送信するかどうかを示します。  - &#x60;0&#x60;：送信しない（デフォルト） - &#x60;1&#x60;：送信する  | [optional] |
| **shop_mail_template_id** | **String** | メールテンプレートID\\ メールテンプレートIDが設定されている場合、リダイレクト型カード登録URLの送信先メールアドレスに送信されるメールのテンプレートが変更されます。\\ \\ fincodeが提供するデフォルトのメールテンプレートを使用する場合は&#x60;null&#x60;を設定します。  | [optional] |
| **customer_id** | **String** | 顧客ID\\ カード登録URLによりカードが登録される顧客のIDです。  | [optional] |
| **customer_name** | **String** | 顧客名  | [optional] |
| **tds_type** | [**TdsType**](TdsType.md) |  | [optional] |
| **td_tenant_name** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 加盟店名。\\ 3Dセキュア認証の際に表示されるショップ名や加盟店名を指定できます。\\ 未指定の場合、 カード決済の契約時にfincodeが下記の形式に従って設定した値が自動的に使用されます。\\ \\ 形式：&#x60;{{ショップID}}-{{英数字からなる固定値}}&#x60;  | [optional] |
| **tds2_type** | [**Tds2Type**](Tds2Type.md) |  | [optional] |
| **created** | **String** | 作成日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **updated** | **String** | 更新日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::CardRegistrationSessionCreatingResponse.new(
  id: lk_**********************,
  link_url: https://secure.test.fincode.jp/v1/links_customers_and_cards/lk_**********************,
  success_url: https://your-service.example.com/success,
  cancel_url: https://your-service.example.com/cancel,
  status: null,
  expire: 2022/02/31 23:59:59.999,
  shop_service_name: Your Service,
  guide_mail_send_flag: 1,
  receiver_mail: receiver-email@example.com,
  mail_customer_name: 買物 太郎,
  completion_mail_send_flag: null,
  shop_mail_template_id: null,
  customer_id: c_**********************,
  customer_name: 買物 太郎,
  tds_type: null,
  td_tenant_name: s_***********-ab123,
  tds2_type: null,
  created: 2022/05/16 23:59:59.999,
  updated: 2022/05/16 23:59:59.999
)
```

