# FincodeApiClient::PaymentApplePay

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ この決済で利用する決済手段です。  - &#x60;Applepay&#x60;: Apple Pay  | [optional] |
| **job_code** | [**ApplePayPaymentJobCode**](ApplePayPaymentJobCode.md) |  | [optional] |
| **status** | [**PaymentStatus**](PaymentStatus.md) | 決済ステータス  - &#x60;UNPROCESSED&#x60;: 未処理&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;請求はまだ実行されていません。&lt;/span&gt; - &#x60;AUTHORIZED&#x60;: 仮売上&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;仮売上として与信枠の確保が完了しており、売上確定により請求を完了できます。&lt;/span&gt; - &#x60;CAPTURED&#x60;: 売上確定&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;請求が完了し、売上が確定しています。&lt;/span&gt; - &#x60;CANCELED&#x60;: キャンセル&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;この決済はキャンセルされました。&lt;/span&gt;  | [optional] |
| **brand** | [**CardBrand**](CardBrand.md) |  | [optional] |
| **card_no** | **String** | マスク済みカード番号。\\ &lt;span class&#x3D;\&quot;smallText\&quot;&gt; 下4桁以外をマスクしたカード番号です。\\ Apple Payでは実際のカード番号ではなくデバイスアカウント番号と呼ばれる番号で決済が行われるため、このフィールドで返される値はデバイスアカウント番号をマスクしたものになります。\\ &lt;/span&gt; 形式：&#x60;************1234&#x60;  | [optional] |
| **expire** | **String** | カード有効期限。\\ 形式：&#x60;YYMM&#x60;  | [optional] |
| **holder_name** | **String** | カード名義人名。  | [optional] |
| **card_no_hash** | **String** | カード番号をもとに生成されたハッシュ値。\\ &lt;span class&#x3D;\&quot;smallText\&quot;&gt; おなじカード番号に対しては常に同じ値が返されます。\\ カード情報非保持の原則に基づき、fincodeユーザーはマスクされていないカード番号の代わりにこの値を保持することができます。 &lt;/span&gt;  | [optional] |
| **method** | [**CardPayMethod**](CardPayMethod.md) |  | [optional] |
| **pay_times** | [**CardPayTimesResponse**](CardPayTimesResponse.md) |  | [optional] |
| **forward** | **String** | 仕向け先  | [optional] |
| **issuer** | **String** | イシュア  | [optional] |
| **transaction_id** | **String** | トランザクションID  | [optional] |
| **approve** | **String** | 承認番号  | [optional] |
| **auth_max_date** | **String** | 仮売上有効期限\\ &#x60;job_code&#x60;に&#x60;AUTH（仮売上）&#x60;を指定した場合値が設定されます。  | [optional] |
| **item_code** | **String** | 商品コード  | [optional] |
| **send_url** | **String** | ※ 閉塞機能  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentApplePay.new(
  pay_type: null,
  job_code: null,
  status: null,
  brand: null,
  card_no: ************1234,
  expire: 4012,
  holder_name: TARO EPSILON,
  card_no_hash: abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz01,
  method: null,
  pay_times: null,
  forward: 12345,
  issuer: 1a34567,
  transaction_id: null,
  approve: null,
  auth_max_date: 2022/05/16 23:59:59.999,
  item_code: 0000990,
  send_url: null
)
```

