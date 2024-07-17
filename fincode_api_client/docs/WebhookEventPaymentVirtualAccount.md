# FincodeApiClient::WebhookEventPaymentVirtualAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **String** | ショップID  | [optional] |
| **id** | **String** | オーダーID\\ 決済情報のIDです。  | [optional] |
| **access_id** | **String** | 取引ID  | [optional] |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ この決済で利用する決済手段です。  - &#x60;Virtualaccount&#x60;: 銀行振込  | [optional] |
| **status** | [**PaymentStatus**](PaymentStatus.md) | 決済ステータス  - &#x60;UNPROCESSED&#x60;: 未処理&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;請求はまだ実行されていません。&lt;/span&gt; - &#x60;AWAITING_CUSTOMER_PAYMENT&#x60;: 購入者の支払い待ち&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;購入者によるバーチャル口座への振込を待っている状態。&lt;/span&gt; - &#x60;CAPTURED&#x60;: 売上確定&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;振込が完了し、売上が確定しています。&lt;/span&gt; - &#x60;CANCELED&#x60;: キャンセル&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;この決済はキャンセルされました。&lt;/span&gt; - &#x60;EXPIRED&#x60;: 決済の期限切れ&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;この決済は期限が切れています。&lt;/span&gt;  | [optional] |
| **customer_group_id** | **String** | 顧客情報共有グループID\\ fincodeは同じ顧客情報共有グループIDを持つショップ間で顧客情報を共有します。  | [optional] |
| **customer_id** | **String** | 顧客ID  | [optional] |
| **process_date** | **String** | 決済 処理日時\\ 決済の各種処理（決済実行、キャンセルなど）が行われた日時です。  | [optional] |
| **client_field_1** | **String** | 加盟店自由項目 1  | [optional] |
| **client_field_2** | **String** | 加盟店自由項目 2  | [optional] |
| **client_field_3** | **String** | 加盟店自由項目 3  | [optional] |
| **amount** | **String** | 利用金額  | [optional] |
| **tax** | **String** | 税送料  | [optional] |
| **billing_amount** | **Integer** | 振込依頼金額  | [optional] |
| **billing_tax** | **Integer** | 振込依頼金額（税送料）  | [optional] |
| **billing_total_amount** | **Integer** | 振込依頼金額 合計\\ 振込依頼金額と振込依頼金額（税送料）の合計金額です。  | [optional] |
| **payment_term_day** | **Integer** | 支払期限日数\\ \\ &#x60;1&#x60;～&#x60;90&#x60;日の範囲でバーチャル口座で振り込み可能な期限日数を指定します。\\ 決済実行の翌日を起算日とし、期限日の23:59:59.999までが支払期限となります。  | [optional] |
| **payment_term** | **String** | 支払期限\\ 形式： &#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **payment_method_id** | **String** | 決済手段ID | [optional] |
| **va_branch_code** | **String** | 支店コード\\ \\ 発行されたバーチャル口座の支店コードです。  | [optional] |
| **va_branch_name** | **String** | 支店名\\ \\ 発行されたバーチャル口座の支店名です。  | [optional] |
| **va_account_number** | **String** | 口座番号\\ \\ 発行されたバーチャル口座の口座番号です。  | [optional] |
| **va_account_name** | **String** | 口座名義\\ \\ 発行されたバーチャル口座の口座名義です。  | [optional] |
| **account_assignment_date** | **String** | バーチャル口座 割当日時\\ 形式： &#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **virtual_account_id** | **String** | バーチャル口座ID\\ \\ 発行されたバーチャル口座のIDです。  | [optional] |
| **transaction_date** | **String** | 取引日\\ \\ 形式： &#x60;yyyy/MM/dd&#x60;  | [optional] |
| **value_date** | **String** | 起算日\\ \\ 銀行で入金が処理された営業日\\ 形式： &#x60;yyyy/MM/dd&#x60;  | [optional] |
| **remitter_bank_name** | **String** | 振込依頼人 銀行名\\ \\ 振込依頼人（購入者）の銀行名です。  | [optional] |
| **remitter_branch_name** | **String** | 振込依頼人 支店名\\ \\ 振込依頼人（購入者）の支店名です。  | [optional] |
| **remitter_account_name** | **String** | 振込依頼人 氏名\\ \\ 振込依頼人（購入者）の氏名です。  | [optional] |
| **error_code** | **String** | この決済において発生したエラーのうち、一番最新のエラーのエラーコードです。\\ [各エラーコードの定義はこちらを参照](https://docs.fincode.jp/develop_support/error)して確認できます。  | [optional] |
| **overpayment_flag** | [**PropertiesOverpaymentFlag**](PropertiesOverpaymentFlag.md) |  | [optional] |
| **cancel_overpayment_flag** | [**PropertiesCancelOverpaymentFlag**](PropertiesCancelOverpaymentFlag.md) |  | [optional] |
| **expire_overpayment_flag** | [**ExpireOverpaymentFlag**](ExpireOverpaymentFlag.md) |  | [optional] |
| **event** | [**FincodeEvent**](FincodeEvent.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::WebhookEventPaymentVirtualAccount.new(
  shop_id: s_***********,
  id: o_**********************,
  access_id: a_**********************,
  pay_type: null,
  status: null,
  customer_group_id: cg_***********,
  customer_id: c_**********************,
  process_date: 2022/01/01 12:34:56.789,
  client_field_1: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_2: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  client_field_3: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore,
  amount: 1000,
  tax: 100,
  billing_amount: 1000,
  billing_tax: 100,
  billing_total_amount: 1100,
  payment_term_day: 3,
  payment_term: 2022/05/16 23:59:59.999,
  payment_method_id: pm_**********************,
  va_branch_code: 502,
  va_branch_name: アジサイ,
  va_account_number: 1234567,
  va_account_name: ジーエムオーイプシロン（カ,
  account_assignment_date: 2022/05/16 12:34:56.999,
  virtual_account_id: 1234567890,
  transaction_date: 2022/05/16,
  value_date: 2022/05/16,
  remitter_bank_name: イロハギンコウ,
  remitter_branch_name: ホンテン,
  remitter_account_name: ヤマダ　タロウ,
  error_code: E**********,
  overpayment_flag: null,
  cancel_overpayment_flag: null,
  expire_overpayment_flag: null,
  event: null
)
```

