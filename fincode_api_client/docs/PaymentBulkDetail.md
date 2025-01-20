# FincodeApiClient::PaymentBulkDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | 一括決済ID  | [optional] |
| **shop_id** | **String** | ショップID  | [optional] |
| **order_id** | **String** | オーダーID\\ 決済情報のIDです。  | [optional] |
| **status** | [**PaymentBulkDetailStatus**](PaymentBulkDetailStatus.md) | 決済ステータス  - &#x60;CHECKED&#x60;: チェック済み&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;データのチェックが完了し、決済処理の実行を待っています。&lt;/span&gt; - &#x60;SUCCEEDED&#x60;: 決済成功&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;この決済の処理においてエラーが発生せず請求が完了しました。&lt;/span&gt; - &#x60;FAILED&#x60;: 決済失敗&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;この決済の処理において1件以上のエラーが発生しました。&lt;/span&gt;  | [optional] |
| **access_id** | **String** | 取引ID  | [optional] |
| **job_code** | [**CardPaymentJobCode**](CardPaymentJobCode.md) | 取引種別  - &#x60;CAPTURE&#x60;：売上確定  | [optional] |
| **amount** | **Integer** | 利用金額  | [optional] |
| **tax** | **Integer** | 税送料  | [optional] |
| **total_amount** | **Integer** | 合計金額\\ &#x60;amount&#x60;と&#x60;tax&#x60;の合計値です。  | [optional] |
| **method** | [**CardPayMethod**](CardPayMethod.md) |  | [optional] |
| **pay_times** | [**CardPayTimesResponse**](CardPayTimesResponse.md) |  | [optional] |
| **customer_id** | **String** | 顧客ID  | [optional] |
| **card_id** | **String** | カードID  | [optional] |
| **client_field_1** | **String** | 加盟店自由項目 1 | [optional] |
| **client_field_2** | **String** | 加盟店自由項目 2 | [optional] |
| **client_field_3** | **String** | 加盟店自由項目 3 | [optional] |
| **error_code** | **String** | この決済において発生したエラーのうち、一番最新のエラーのエラーコードです。\\ [各エラーコードの定義はこちらを参照](https://docs.fincode.jp/develop_support/error)して確認できます。  | [optional] |
| **created** | **String** | 作成日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **updated** | **String** | 更新日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **item_code** | **String** | 商品コード  | [optional] |
| **transaction_id** | **String** | トランザクションID  | [optional] |
| **approve** | **String** | 承認番号  | [optional] |
| **forward** | **String** | 仕向け先  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentBulkDetail.new(
  id: null,
  shop_id: s_***********,
  order_id: o_**********************,
  status: null,
  access_id: a_**********************,
  job_code: null,
  amount: 1000,
  tax: 100,
  total_amount: 1100,
  method: null,
  pay_times: null,
  customer_id: c_**********************,
  card_id: cs_**********************,
  client_field_1: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_2: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_3: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  error_code: E**********,
  created: 2022/05/16 23:59:59.999,
  updated: 2022/05/16 23:59:59.999,
  item_code: null,
  transaction_id: null,
  approve: null,
  forward: 12345
)
```

