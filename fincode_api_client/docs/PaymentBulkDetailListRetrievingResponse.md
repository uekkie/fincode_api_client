# FincodeApiClient::PaymentBulkDetailListRetrievingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_count** | **Integer** | 総件数 | [optional] |
| **last_page** | **Integer** | 最後のページのページ数 | [optional] |
| **current_page** | **Integer** | 現在のページのページ数 | [optional] |
| **limit** | **Integer** | 1ページの最大件数 | [optional] |
| **link_next** | **String** | 次のページのコンテンツを取得するためのURL | [optional] |
| **link_previous** | **String** | 前のページのコンテンツを取得するためのURL | [optional] |
| **list** | [**Array&lt;PaymentBulkDetail&gt;**](PaymentBulkDetail.md) | 一括決済詳細リスト\\ \\ 決済1件につき1オブジェクトが格納され、オブジェクト内には決済情報が格納されます。  | [optional] |
| **error_detail** | [**Array&lt;PaymentBulkErrorDetail&gt;**](PaymentBulkErrorDetail.md) | 一括決済エラー詳細リスト\\ \\ エラー1件につき1オブジェクトが格納され、オブジェクト内にはエラーが発生した決済のIDとその決済で発生したエラーのリストが格納されます。  | [optional] |
| **error_code** | **String** | この一括決済処理において発生したエラーのうち、一番最新のエラーのエラーコードです。\\ [各エラーコードの定義はこちらを参照](https://docs.fincode.jp/develop_support/error)して確認できます。  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentBulkDetailListRetrievingResponse.new(
  total_count: 100,
  last_page: 20,
  current_page: 3,
  limit: 5,
  link_next: /v1/{resource}?limit&#x3D;5&amp;page&#x3D;4,
  link_previous: /v1/{resource}?limit&#x3D;5&amp;page&#x3D;2,
  list: null,
  error_detail: null,
  error_code: E**********
)
```

