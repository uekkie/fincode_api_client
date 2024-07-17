# FincodeApiClient::WebhookEventPaymentCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **String** | ショップID  | [optional] |
| **order_id** | **String** | オーダーID\\ 決済情報のIDです。  | [optional] |
| **access_id** | **String** | 取引ID  | [optional] |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ この決済で利用する決済手段です。  - &#x60;Card&#x60;: カード  | [optional] |
| **status** | [**PaymentStatus**](PaymentStatus.md) | 決済ステータス  - &#x60;UNPROCESSED&#x60;: 未処理&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;請求はまだ実行されていません。&lt;/span&gt; - &#x60;CHECKED&#x60;: 有効性チェック済み&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;カードの有効性チェックが完了しています。&lt;/span&gt; - &#x60;AUTHORIZED&#x60;: 仮売上&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;仮売上として与信枠の確保が完了しており、売上確定により請求を完了できます。&lt;/span&gt; - &#x60;CAPTURED&#x60;: 売上確定&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;請求が完了し、売上が確定しています。&lt;/span&gt; - &#x60;CANCELED&#x60;: キャンセル&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;この決済はキャンセルされました。&lt;/span&gt; - &#x60;AUTHENTICATED&#x60;: 未処理（3Dセキュア認証待ち）&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;3Dセキュア認証を使用する決済を実行した直後の状態です。認証後決済実行を行うまで請求や仮売上はされません。&lt;/span&gt;  | [optional] |
| **customer_id** | **String** | 顧客ID  | [optional] |
| **method** | [**CardPayMethod**](CardPayMethod.md) |  | [optional] |
| **client_field_1** | **String** | 加盟店自由項目 1  | [optional] |
| **client_field_2** | **String** | 加盟店自由項目 2  | [optional] |
| **client_field_3** | **String** | 加盟店自由項目 3  | [optional] |
| **amount** | **String** | 利用金額  | [optional] |
| **tax** | **String** | 税送料  | [optional] |
| **currency** | [**CurrencyCode**](CurrencyCode.md) |  | [optional] |
| **job_code** | [**CardPaymentJobCode**](CardPaymentJobCode.md) |  | [optional] |
| **subscription_id** | **String** | サブスクリプションID  | [optional] |
| **bulk_payment_id** | **String** | 一括決済ID  | [optional] |
| **forward** | **String** | 仕向け先  | [optional] |
| **transaction_id** | **String** | トランザクションID  | [optional] |
| **transaction_date** | **String** | 決済 処理日時  | [optional] |
| **approve** | **String** | 承認番号  | [optional] |
| **error_code** | **String** | この決済において発生したエラーのうち、一番最新のエラーのエラーコードです。\\ [各エラーコードの定義はこちらを参照](https://docs.fincode.jp/develop_support/error)して確認できます。  | [optional] |
| **event** | [**FincodeEvent**](FincodeEvent.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::WebhookEventPaymentCard.new(
  shop_id: s_***********,
  order_id: o_**********************,
  access_id: a_**********************,
  pay_type: null,
  status: null,
  customer_id: c_**********************,
  method: null,
  client_field_1: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_2: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_3: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  amount: 1000,
  tax: 100,
  currency: null,
  job_code: null,
  subscription_id: su_*********************,
  bulk_payment_id: null,
  forward: 12345,
  transaction_id: null,
  transaction_date: 2022/05/16 23:59:59.999,
  approve: null,
  error_code: E**********,
  event: null
)
```

