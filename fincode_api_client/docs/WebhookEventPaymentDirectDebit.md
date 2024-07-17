# FincodeApiClient::WebhookEventPaymentDirectDebit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **String** | ショップID  | [optional] |
| **order_id** | **String** | オーダーID\\ 決済情報のIDです。  | [optional] |
| **access_id** | **String** | 取引ID  | [optional] |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ この決済で利用する決済手段です。  - &#x60;Directdebit&#x60;: 口座振替  | [optional] |
| **status** | [**PaymentStatus**](PaymentStatus.md) | 決済ステータス  - &#x60;UNPROCESSED&#x60;: 未処理&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;振替はまだ実行されていません。&lt;/span&gt; - &#x60;AWAITING_PAYMENT_APPROVAL&#x60;: 決済処理待ち&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;fincodeおよび金融機関による振替処理を待っています。&lt;/span&gt; - &#x60;CAPTURED&#x60;: 売上確定&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;振替が完了し、売上が確定しています。&lt;/span&gt; - &#x60;CANCELED&#x60;: キャンセル&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;この振替はキャンセルされました。&lt;/span&gt; - &#x60;FAILED&#x60;: 請求失敗&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;何らかの理由により振替に失敗しました。&lt;/span&gt;  | [optional] |
| **customer_id** | **String** | 顧客ID  | [optional] |
| **payment_method_id** | **String** | 決済手段ID | [optional] |
| **result_code** | [**DirectDebitResultCode**](DirectDebitResultCode.md) |  | [optional] |
| **client_field_1** | **String** | 加盟店自由項目 1  | [optional] |
| **client_field_2** | **String** | 加盟店自由項目 2  | [optional] |
| **client_field_3** | **String** | 加盟店自由項目 3  | [optional] |
| **amount** | **String** | 利用金額  | [optional] |
| **tax** | **String** | 税送料  | [optional] |
| **process_date** | **String** | 決済 処理日時\\ 決済の各種処理（決済実行、キャンセルなど）が行われた日時です。  | [optional] |
| **target_date** | **String** | 振替指定日  | [optional] |
| **withdrawal_date** | **String** | 引き落とし日\\ 実際に購入者の口座から引き落としが行われた実績日です。\\ \\ 形式： &#x60;yyyy/MM/dd&#x60;  | [optional] |
| **request_accept_end_date** | **String** | 請求依頼受付期間 終了日\\ 振替依頼を受け付ける最終日。この日付の23:59までに振替依頼（決済実行）を受け付けます。\\ \\ 形式： &#x60;yyyy/MM/dd&#x60;\\ 詳細は[Docs &gt; 口座振替年間スケジュール](https://docs.fincode.jp/payment/directdebit/schedule)の「請求依頼受付期間終了日」の列で確認できます。  | [optional] |
| **transfer_return_date** | **String** | 請求結果反映 予定日\\ \\ 形式： &#x60;yyyy/MM/dd&#x60;\\ 詳細は[Docs &gt; 口座振替年間スケジュール](https://docs.fincode.jp/payment/directdebit/schedule)の「振替結果返却日」の列で確認できます。  | [optional] |
| **remarks** | **String** | ご利用明細表示内容  | [optional] |
| **subscription_id** | **String** | サブスクリプションID  | [optional] |
| **error_code** | **String** | この決済において発生したエラーのうち、一番最新のエラーのエラーコードです。\\ [各エラーコードの定義はこちらを参照](https://docs.fincode.jp/develop_support/error)して確認できます。  | [optional] |
| **event** | [**FincodeEvent**](FincodeEvent.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::WebhookEventPaymentDirectDebit.new(
  shop_id: s_***********,
  order_id: o_**********************,
  access_id: a_**********************,
  pay_type: null,
  status: null,
  customer_id: c_**********************,
  payment_method_id: pm_**********************,
  result_code: null,
  client_field_1: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_2: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_3: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  amount: 1000,
  tax: 100,
  process_date: 2022/01/01 12:34:56.789,
  target_date: 2022/05/06,
  withdrawal_date: 2022/05/06,
  request_accept_end_date: 2022/04/25,
  transfer_return_date: 2022/05/11,
  remarks: フィンコードショッ,
  subscription_id: su_*********************,
  error_code: E**********,
  event: null
)
```

