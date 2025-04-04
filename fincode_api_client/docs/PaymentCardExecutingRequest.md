# FincodeApiClient::PaymentCardExecutingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ この決済で利用する決済手段です。  - &#x60;Card&#x60;: カード  |  |
| **access_id** | **String** | 取引ID  |  |
| **token** | **String** | カードトークン\\ &#x60;customer_id&#x60;と&#x60;card_id&#x60;を指定しない場合、fincode JSの&#x60;tokens&#x60;メソッドで取得したトークンをこのフィールドに指定します。  | [optional] |
| **customer_id** | **String** | 顧客ID\\ 購入者となる顧客のIDです。  | [optional] |
| **card_id** | **String** | カードID\\ この決済に使用するカードのIDです。指定しない場合、デフォルトカードが使用されます。  | [optional] |
| **method** | [**CardPayMethod**](CardPayMethod.md) | 支払方法\\ この決済の&#x60;job_code&#x60;（処理区分）が&#x60;AUTH&#x60;または&#x60;CAPTURE&#x60;であるとき、このフィールドを指定する必要があります。  - &#x60;1&#x60;: 一括払い - &#x60;2&#x60;: 分割払い - &#x60;5&#x60;: リボ払い  | [optional] |
| **pay_times** | [**CardPayTimes**](CardPayTimes.md) |  | [optional] |
| **tds2_ret_url** | **String** | 3Dセキュア認証における戻りURL   3Dセキュア認証処理に使用するURLを指定してください。   このURLに後続処理のためのデータがPOSTメソッドで送信されます。     ※ 指定した場合、3Dセキュア認証に必要なAPIの呼び出しやコールバック処理をすべて加盟店で実装する必要があります。 お客様のブラウザとfincode間で3Dセキュア認証を自動で行う場合はこのパラメータを未指定としてください。  詳細はDocs [3Dセキュア2.0認証を使用する](/payment/fraud_protection/3d_secure_2)を確認してください。  | [optional] |
| **return_url** | **String** | 加盟店戻りURL（成功時）   購入者のブラウザとfincode間で3Dセキュア認証を自動で行う場合に、 3Dセキュア認証処理後、決済に成功した際にリダイレクトされるURLです。   POSTメソッドでリダイレクトされます。  指定しない場合はデフォルトの成功ページのURLが設定されます。   また、&#x60;tds2_ret_url&#x60;を指定した場合は無視されます。  | [optional] |
| **return_url_on_failure** | **String** | 加盟店戻りURL（失敗時）   購入者のブラウザとfincode間で3Dセキュア認証を自動で行う場合に、 3Dセキュア認証に失敗、または決済に失敗した際にリダイレクトされるURLです。   POSTメソッドでリダイレクトされます。  指定しない場合はデフォルトの失敗ページのURLが設定されます。   また、&#x60;tds2_ret_url&#x60;を指定した場合は無視されます。  | [optional] |
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

instance = FincodeApiClient::PaymentCardExecutingRequest.new(
  pay_type: null,
  access_id: a_**********************,
  token: 34567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890,
  customer_id: c_**********************,
  card_id: cs_**********************,
  method: null,
  pay_times: null,
  tds2_ret_url: https://your-server.example.com/3ds2-return,
  return_url: https://your-server.example.com/3ds2-return/success,
  return_url_on_failure: https://your-server.example.com/3ds2-return/failure,
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

