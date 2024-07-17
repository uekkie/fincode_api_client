# FincodeApiClient::WebhookEventPaymentPayPay

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **String** | ショップID  | [optional] |
| **order_id** | **String** | オーダーID\\ 決済情報のIDです。  | [optional] |
| **access_id** | **String** | 取引ID  | [optional] |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ この決済で利用する決済手段です。  - &#x60;Paypay&#x60;: PayPay  | [optional] |
| **status** | [**PaymentStatus**](PaymentStatus.md) | 決済ステータス  - &#x60;UNPROCESSED&#x60;: 未処理&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;請求はまだ実行されていません。&lt;/span&gt; - &#x60;AWAITING_CUSTOMER_PAYMENT&#x60;: 購入者の支払い待ち&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;購入者によるPayPay上での取引承認を待っている状態。&lt;/span&gt; - &#x60;AUTHORIZED&#x60;: 仮売上&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;仮売上としてPayPay残高の確保が完了しており、売上確定により請求を完了できます。&lt;/span&gt; - &#x60;CAPTURED&#x60;: 売上確定&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;請求が完了し、売上が確定しています。&lt;/span&gt; - &#x60;CANCELED&#x60;: キャンセル&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;この決済はキャンセルされました。&lt;/span&gt; - &#x60;EXPIRED&#x60;: 決済の期限切れ&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;この決済は期限が切れています。&lt;/span&gt;  | [optional] |
| **customer_id** | **String** | 顧客ID  | [optional] |
| **process_date** | **String** | 決済 処理日時\\ 決済の各種処理（決済実行、キャンセルなど）が行われた日時です。  | [optional] |
| **job_code** | [**PayPayPaymentJobCode**](PayPayPaymentJobCode.md) |  | [optional] |
| **client_field_1** | **String** | 加盟店自由項目 1  | [optional] |
| **client_field_2** | **String** | 加盟店自由項目 2  | [optional] |
| **client_field_3** | **String** | 加盟店自由項目 3  | [optional] |
| **amount** | **String** | 利用金額  | [optional] |
| **tax** | **String** | 税送料  | [optional] |
| **code_expiry_date** | **String** | 支払期限\\ 形式： &#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **auth_max_date** | **String** | 仮売上期限\\ 形式： &#x60;yyyy/MM/dd&#x60;  | [optional] |
| **order_description** | **String** | 注文内容の説明\\ 購入者のPayPayアプリ上で表示される注文内容の説明。  | [optional] |
| **code_id** | **String** | PayPayの支払いコードID  | [optional] |
| **payment_id** | **String** | PayPay 決済ID  | [optional] |
| **payment_date** | **String** | 支払日時\\ 形式： &#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **merchant_payment_id** | **String** | PayPay トランザクションID  | [optional] |
| **merchant_update_id** | **String** | PayPay 金額変更ID  | [optional] |
| **merchant_revert_id** | **String** | PayPay キャンセルID  | [optional] |
| **merchant_refund_id** | **String** | PayPay 返金ID  | [optional] |
| **error_code** | **String** | この決済において発生したエラーのうち、一番最新のエラーのエラーコードです。\\ [各エラーコードの定義はこちらを参照](https://docs.fincode.jp/develop_support/error)して確認できます。  | [optional] |
| **event** | [**FincodeEvent**](FincodeEvent.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::WebhookEventPaymentPayPay.new(
  shop_id: s_***********,
  order_id: o_**********************,
  access_id: a_**********************,
  pay_type: null,
  status: null,
  customer_id: c_**********************,
  process_date: 2022/01/01 12:34:56.789,
  job_code: null,
  client_field_1: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_2: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_3: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  amount: 1000,
  tax: 100,
  code_expiry_date: 2022/05/16 12:34:56.999,
  auth_max_date: 2022/05/16,
  order_description: ○○の購入,
  code_id: 123456,
  payment_id: null,
  payment_date: 2022/05/16 12:34:56.999,
  merchant_payment_id: null,
  merchant_update_id: null,
  merchant_revert_id: null,
  merchant_refund_id: null,
  error_code: E**********,
  event: null
)
```

