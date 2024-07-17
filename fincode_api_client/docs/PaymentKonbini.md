# FincodeApiClient::PaymentKonbini

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ この決済で利用する決済手段です。  - &#x60;Konbini&#x60;: コンビニ決済  | [optional] |
| **status** | [**PaymentStatus**](PaymentStatus.md) | 決済ステータス  - &#x60;UNPROCESSED&#x60;: 未処理&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;請求はまだ実行されていません。&lt;/span&gt; - &#x60;AWAITING_CUSTOMER_PAYMENT&#x60;: 購入者の支払い待ち&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;購入者によるコンビニ店頭レジでの払い込みを待っている状態。&lt;/span&gt; - &#x60;CAPTURED&#x60;: 売上確定&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;請求が完了し、売上が確定しています。&lt;/span&gt; - &#x60;CANCELED&#x60;: キャンセル&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;この決済はキャンセルされました。&lt;/span&gt; - &#x60;EXPIRED&#x60;: 決済の期限切れ&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;この決済は期限が切れています。&lt;/span&gt;  | [optional] |
| **payment_term_day** | **Integer** | 支払い期限日数  | [optional][default to 2] |
| **payment_term** | **String** | 支払い期限日時\\ コンビニ決済の支払い期限日時です。\\ \\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **payment_date** | **String** | 支払日時\\ コンビニ店頭で購入者が支払いを行った日時です。\\ \\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **barcode** | **String** | バーコード画像 Base64エンコード済み画像データ\\ コンビニ店頭での支払いに使用するバーコード画像のBase64エンコード済みデータです。このデータをデコードして表示します。\\ バーコード画像はレギュレーションに従って表示する必要があります。詳細は[Docs &gt; レギュレーションと注意事項](https://docs.fincode.jp/payment/konbini/note)から参照できます。  | [optional] |
| **barcode_format** | **String** | バーコード画像 フォーマット\\ 発行されたバーコード画像（&#x60;barcode&#x60;）のフォーマットです。  | [optional] |
| **barcode_width** | **String** | バーコード画像 横幅（px）\\ 発行されたバーコード画像（&#x60;barcode&#x60;）の横幅です。  | [optional] |
| **barcode_height** | **String** | バーコード画像 縦幅（px）\\ 発行されたバーコード画像（&#x60;barcode&#x60;）の縦幅です。  | [optional] |
| **overpayment_flag** | **String** | 多重支払フラグ\\ この決済に対して複数回支払いが行われた場合&#x60;1&#x60;になります。  - &#x60;0&#x60;: 0回、または1回の支払いが行われた - &#x60;1&#x60;: 2回以上、同一のバーコードを用いて支払いが行われた  | [optional] |
| **cancel_overpayment_flag** | **String** | キャンセル後支払フラグ\\ この決済をキャンセルした後に購入者がバーコードを用いて支払いを行った場合&#x60;1&#x60;になります。  - &#x60;0&#x60;: キャンセル後支払は行われていない - &#x60;1&#x60;: キャンセル後、購入者による支払いが行われた  | [optional] |
| **konbini_code** | [**KonbiniCode**](KonbiniCode.md) |  | [optional] |
| **konbini_store_code** | **Object** | コンビニ店舗コード\\ コンビニ事業者ごとに独自体系の店舗コードです。  | [optional] |
| **device_name** | **String** | デバイス名\\ バーコード表示を行うデバイスの名前を指定します。  - Androidの場合： [ユーザーエージェントクライアントヒントAPI](https://developer.mozilla.org/ja/docs/Web/API/User-Agent_Client_Hints_API)またはNavigator: userAgentプロパティ（非推奨）で取得できる文字列から取得したデバイス名を指定します。 - iPhoneの場合： 固定文字列&#x60;iPhone&#x60;を指定します。  | [optional] |
| **os_version** | **Object** | OSバージョン  | [optional] |
| **win_width** | **String** | デバイス画面幅\\ バーコード表示を行うデバイスの画面幅を指定します。  - Androidの場合： &#x60;window.screen.width&#x60;で取得した値に &#x60;pixel_ratio&#x60;（ピクセル比）の値を乗じたものを指定します。 - iPhoneの場合： &#x60;window.screen.width&#x60;で取得した値を指定します。  | [optional] |
| **win_height** | **String** | デバイス画面の高さ\\ バーコード表示を行うデバイス画面の高さを指定します。  - Androidの場合： &#x60;window.screen.height&#x60;で取得した値に &#x60;pixel_ratio&#x60;（ピクセル比）の値を乗じたものを指定します。 - iPhoneの場合： &#x60;window.screen.height&#x60;で取得した値を指定します。  | [optional] |
| **xdpi** | **Object** | 画面横幅のDPI  | [optional] |
| **ydpi** | **Object** | 画面縦幅のDPI  | [optional] |
| **result** | [**KonbiniPaymentProcessResult**](KonbiniPaymentProcessResult.md) |  | [optional] |
| **order_serial** | **String** | 注文管理ID  | [optional] |
| **invoice_id** | **String** | 請求ID  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentKonbini.new(
  pay_type: null,
  status: null,
  payment_term_day: 2,
  payment_term: null,
  payment_date: null,
  barcode: null,
  barcode_format: null,
  barcode_width: null,
  barcode_height: null,
  overpayment_flag: null,
  cancel_overpayment_flag: null,
  konbini_code: null,
  konbini_store_code: null,
  device_name: iPhone,
  os_version: null,
  win_width: 375,
  win_height: 812,
  xdpi: null,
  ydpi: null,
  result: null,
  order_serial: null,
  invoice_id: null
)
```

