# FincodeApiClient::WebhookEventPaymentKonbini

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **String** | ショップID  | [optional] |
| **order_id** | **String** | オーダーID\\ 決済情報のIDです。  | [optional] |
| **access_id** | **String** | 取引ID  | [optional] |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ この決済で利用する決済手段です。  - &#x60;Konbini&#x60;: コンビニ決済  | [optional] |
| **status** | [**PaymentStatus**](PaymentStatus.md) | 決済ステータス  - &#x60;UNPROCESSED&#x60;: 未処理&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;請求はまだ実行されていません。&lt;/span&gt; - &#x60;AWAITING_CUSTOMER_PAYMENT&#x60;: 購入者の支払い待ち&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;購入者によるコンビニ店頭レジでの払い込みを待っている状態。&lt;/span&gt; - &#x60;CAPTURED&#x60;: 売上確定&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;請求が完了し、売上が確定しています。&lt;/span&gt; - &#x60;CANCELED&#x60;: キャンセル&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;この決済はキャンセルされました。&lt;/span&gt; - &#x60;EXPIRED&#x60;: 決済の期限切れ&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;この決済は期限が切れています。&lt;/span&gt;  | [optional] |
| **customer_id** | **String** | 顧客ID  | [optional] |
| **overpayment_flag** | [**OverpaymentFlag**](OverpaymentFlag.md) |  | [optional] |
| **cancel_overpayment_flag** | [**CancelOverpaymentFlag**](CancelOverpaymentFlag.md) |  | [optional] |
| **payment_date** | **String** | 支払日時\\ コンビニ店頭で購入者が支払いを行った日時です。\\ \\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **payment_term** | **String** | 支払い期限日時\\ コンビニ決済の支払い期限日時です。\\ \\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **process_date** | **String** | 決済 処理日時\\ 決済の各種処理（決済実行、キャンセルなど）が行われた日時です。  | [optional] |
| **client_field_1** | **String** | 加盟店自由項目 1  | [optional] |
| **client_field_2** | **String** | 加盟店自由項目 2  | [optional] |
| **client_field_3** | **String** | 加盟店自由項目 3  | [optional] |
| **amount** | **String** | 利用金額  | [optional] |
| **tax** | **String** | 税送料  | [optional] |
| **konbini_code** | [**KonbiniCode**](KonbiniCode.md) |  | [optional] |
| **konbini_store_code** | **Object** | コンビニ店舗コード\\ コンビニ事業者ごとに独自体系の店舗コードです。  | [optional] |
| **order_serial** | **String** | 注文管理ID  | [optional] |
| **invoice_id** | **String** | 請求ID  | [optional] |
| **error_code** | **String** | この決済において発生したエラーのうち、一番最新のエラーのエラーコードです。\\ [各エラーコードの定義はこちらを参照](https://docs.fincode.jp/develop_support/error)して確認できます。  | [optional] |
| **event** | [**FincodeEvent**](FincodeEvent.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::WebhookEventPaymentKonbini.new(
  shop_id: s_***********,
  order_id: o_**********************,
  access_id: a_**********************,
  pay_type: null,
  status: null,
  customer_id: c_**********************,
  overpayment_flag: null,
  cancel_overpayment_flag: null,
  payment_date: null,
  payment_term: null,
  process_date: 2022/01/01 12:34:56.789,
  client_field_1: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_2: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_3: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  amount: 1000,
  tax: 100,
  konbini_code: null,
  konbini_store_code: null,
  order_serial: null,
  invoice_id: null,
  error_code: E**********,
  event: null
)
```

