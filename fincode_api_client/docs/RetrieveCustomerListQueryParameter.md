# FincodeApiClient::RetrieveCustomerListQueryParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | ページ番号 | [optional] |
| **limit** | **Integer** | 1回で取得するデータの最大件数 | [optional] |
| **count_only** | **Boolean** | 総件数のみ取得するか。\\ &#x60;true&#x60;を指定した場合、検索結果の総件数（&#x60;total_count&#x60;）のみ取得します。  | [optional] |
| **id** | **String** | 顧客ID  | [optional] |
| **name** | **String** | 顧客名  | [optional] |
| **email** | **String** | 顧客のメールアドレス  | [optional] |
| **created_from** | **String** | 作成日の範囲指定 開始日\\ この日付以降に作成された顧客情報を検索できます。\\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **created_to** | **String** | 作成日の範囲指定 終了日\\ この日付以前に作成された顧客情報を検索できます。\\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **sort** | **String** | ソートする項目と順序を指定します。\\ 例： &#x60;?sort&#x3D;updated␣desc,created␣asc&#x60;\\ \\ ソート可能な項目  - &#x60;id&#x60;: 顧客ID - &#x60;name&#x60;: 顧客名 - &#x60;email&#x60;: 顧客メールアドレス - &#x60;created&#x60;: 作成日時 - &#x60;updated&#x60;: 更新日時  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::RetrieveCustomerListQueryParameter.new(
  page: null,
  limit: null,
  count_only: null,
  id: c_**********************,
  name: Jane Doe,
  email: jane@example.com,
  created_from: 2022/05/16,
  created_to: 2022/05/16,
  sort: updated␣desc,created␣asc
)
```

