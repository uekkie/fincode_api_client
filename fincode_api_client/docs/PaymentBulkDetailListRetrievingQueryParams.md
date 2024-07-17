# FincodeApiClient::PaymentBulkDetailListRetrievingQueryParams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**PaymentBulkPayType**](PaymentBulkPayType.md) | 決済種別\\ 決済種別を指定します。  - &#x60;Card&#x60;: カード  |  |
| **order_id** | **String** | オーダーID\\ 決済情報のIDです。  | [optional] |
| **status** | [**PaymentBulkDetailStatus**](PaymentBulkDetailStatus.md) | ステータス\\ 決済ステータスを指定します。カンマ区切りにすることで複数指定（OR検索）できます。  - &#x60;CHECKED&#x60;: チェック済み&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;データのチェックが完了し、決済処理の実行を待っています。&lt;/span&gt; - &#x60;SUCCEEDED&#x60;: 決済成功&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;この決済の処理においてエラーが発生せず請求が完了しました。&lt;/span&gt; - &#x60;FAILED&#x60;: 決済失敗&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;この決済の処理において1件以上のエラーが発生しました。&lt;/span&gt;  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentBulkDetailListRetrievingQueryParams.new(
  pay_type: null,
  order_id: o_**********************,
  status: null
)
```

