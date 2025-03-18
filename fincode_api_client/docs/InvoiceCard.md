# FincodeApiClient::InvoiceCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_code** | **String** | 処理区分  | [optional] |
| **tds_type** | **String** | 3DS利用種別  | [optional] |
| **tds2_type** | **String** | 3DS2非対応時設定  | [optional] |
| **td_tenant_name** | **String** | 3Dセキュア表示店舗名  | [optional] |
| **tds2_ch_acc_change** | **String** | 3DSリクエスター アカウント最終更新日   yyyyMMdd形式  | [optional] |
| **tds2_ch_acc_date** | **String** | 3DSリクエスター アカウント開設日   yyyyMMdd形式  | [optional] |
| **tds2_ch_acc_pw_change** | **String** | 3DSリクエスター アカウントパスワード変更日   yyyyMMdd形式  | [optional] |
| **tds2_nb_purchase_account** | **String** | 過去6ヶ月間の購入回数  | [optional] |
| **tds2_payment_acc_age** | **String** | カード登録日   yyyyMMdd形式  | [optional] |
| **tds2_provision_attempts_day** | **String** | 過去24時間のカード追加の試行回数  | [optional] |
| **tds2_ship_address_usage** | **String** | 出荷先住所の最初の使用日   yyyyMMdd形式  | [optional] |
| **tds2_ship_name_ind** | **String** | カード顧客名と出荷先名の一致/不一致情報   01 &#x3D; カード顧客名と配送先名が一致   02 &#x3D; カード顧客名と配送先名が不一致  | [optional] |
| **tds2_suspicious_acc_activity** | **String** | アカウントの不審行為情報   01 &#x3D; 不審な行動は見られなかった   02 &#x3D; 不審な行動が見られた  | [optional] |
| **tds2_txn_activity_day** | **String** | 過去24時間の取引回数  | [optional] |
| **tds2_txn_activity_year** | **String** | 前年の取引回数  | [optional] |
| **tds2_three_ds_req_auth_data** | **String** | ログイン証跡   ログイン方法/ログイン日時の設定が必要  | [optional] |
| **tds2_three_ds_req_auth_method** | **String** | ログイン方法   01 &#x3D; 認証なし（ゲストとしてログイン）   02 &#x3D; 加盟店様自身の認証情報   03 &#x3D; SSO(シングルサインオン)   04 &#x3D; イシュアーの認証情報   05 &#x3D; サードパーティ認証   06 &#x3D; FIDO認証  | [optional] |
| **tds2_three_ds_req_auth_timestamp** | **String** | ログイン日時   YYYYMMDDHHMM形式  | [optional] |
| **tds2_addr_match** | **String** | 請求先住所と配送先住所の一致/不一致情報      - &#x60;Y&#x60;: 一致   - &#x60;N&#x60;: 不一致  | [optional] |
| **tds2_bill_addr_city** | **String** | カード顧客の請求先住所の都市  | [optional] |
| **tds2_bill_addr_country** | **String** | カード顧客の請求先住所の国コード  | [optional] |
| **tds2_bill_addr_line_1** | **String** | カード顧客の請求先住所の区域部分の１行目  | [optional] |
| **tds2_bill_addr_line_2** | **String** | カード顧客の請求先住所の区域部分の２行目  | [optional] |
| **tds2_bill_addr_line_3** | **String** | カード顧客の請求先住所の区域部分の３行目  | [optional] |
| **tds2_bill_addr_post_code** | **String** | カード顧客の請求先住所の郵便番号  | [optional] |
| **tds2_bill_addr_state** | **String** | カード顧客の請求先住所の州または都道府県コード  | [optional] |
| **tds2_email** | **String** | カード顧客のメールアドレス  | [optional] |
| **tds2_home_phone_cc** | **String** | 自宅電話の国コード  | [optional] |
| **tds2_home_phone_no** | **String** | 自宅電話番号   ハイフン（-）なし、数字のみ  | [optional] |
| **tds2_mobile_phone_cc** | **String** | 携帯電話の国コード  | [optional] |
| **tds2_mobile_phone_no** | **String** | 携帯電話番号   ハイフン（-）なし、数字のみ  | [optional] |
| **tds2_work_phone_cc** | **String** | 職場電話の国コード  | [optional] |
| **tds2_work_phone_no** | **String** | 職場電話番号   ハイフン（-）なし、数字のみ  | [optional] |
| **tds2_ship_addr_city** | **String** | 出荷先住所の都市  | [optional] |
| **tds2_ship_addr_country** | **String** | 出荷先住所の国コード  | [optional] |
| **tds2_ship_addr_line_1** | **String** | 出荷先住所の区域部分の１行目  | [optional] |
| **tds2_ship_addr_line_2** | **String** | 出荷先住所の区域部分の２行目  | [optional] |
| **tds2_ship_addr_line_3** | **String** | 出荷先住所の区域部分の３行目  | [optional] |
| **tds2_ship_addr_post_code** | **String** | 出荷先住所の郵便番号  | [optional] |
| **tds2_ship_addr_state** | **String** | 出荷先住所の州または都道府県コード  | [optional] |
| **tds2_delivery_email_address** | **String** | 出荷先住所のメールアドレス  | [optional] |
| **tds2_delivery_timeframe** | **String** | 商品納品時間枠      - &#x60;01&#x60;: 電子デリバリー - &#x60;02&#x60;: 当日出荷 - &#x60;03&#x60;: 翌日出荷 - &#x60;04&#x60;: 2日目以降の出荷  | [optional] |
| **tds2_gift_card_amount** | **String** | プリペイドカードまたはギフトカードの総購入金額  | [optional] |
| **tds2_gift_card_count** | **String** | 購入されたプリペイドカードまたはギフトカード / コードの総数  | [optional] |
| **tds2_gift_card_curr** | **String** | 通貨コード  | [optional] |
| **tds2_pre_order_date** | **String** | 商品の発売予定日   YYYYMMDD形式  | [optional] |
| **tds2_pre_order_purchase_ind** | **String** | 商品の販売時期情報      - &#x60;01&#x60;: 発売済み商品 - &#x60;02&#x60;: 先行予約商品  | [optional] |
| **tds2_reorder_items_ind** | **String** | 商品の注文情報      - &#x60;01&#x60;: 初回注文   - &#x60;02&#x60;: 再注文  | [optional] |
| **tds2_ship_ind** | **String** | 取引の出荷方法      - &#x60;01&#x60;: カード顧客の請求先住所に配送する   - &#x60;02&#x60;: 加盟店様が保持している別の、確認済み住所に配送する   - &#x60;03&#x60;: カード顧客の請求先住所と異なる住所に配送する   - &#x60;04&#x60;: 店舗へ配送 / 近所の店舗での受け取り（店舗の住所は配送先住所で指定する）   - &#x60;05&#x60;: デジタル商品（オンラインサービス、電子ギフトカードおよび償還コードを含む）   - &#x60;06&#x60;: 配送なし（旅行およびイベントのチケット）   - &#x60;07&#x60;: その他（ゲーム、配送されないデジタルサービス、電子メディアの購読料など）  | [optional] |
| **tds2_recurring_expiry** | **String** | 継続課金の期限   YYYYMMDD形式  | [optional] |
| **tds2_recurring_frequency** | **String** | 継続課金の課金最小間隔日数  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::InvoiceCard.new(
  job_code: null,
  tds_type: null,
  tds2_type: null,
  td_tenant_name: null,
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
  tds2_three_ds_req_auth_method: null,
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

