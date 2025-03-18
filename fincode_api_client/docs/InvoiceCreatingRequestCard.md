# FincodeApiClient::InvoiceCreatingRequestCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_code** | **String** | 処理区分   以下のいずれかを指定してください。    - &#x60;AUTH&#x60;: 仮売上   - &#x60;CAPTURE&#x60;: 即時売上  | [optional][default to &#39;AUTH&#39;] |
| **tds_type** | **String** | 3DS利用種別   3DSを使用して決済を行うかを設定します。   - &#x60;0&#x60;: 行わない（デフォルト）   - &#x60;2&#x60;: 行う（3DS2.0を利用）  | [optional] |
| **tds2_type** | **String** | 3DS2非対応時設定   仕向先カード会社が3DS2.0に未対応な場合の、後続処理を設定します。   - &#x60;1&#x60;: 3DS1.0での認証を実施   - &#x60;2&#x60;: エラーとして処理終了（デフォルト）   - &#x60;3&#x60;: 通常オーソリを実施  | [optional] |
| **tds2_tenant_name** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   3Dセキュア表示店舗名  | [optional] |
| **tds2_ch_acc_change** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   3DSリクエスター アカウント最終更新日   yyyyMMdd形式  | [optional] |
| **tds2_ch_acc_date** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   3DSリクエスター アカウント開設日   yyyyMMdd形式  | [optional] |
| **tds2_ch_acc_pw_change** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   3DSリクエスター アカウントパスワード変更日   yyyyMMdd形式  | [optional] |
| **tds2_nb_purchase_account** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   過去6ヶ月間の購入回数  | [optional] |
| **tds2_payment_acc_age** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   カード登録日   yyyyMMdd形式  | [optional] |
| **tds2_provision_attempts_day** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   過去24時間のカード追加の試行回数  | [optional] |
| **tds2_ship_address_usage** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   出荷先住所の最初の使用日   yyyyMMdd形式  | [optional] |
| **tds2_ship_name_ind** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   カード顧客名と出荷先名の一致/不一致情報      - &#x60;01&#x60;: カード顧客名と配送先名が一致   - &#x60;02&#x60;: カード顧客名と配送先名が不一致  | [optional] |
| **tds2_suspicious_acc_activity** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   アカウントの不審行為情報   カード顧客で、不審な行動（過去の不正行為を含む）を加盟店様が発見したかどうかを設定      - &#x60;01&#x60;: 不審な行動は見られなかった   - &#x60;02&#x60;: 不審な行動が見られた  | [optional] |
| **tds2_txn_activity_day** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   過去24時間の取引回数  | [optional] |
| **tds2_txn_activity_year** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   前年の取引回数  | [optional] |
| **tds2_three_ds_req_auth_data** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   ログイン証跡   ログイン証跡を設定した場合   ログイン方法/ログイン日時の設定が必要  01 &#x3D; 認証なし（ゲストとしてログイン）   02 &#x3D; 加盟店様自身の認証情報   03 &#x3D; SSO(シングルサインオン)   04 &#x3D; イシュアーの認証情報   05 &#x3D; サードパーティ認証   06 &#x3D; FIDO認証  | [optional] |
| **tds2_three_ds_req_auth_timestamp** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   ログイン日時   ログイン日時を設定した場合   ログイン証跡/ログイン方法の設定が必要   YYYYMMDDHHMM形式  | [optional] |
| **tds2_addr_match** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   請求先住所と配送先住所の一致/不一致情報   カード顧客の配送先住所とカード顧客の請求先住所の一致/不一致の設定が必要   Y&#x3D;一致   N&#x3D;不一致  | [optional] |
| **tds2_bill_addr_city** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   カード顧客の請求先住所の都市  | [optional] |
| **tds2_bill_addr_country** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   カード顧客の請求先住所の国コード  | [optional] |
| **tds2_bill_addr_line_1** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   カード顧客の請求先住所の区域部分の１行目  | [optional] |
| **tds2_bill_addr_line_2** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   カード顧客の請求先住所の区域部分の２行目  | [optional] |
| **tds2_bill_addr_line_3** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   カード顧客の請求先住所の区域部分の３行目  | [optional] |
| **tds2_bill_addr_post_code** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   カード顧客の請求先住所の郵便番号  | [optional] |
| **tds2_bill_addr_state** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   カード顧客の請求先住所の州または都道府県コード  | [optional] |
| **tds2_email** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   カード顧客のメールアドレス  | [optional] |
| **tds2_home_phone_cc** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   自宅電話の国コード   自宅電話の国コードを設定した場合   自宅電話番号の設定が必要  | [optional] |
| **tds2_home_phone_no** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   自宅電話番号   自宅電話番号を設定した場合   自宅電話の国コードの設定が必要   ハイフン（-）なし、数字のみ  | [optional] |
| **tds2_mobile_phone_cc** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   携帯電話の国コード   携帯電話の国コードを設定した場合   携帯電話番号の設定が必要  | [optional] |
| **tds2_mobile_phone_no** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   携帯電話番号   携帯電話番号の国コードを設定した場合   ハイフン（-）なし、数字のみ  | [optional] |
| **tds2_work_phone_cc** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   職場電話の国コード   職場電話の国コードを設定した場合   職場電話番号の設定が必要  | [optional] |
| **tds2_work_phone_no** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   職場電話番号   職場電話番号を設定した場合   ハイフン（-）なし、数字のみ  | [optional] |
| **tds2_ship_addr_city** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   出荷先住所の都市  | [optional] |
| **tds2_ship_addr_country** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   出荷先住所の国コード  | [optional] |
| **tds2_ship_addr_line_1** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   出荷先住所の区域部分の１行目  | [optional] |
| **tds2_ship_addr_line_2** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   出荷先住所の区域部分の２行目  | [optional] |
| **tds2_ship_addr_line_3** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   出荷先住所の区域部分の３行目  | [optional] |
| **tds2_ship_addr_post_code** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   出荷先住所の郵便番号  | [optional] |
| **tds2_ship_addr_state** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   出荷先住所の州または都道府県コード  | [optional] |
| **tds2_delivery_email_address** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   納品先電子メールアドレス  | [optional] |
| **tds2_delivery_timeframe** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   商品納品時間枠   01 &#x3D; 電子デリバリー   02 &#x3D; 当日出荷   03 &#x3D; 翌日出荷   04 &#x3D; 2日目以降の出荷  | [optional] |
| **tds2_gift_card_amount** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   プリペイドカードまたはギフトカードの総購入金額  | [optional] |
| **tds2_gift_card_count** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   購入されたプリペイドカードまたはギフトカード / コードの総数   0埋め2桁の数字  | [optional] |
| **tds2_gift_card_curr** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   通貨コード   ※以下のコードは対象外   955, 956, 957, 958, 959, 960, 961, 962,   963, 964, 999  | [optional] |
| **tds2_pre_order_date** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   商品の発売予定日   YYYYMMDD形式  | [optional] |
| **tds2_pre_order_purchase_ind** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   商品の販売時期情報   01 &#x3D; 発売済み 02 &#x3D; 先行予約商品  | [optional] |
| **tds2_reorder_items_ind** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   商品の注文情報   01 &#x3D; 初回注文   02 &#x3D; 再注文  | [optional] |
| **tds2_ship_ind** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   取引の出荷方法   01 &#x3D; カード顧客の請求先住所に配送する   02 &#x3D; 加盟店様が保持している別の、確認済み住所に配送する   03 &#x3D; カード顧客の請求先住所と異なる住所に配送する   04 &#x3D; 店舗へ配送 / 近所の店舗での受け取り（店舗の住所は配送先住所で指定する）   05 &#x3D; デジタル商品（オンラインサービス、電子ギフトカードおよび償還コードを含む）   06 &#x3D; 配送なし（旅行およびイベントのチケット）   07 &#x3D; その他（ゲーム、配送されないデジタルサービス、電子メディアの購読料など）  | [optional] |
| **tds2_recurring_expiry** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   継続課金の期限   YYYYMMDD形式  | [optional] |
| **tds2_recurring_frequency** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;   継続課金の課金最小間隔日数  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::InvoiceCreatingRequestCard.new(
  job_code: null,
  tds_type: null,
  tds2_type: null,
  tds2_tenant_name: null,
  tds2_ch_acc_change: null,
  tds2_ch_acc_date: null,
  tds2_ch_acc_pw_change: null,
  tds2_nb_purchase_account: null,
  tds2_payment_acc_age: null,
  tds2_provision_attempts_day: null,
  tds2_ship_address_usage: null,
  tds2_ship_name_ind: null,
  tds2_suspicious_acc_activity: null,
  tds2_txn_activity_day: null,
  tds2_txn_activity_year: null,
  tds2_three_ds_req_auth_data: null,
  tds2_three_ds_req_auth_timestamp: null,
  tds2_addr_match: null,
  tds2_bill_addr_city: null,
  tds2_bill_addr_country: null,
  tds2_bill_addr_line_1: null,
  tds2_bill_addr_line_2: null,
  tds2_bill_addr_line_3: null,
  tds2_bill_addr_post_code: null,
  tds2_bill_addr_state: null,
  tds2_email: null,
  tds2_home_phone_cc: null,
  tds2_home_phone_no: null,
  tds2_mobile_phone_cc: null,
  tds2_mobile_phone_no: null,
  tds2_work_phone_cc: null,
  tds2_work_phone_no: null,
  tds2_ship_addr_city: null,
  tds2_ship_addr_country: null,
  tds2_ship_addr_line_1: null,
  tds2_ship_addr_line_2: null,
  tds2_ship_addr_line_3: null,
  tds2_ship_addr_post_code: null,
  tds2_ship_addr_state: null,
  tds2_delivery_email_address: null,
  tds2_delivery_timeframe: null,
  tds2_gift_card_amount: null,
  tds2_gift_card_count: null,
  tds2_gift_card_curr: null,
  tds2_pre_order_date: null,
  tds2_pre_order_purchase_ind: null,
  tds2_reorder_items_ind: null,
  tds2_ship_ind: null,
  tds2_recurring_expiry: null,
  tds2_recurring_frequency: null
)
```

