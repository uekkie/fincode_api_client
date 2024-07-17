# FincodeApiClient::PaymentPayPay

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ この決済で利用する決済手段です。  - &#x60;Paypay&#x60;: PayPay  | [optional] |
| **job_code** | [**PayPayPaymentJobCode**](PayPayPaymentJobCode.md) |  | [optional] |
| **status** | [**PaymentStatus**](PaymentStatus.md) | 決済ステータス  - &#x60;UNPROCESSED&#x60;: 未処理&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;請求はまだ実行されていません。&lt;/span&gt; - &#x60;AWAITING_CUSTOMER_PAYMENT&#x60;: 購入者の支払い待ち&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;購入者によるPayPay上での取引承認を待っている状態。&lt;/span&gt; - &#x60;AUTHORIZED&#x60;: 仮売上&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;仮売上としてPayPay残高の確保が完了しており、売上確定により請求を完了できます。&lt;/span&gt; - &#x60;CAPTURED&#x60;: 売上確定&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;請求が完了し、売上が確定しています。&lt;/span&gt; - &#x60;CANCELED&#x60;: キャンセル&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;この決済はキャンセルされました。&lt;/span&gt; - &#x60;EXPIRED&#x60;: 決済の期限切れ&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;この決済は期限が切れています。&lt;/span&gt;  | [optional] |
| **code_url** | **String** | PayPay支払いURL\\ 購入者をこのURLにリダイレクトすることでPayPay上での取引を開始します。  | [optional] |
| **code_expiry_date** | **String** | 支払期限\\ 形式： &#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **redirect_url** | **String** | リダイレクトURL\\ 決済が完了した際にPayPayからリダイレクト先URL。  | [optional] |
| **redirect_type** | **String** | リダイレクト先種別\\ &#x60;redirect_url&#x60;の種別  - &#x60;1&#x60;： Webページ／Webアプリケーション - &#x60;2&#x60;： ネイティブアプリ  | [optional] |
| **auth_max_date** | **String** | 仮売上期限\\ 形式： &#x60;yyyy/MM/dd&#x60;  | [optional] |
| **order_description** | **String** | 注文内容の説明\\ 購入者のPayPayアプリ上で表示される注文内容の説明。  | [optional] |
| **capture_description** | **String** | 売上確定の説明\\ 購入者のPayPayアプリ上で表示される売上確定の説明。  | [optional] |
| **update_description** | **String** | 金額変更の説明\\ 購入者のPayPayアプリ上で表示される金額変更の説明。  | [optional] |
| **cancel_description** | **String** | キャンセルの説明\\ 購入者のPayPayアプリ上で表示されるキャンセルの説明。  | [optional] |
| **store_id** | **String** | 店舗ID\\ PayPayによって発行された店舗ID。  | [optional] |
| **code_id** | **String** | PayPayの支払いコードID  | [optional] |
| **payment_id** | **String** | PayPay 決済ID  | [optional] |
| **paypay_result_code** | **String** | PayPay処理結果コード  | [optional] |
| **merchant_payment_id** | **String** | PayPay トランザクションID  | [optional] |
| **merchant_capture_id** | **String** | PayPay 売上確定ID  | [optional] |
| **merchant_update_id** | **String** | PayPay 金額変更ID  | [optional] |
| **merchant_revert_id** | **String** | PayPay キャンセルID  | [optional] |
| **merchant_refund_id** | **String** | PayPay 返金ID  | [optional] |
| **payment_date** | **String** | 支払日時\\ 形式： &#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentPayPay.new(
  pay_type: null,
  job_code: null,
  status: null,
  code_url: https://www.paypay.example.com/app/cashier?code&#x3D;https%3A%2F%2Fqr.paypay.example.com%2F0123456789abcdefghijklm,
  code_expiry_date: 2022/05/16 12:34:56.999,
  redirect_url: https://your-service.example.com/on-payment-complete,
  redirect_type: 1,
  auth_max_date: 2022/05/16,
  order_description: ○○の購入,
  capture_description: ○○の発送完了,
  update_description: ○○の変更の適用,
  cancel_description: ○○の購入キャンセル,
  store_id: 123456,
  code_id: 123456,
  payment_id: null,
  paypay_result_code: null,
  merchant_payment_id: null,
  merchant_capture_id: null,
  merchant_update_id: null,
  merchant_revert_id: null,
  merchant_refund_id: null,
  payment_date: 2022/05/16 12:34:56.999
)
```

