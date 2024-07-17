# FincodeApiClient::PaymentApplePayListListInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **String** | ショップID  | [optional] |
| **id** | **String** | オーダーID\\ 決済情報のIDです。  | [optional] |
| **access_id** | **String** | 取引ID  | [optional] |
| **amount** | **Integer** | 利用金額  | [optional] |
| **tax** | **Integer** | 税送料  | [optional] |
| **total_amount** | **Integer** | 合計金額\\ &#x60;amount&#x60;と&#x60;tax&#x60;の合計値です。  | [optional] |
| **client_field_1** | **String** | 加盟店自由項目 1  | [optional] |
| **client_field_2** | **String** | 加盟店自由項目 2  | [optional] |
| **client_field_3** | **String** | 加盟店自由項目 3  | [optional] |
| **process_date** | **String** | 決済 処理日時\\ 決済の各種処理（決済実行、キャンセルなど）が行われた日時です。  | [optional] |
| **customer_id** | **String** | 顧客ID\\ この決済の請求先となる顧客情報のIDです。  | [optional] |
| **customer_group_id** | **String** | 顧客情報共有グループID\\ プラットフォームショップにおいて顧客情報が共有されている場合、顧客が所属する共有グループのIDです。  | [optional] |
| **error_code** | **String** | この決済において発生したエラーのうち、一番最新のエラーのエラーコードです。\\ [各エラーコードの定義はこちらを参照](https://docs.fincode.jp/develop_support/error)して確認できます。  | [optional] |
| **created** | **String** | 作成日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **updated** | **String** | 更新日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ この決済で利用する決済手段です。  - &#x60;Applepay&#x60;: Apple Pay  | [optional] |
| **job_code** | [**ApplePayPaymentJobCode**](ApplePayPaymentJobCode.md) |  | [optional] |
| **status** | [**PaymentStatus**](PaymentStatus.md) | 決済ステータス  - &#x60;UNPROCESSED&#x60;: 未処理&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;請求はまだ実行されていません。&lt;/span&gt; - &#x60;AUTHORIZED&#x60;: 仮売上&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;仮売上として与信枠の確保が完了しており、売上確定により請求を完了できます。&lt;/span&gt; - &#x60;CAPTURED&#x60;: 売上確定&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;請求が完了し、売上が確定しています。&lt;/span&gt; - &#x60;CANCELED&#x60;: キャンセル&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;この決済はキャンセルされました。&lt;/span&gt;  | [optional] |
| **brand** | [**CardBrand**](CardBrand.md) |  | [optional] |
| **card_no** | **String** | マスク済みカード番号。\\ &lt;span class&#x3D;\&quot;smallText\&quot;&gt; 下4桁以外をマスクしたカード番号です。\\ Apple Payでは実際のカード番号ではなくデバイスアカウント番号と呼ばれる番号で決済が行われるため、このフィールドで返される値はデバイスアカウント番号をマスクしたものになります。\\ &lt;/span&gt; 形式：&#x60;************1234&#x60;  | [optional] |
| **expire** | **String** | カード有効期限。\\ 形式：&#x60;YYMM&#x60;  | [optional] |
| **holder_name** | **String** | カード名義人名。  | [optional] |
| **card_no_hash** | **String** | カード番号をもとに生成されたハッシュ値。\\ &lt;span class&#x3D;\&quot;smallText\&quot;&gt; おなじカード番号に対しては常に同じ値が返されます。\\ カード情報非保持の原則に基づき、fincodeユーザーはマスクされていないカード番号の代わりにこの値を保持することができます。 &lt;/span&gt;  | [optional] |
| **method** | [**CardPayMethod**](CardPayMethod.md) |  | [optional] |
| **pay_times** | [**CardPayTimes**](CardPayTimes.md) |  | [optional] |
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

instance = FincodeApiClient::PaymentApplePayListListInner.new(
  shop_id: s_***********,
  id: o_**********************,
  access_id: a_**********************,
  amount: 1000,
  tax: 100,
  total_amount: 1100,
  client_field_1: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_2: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_3: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  process_date: 2022/01/01 12:34:56.789,
  customer_id: c_**********************,
  customer_group_id: cg_**********,
  error_code: E**********,
  created: 2022/05/16 23:59:59.999,
  updated: 2022/05/16 23:59:59.999,
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

