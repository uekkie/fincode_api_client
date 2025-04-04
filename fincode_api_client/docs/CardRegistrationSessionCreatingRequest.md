# FincodeApiClient::CardRegistrationSessionCreatingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success_url** | **String** | 成功時リダイレクトURL\\ &#x60;link_url&#x60;上でカード登録に成功すると、fincodeはこのURLにPOSTメソッドでリダイレクトします。  | [optional] |
| **cancel_url** | **String** | キャンセル時リダイレクトURL\\ &#x60;link_url&#x60;上でカード登録がキャンセルされると、fincodeはこのURLにPOSTメソッドでリダイレクトします。  | [optional] |
| **expire** | **String** | リダイレクト型カード登録URL 有効期限\\ 形式： &#x60;yyyy/MM/dd HH:mm:ss&#x60;  | [optional] |
| **shop_service_name** | **String** | ショップ／サービス名\\ カード登録URL上で表示されるショップおよびサービスの名称です。\\ \\ デフォルトでは本番環境申請時に登録した「明細書表記」の値が設定されます。  | [optional] |
| **receiver_mail** | **String** | カード登録メール 送信先メールアドレス\\ リダイレクト型カード登録URLをfincodeからのメール送信機能で送信する場合の送信先メールアドレスです。  | [optional] |
| **mail_customer_name** | **String** | カード登録メール カード登録をするユーザーの名前\\ リダイレクト型決済URLをfincodeからのメール送信機能で送信する場合のメール中で用いられるユーザーの名前です。\\ \\ fincodeが提供するデフォルトのメールテンプレートでは敬称がテンプレート側に含まれています。  | [optional] |
| **guide_mail_send_flag** | [**PropertiesGuideMailSendFlag**](PropertiesGuideMailSendFlag.md) |  | [optional] |
| **completion_mail_send_flag** | [**CompletionMailSendFlag**](CompletionMailSendFlag.md) |  | [optional] |
| **shop_mail_template_id** | **String** | メールテンプレートID\\ メールテンプレートIDが設定されている場合、リダイレクト型カード登録URLの送信先メールアドレスに送信されるメールのテンプレートが変更されます。\\ \\ fincodeが提供するデフォルトのメールテンプレートを使用する場合は&#x60;null&#x60;を設定します。  | [optional] |
| **customer_id** | **Object** |  | [optional] |
| **customer_name** | **String** | 顧客名  | [optional] |
| **td_tenant_name** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 加盟店名。\\ 3Dセキュア認証の際に表示されるショップ名や加盟店名を指定できます。\\ 使用可能な文字は以下の通りです。 - 半角英数 - 半角記号： !\&quot;#$%&amp;&#39;()*+,-./:;&lt;&#x3D;&gt;?@[\\]&#x60;^_{|}~ - 半角スペース  未指定の場合、 カード決済の契約時にfincodeが下記の形式に従って設定した値が自動的に使用されます。\\ \\ 形式：&#x60;{{ショップID}}-{{英数字からなる固定値}}&#x60;  | [optional] |
| **tds_type** | [**TdsType**](TdsType.md) |  | [optional] |
| **tds2_type** | [**Tds2Type**](Tds2Type.md) |  | [optional] |
| **tds2_ch_acc_change** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 購入者ユーザーアカウント 最終更新日\\ 形式：&#x60;YYYYMMDD&#x60;\\ \\ 加盟店アプリケーションにおけるユーザーアカウントの情報が最後に更新された日付を設定します。  | [optional] |
| **tds2_ch_acc_date** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 購入者ユーザーアカウント 開設日\\ 形式：&#x60;YYYYMMDD&#x60;\\ \\ 加盟店アプリケーションにおけるユーザーアカウントの開設日を設定します。  | [optional] |
| **tds2_ch_acc_pw_change** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 購入者ユーザーアカウント パスワード最終更新日\\ 形式：&#x60;YYYYMMDD&#x60;\\ \\ 加盟店アプリケーションにおけるユーザーアカウントのパスワードが最後に更新された日付を設定します。  | [optional] |
| **tds2_nb_purchase_account** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 購入者の過去6カ月間の購入回数  | [optional] |
| **tds2_payment_acc_age** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 顧客ユーザーアカウント カード登録日。\\ 形式：&#x60;YYYYMMDD&#x60;  | [optional] |
| **tds2_provision_attempts_day** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 顧客ユーザーアカウント 過去24時間のカード追加の試行回数  | [optional] |
| **tds2_ship_address_usage** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 配送先住所の最初の使用日。\\ 形式：&#x60;YYYYMMDD&#x60;  | [optional] |
| **tds2_ship_name_ind** | [**Tds2ShipNameInd**](Tds2ShipNameInd.md) |  | [optional] |
| **tds2_suspicious_acc_activity** | [**Tds2SuspiciousAccActivity**](Tds2SuspiciousAccActivity.md) |  | [optional] |
| **tds2_txn_activity_day** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 購入者の過去24時間の取引回数  | [optional] |
| **tds2_txn_activity_year** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 前年の取引回数  | [optional] |
| **tds2_three_ds_req_auth_data** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 顧客ユーザーアカウント ログイン証跡\\ \\ 加盟店アプリケーションにおけるログインの証跡。 ログイン証跡を設定する場合、ログイン方法とログイン日時の設定が必要です。  | [optional] |
| **tds2_three_ds_req_auth_method** | [**Tds2ThreeDsReqAuthMethod**](Tds2ThreeDsReqAuthMethod.md) |  | [optional] |
| **tds2_three_ds_req_auth_timestamp** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 顧客ユーザーアカウント ログイン日時\\ \\ ログイン証跡を設定する場合、ログイン方法とログイン日時の設定が必要です。\\ 形式：&#x60;YYYYMMDDHHmm&#x60;  | [optional] |
| **tds2_email** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 顧客のメールアドレス\\ \\ 未指定の場合、顧客の&#x60;email&#x60;が自動で設定されます。\\ \\ 2024年8月12日以降、下記の内少なくとも1つが必須となります。  - 顧客の自宅電話番号（&#x60;tds2_home_phone_no&#x60;） - 顧客の携帯電話番号（&#x60;tds2_mobile_phone_no&#x60;） - 顧客の職場電話番号（&#x60;tds2_work_phone_no&#x60;） - 顧客のメールアドレス（&#x60;tds2_email&#x60;）  ※当面は連携しなかった場合でも認証は実施されますが、将来的には利用不可になる可能性があります。  | [optional] |
| **tds2_addr_match** | [**Tds2AddrMatch**](Tds2AddrMatch.md) |  | [optional] |
| **tds2_bill_addr_country** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 顧客の請求先住所 国コード\\ 形式：ISO 3166-1 numeric\\ \\ 未指定の場合、顧客の&#x60;addr_country&#x60;が自動で設定されます。  | [optional] |
| **tds2_bill_addr_state** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 顧客の請求先住所 州または都道府県コード。\\ 参照： [国土交通省 都道府県コード](https://nlftp.mlit.go.jp/ksj/gml/codelist/PrefCd.html)\\ \\ 未指定の場合、顧客の&#x60;addr_state&#x60;が自動で設定されます。  | [optional] |
| **tds2_bill_addr_city** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 顧客の請求先住所 都市名\\ \\ 未指定の場合、顧客の&#x60;addr_city&#x60;が自動で設定されます。  | [optional] |
| **tds2_bill_addr_line_1** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 顧客の請求先住所 区域部1行目\\ \\ 顧客の住所の番地・区画を指定してください。未指定の場合。顧客の&#x60;addr_line_1&#x60;が自動で設定されます。  - 都道府県や市区を含めることができます。 - 保持している住所をパラメータの形式に分割できない場合は、桁数が収まるように&#x60;tds2_bill_addr_line_1&#x60; ~ &#x60;tds2_bill_addr_line_3&#x60;に住所を設定してください。 - &#x60;tds2_bill_addr_line_2&#x60;と&#x60;tds2_bill_addr_line_3&#x60;を空にして、&#x60;tds2_bill_addr_line_1&#x60;に全ての住所を設定できます。  未指定の場合、顧客に登録された&#x60;addr_line_1&#x60;を設定します。  | [optional] |
| **tds2_bill_addr_line_2** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 顧客の請求先住所 区域部2行目\\ \\ 顧客の住所の建物名・部屋番号を指定してください。未指定の場合、顧客に登録された&#x60;addr_line_2&#x60;を設定します。  | [optional] |
| **tds2_bill_addr_line_3** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 顧客の請求先住所 区域部3行目\\ \\ 顧客の住所のその他を指定してください。未指定の場合、顧客に登録された&#x60;addr_line_3&#x60;を設定します。  | [optional] |
| **tds2_bill_addr_post_code** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 顧客の請求先住所 郵便番号\\ \\ 未指定の場合、顧客に登録された&#x60;addr_post_code&#x60;を設定します。  | [optional] |
| **tds2_ship_addr_country** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 顧客の配送先住所 国コード。\\ 形式：ISO 3166-1 numeric\\  | [optional] |
| **tds2_ship_addr_state** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 顧客の配送先住所 州または都道府県コード。\\ 参照： [国土交通省 都道府県コード](https://nlftp.mlit.go.jp/ksj/gml/codelist/PrefCd.html)  | [optional] |
| **tds2_ship_addr_city** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 顧客の配送先住所 都市名  | [optional] |
| **tds2_ship_addr_line_1** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 顧客の配送先住所 区域部1行目  | [optional] |
| **tds2_ship_addr_line_2** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 顧客の配送先住所 区域部2行目  | [optional] |
| **tds2_ship_addr_line_3** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 顧客の配送先住所 区域部3行目  | [optional] |
| **tds2_ship_addr_post_code** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 顧客の配送先住所 郵便番号  | [optional] |
| **tds2_ship_ind** | [**Tds2ShipInd**](Tds2ShipInd.md) |  | [optional] |
| **tds2_delivery_email_address** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 顧客 メールアドレス  | [optional] |
| **tds2_home_phone_cc** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 顧客の自宅電話番号の国コード（+を含まない）\\ ※ この値を設定する場合、&#x60;tds2_home_phone_no&#x60;の設定が必要です。\\ \\ 未指定の場合、顧客の&#x60;phone_cc&#x60;が自動で設定されます。  | [optional] |
| **tds2_home_phone_no** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 顧客の自宅電話番号（ハイフンなし半角数字のみ）\\ ※ この値を設定する場合、&#x60;tds2_home_phone_cc&#x60;の設定が必要です。\\ \\ 未指定の場合、顧客の&#x60;phone_no&#x60;が自動で設定されます。\\ \\ 2024年8月12日以降、下記の内少なくとも1つが必須となります。  - 顧客の自宅電話番号（&#x60;tds2_home_phone_no&#x60;） - 顧客の携帯電話番号（&#x60;tds2_mobile_phone_no&#x60;） - 顧客の職場電話番号（&#x60;tds2_work_phone_no&#x60;） - 顧客のメールアドレス（&#x60;tds2_email&#x60;）  ※当面は連携しなかった場合でも認証は実施されますが、将来的には利用不可になる可能性があります。  | [optional] |
| **tds2_mobile_phone_cc** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 顧客の携帯電話番号の国コード（+を含まない）\\ ※ この値を設定する場合、&#x60;tds2_mobile_phone_no&#x60;の設定が必要です。  | [optional] |
| **tds2_mobile_phone_no** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 顧客の携帯電話番号（ハイフンなし半角数字のみ）\\ ※ この値を設定する場合、&#x60;tds2_mobile_phone_cc&#x60;の設定が必要です。\\ \\ 2024年8月12日以降、下記の内少なくとも1つが必須となります。  - 顧客の自宅電話番号（&#x60;tds2_home_phone_no&#x60;） - 顧客の携帯電話番号（&#x60;tds2_mobile_phone_no&#x60;） - 顧客の職場電話番号（&#x60;tds2_work_phone_no&#x60;） - 顧客のメールアドレス（&#x60;tds2_email&#x60;）  ※当面は連携しなかった場合でも認証は実施されますが、将来的には利用不可になる可能性があります。  | [optional] |
| **tds2_work_phone_cc** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 顧客の勤務先電話番号の国コード（+を含まない）\\ ※ この値を設定する場合、&#x60;tds2_work_phone_no&#x60;の設定が必要です。  | [optional] |
| **tds2_work_phone_no** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 顧客の勤務先電話番号（ハイフンなし半角数字のみ）\\ ※ この値を設定する場合、&#x60;tds2_work_phone_cc&#x60;の設定が必要です。\\ \\ 2024年8月12日以降、下記の内少なくとも1つが必須となります。  - 顧客の自宅電話番号（&#x60;tds2_home_phone_no&#x60;） - 顧客の携帯電話番号（&#x60;tds2_mobile_phone_no&#x60;） - 顧客の職場電話番号（&#x60;tds2_work_phone_no&#x60;） - 顧客のメールアドレス（&#x60;tds2_email&#x60;）  ※当面は連携しなかった場合でも認証は実施されますが、将来的には利用不可になる可能性があります。  | [optional] |
| **tds2_delivery_timeframe** | [**Tds2DeliveryTimeframe**](Tds2DeliveryTimeframe.md) |  | [optional] |
| **tds2_pre_order_date** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 商品の発売予定日\\ 形式：&#x60;YYYYMMDD&#x60;  | [optional] |
| **tds2_pre_order_purchase_ind** | [**Tds2PreOrderPurchaseInd**](Tds2PreOrderPurchaseInd.md) |  | [optional] |
| **tds2_reorder_items_ind** | [**Tds2ReorderItemsInd**](Tds2ReorderItemsInd.md) |  | [optional] |
| **tds2_recurring_expiry** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ ※ サブスクリプションなど継続課金型のビジネスモデルのみ\\ 継続課金の終了日\\ 形式：&#x60;YYYYMMDD&#x60;  | [optional] |
| **tds2_recurring_frequency** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ ※ サブスクリプションなど継続課金型のビジネスモデルのみ\\ 継続課金の課金間隔の日数（最小）  | [optional] |
| **tds2_gift_card_amount** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ ※ プリペイドカードまたはギフトカードを購入する場合のみ\\ プリペイドカードまたはギフトカードの総購入金額  | [optional] |
| **tds2_gift_card_count** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ ※ プリペイドカードまたはギフトカードを購入する場合のみ\\ 購入したプリペイドカードまたはギフトカードの総数  | [optional] |
| **tds2_gift_card_curr** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ ※ プリペイドカードまたはギフトカードを購入する場合のみ\\ プリペイドカードまたはギフトカードの通貨コード。\\ 形式：ISO 4217 numeric\\ \\ 以下の通貨コードは利用できません。（債券市場単位等）\\ &#x60;955&#x60;, &#x60;956&#x60;, &#x60;957&#x60;, &#x60;958&#x60;, &#x60;959&#x60;, &#x60;960&#x60;, &#x60;961&#x60;, &#x60;962&#x60;, &#x60;963&#x60;, &#x60;964&#x60;, &#x60;999&#x60;  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::CardRegistrationSessionCreatingRequest.new(
  success_url: https://your-service.example.com/success,
  cancel_url: https://your-service.example.com/cancel,
  expire: 2022/02/31 23:59:59.999,
  shop_service_name: Your Service,
  receiver_mail: receiver-email@example.com,
  mail_customer_name: 買物 太郎,
  guide_mail_send_flag: null,
  completion_mail_send_flag: null,
  shop_mail_template_id: null,
  customer_id: null,
  customer_name: 買物 太郎,
  td_tenant_name: s_***********-ab123,
  tds_type: null,
  tds2_type: null,
  tds2_ch_acc_change: 20240101,
  tds2_ch_acc_date: 20220101,
  tds2_ch_acc_pw_change: 20230101,
  tds2_nb_purchase_account: 9999,
  tds2_payment_acc_age: 20231231,
  tds2_provision_attempts_day: 999,
  tds2_ship_address_usage: 20230930,
  tds2_ship_name_ind: null,
  tds2_suspicious_acc_activity: null,
  tds2_txn_activity_day: 999,
  tds2_txn_activity_year: 999,
  tds2_three_ds_req_auth_data: null,
  tds2_three_ds_req_auth_method: null,
  tds2_three_ds_req_auth_timestamp: 202205191234,
  tds2_email: null,
  tds2_addr_match: null,
  tds2_bill_addr_country: 392,
  tds2_bill_addr_state: 13,
  tds2_bill_addr_city: 渋谷区,
  tds2_bill_addr_line_1: 道玄坂1-14-6,
  tds2_bill_addr_line_2: ヒューマックス渋谷ビル,
  tds2_bill_addr_line_3: 7F,
  tds2_bill_addr_post_code: 150-0043,
  tds2_ship_addr_country: 392,
  tds2_ship_addr_state: 13,
  tds2_ship_addr_city: 渋谷区,
  tds2_ship_addr_line_1: 道玄坂1-14-6,
  tds2_ship_addr_line_2: ヒューマックス渋谷ビル,
  tds2_ship_addr_line_3: 7F,
  tds2_ship_addr_post_code: 150-0043,
  tds2_ship_ind: null,
  tds2_delivery_email_address: email@example.com,
  tds2_home_phone_cc: 81,
  tds2_home_phone_no: 312345678,
  tds2_mobile_phone_cc: 81,
  tds2_mobile_phone_no: 9012345678,
  tds2_work_phone_cc: 81,
  tds2_work_phone_no: 312345678,
  tds2_delivery_timeframe: null,
  tds2_pre_order_date: 20231231,
  tds2_pre_order_purchase_ind: null,
  tds2_reorder_items_ind: null,
  tds2_recurring_expiry: 20231231,
  tds2_recurring_frequency: 99,
  tds2_gift_card_amount: 999999,
  tds2_gift_card_count: 99,
  tds2_gift_card_curr: 392
)
```

