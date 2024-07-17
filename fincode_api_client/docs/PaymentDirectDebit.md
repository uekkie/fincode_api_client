# FincodeApiClient::PaymentDirectDebit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ この決済で利用する決済手段です。  - &#x60;Directdebit&#x60;: 口座振替  | [optional] |
| **status** | [**PaymentStatus**](PaymentStatus.md) | 決済ステータス  - &#x60;UNPROCESSED&#x60;: 未処理&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;振替はまだ実行されていません。&lt;/span&gt; - &#x60;AWAITING_PAYMENT_APPROVAL&#x60;: 決済処理待ち&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;fincodeおよび金融機関による振替処理を待っています。&lt;/span&gt; - &#x60;CAPTURED&#x60;: 売上確定&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;振替が完了し、売上が確定しています。&lt;/span&gt; - &#x60;CANCELED&#x60;: キャンセル&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;この振替はキャンセルされました。&lt;/span&gt; - &#x60;FAILED&#x60;: 請求失敗&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;何らかの理由により振替に失敗しました。&lt;/span&gt;  | [optional] |
| **result_code** | [**DirectDebitResultCode**](DirectDebitResultCode.md) |  | [optional] |
| **target_date** | **String** | 振替指定日\\ 振替を行う日を指定します。下記の日付を指定できます。  - &#x60;yyyy/MM/05&#x60;: 5日 - &#x60;yyyy/MM/06&#x60;: 6日 - &#x60;yyyy/MM/23&#x60;: 23日 - &#x60;yyyy/MM/27&#x60;: 27日  形式： &#x60;yyyy/MM/dd&#x60;\\ 実際の振替は営業日に行われるため、必ずしも指定した日付に引き落としはされません。\\ 詳細は[Docs &gt; 口座振替年間スケジュール](https://docs.fincode.jp/payment/directdebit/schedule)の「振替日」の列で確認できます。  | [optional] |
| **withdrawal_date** | **String** | 引き落とし日\\ 実際に購入者の口座から引き落としが行われた実績日です。\\ \\ 形式： &#x60;yyyy/MM/dd&#x60;  | [optional] |
| **request_accept_end_date** | **String** | 請求依頼受付期間 終了日\\ 振替依頼を受け付ける最終日。この日付の23:59までに振替依頼（決済実行）を受け付けます。\\ \\ 形式： &#x60;yyyy/MM/dd&#x60;\\ 詳細は[Docs &gt; 口座振替年間スケジュール](https://docs.fincode.jp/payment/directdebit/schedule)の「請求依頼受付期間終了日」の列で確認できます。  | [optional] |
| **transfer_return_date** | **String** | 請求結果反映 予定日\\ \\ 形式： &#x60;yyyy/MM/dd&#x60;\\ 詳細は[Docs &gt; 口座振替年間スケジュール](https://docs.fincode.jp/payment/directdebit/schedule)の「振替結果返却日」の列で確認できます。  | [optional] |
| **payment_method_id** | **String** | 決済手段ID\\ この決済に使用された決済手段のIDです。  | [optional] |
| **bank_code** | **String** | 金融機関コード\\ fincodeの口座振替に対応している金融機関のコードのリストは[Docs &gt; 利用可能な金融機関（口座振替）](https://docs.fincode.jp/payment/directdebit/restriction)で参照できます。  | [optional] |
| **bank_name** | **String** | 金融機関名  | [optional] |
| **branch_code** | **String** | 支店コード  | [optional] |
| **branch_name** | **String** | 支店名  | [optional] |
| **remarks** | **String** | ご利用明細表示内容  - フォーマット：半角英数カナ／全角英数カナ／一部の記号／半角全角スペース - デフォルト： &#x60;ショップ名カナの先頭9文字&#x60;  ※ 利用可能な記号  - 半角：&#x60;.&#x60;、&#x60;(&#x60;、&#x60;)&#x60;、&#x60;–&#x60; - 全角：&#x60;．&#x60;、&#x60;（&#x60;、&#x60;）&#x60;、&#x60;ー&#x60;  | [optional] |
| **subscription_id** | **String** | サブスクリプションID\\ この決済情報がブスクリプションにより生成されたものである場合、このフィールドにサブスクリプションIDが設定されます。  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentDirectDebit.new(
  pay_type: null,
  status: null,
  result_code: null,
  target_date: 2022/05/06,
  withdrawal_date: 2022/05/06,
  request_accept_end_date: 2022/04/25,
  transfer_return_date: 2022/05/11,
  payment_method_id: null,
  bank_code: 0310,
  bank_name: ,
  branch_code: 101,
  branch_name: null,
  remarks: フィンコードショッ,
  subscription_id: su_*********************
)
```

