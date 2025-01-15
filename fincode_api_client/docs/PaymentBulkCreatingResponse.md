# FincodeApiClient::PaymentBulkCreatingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | 一括決済ID  | [optional] |
| **shop_id** | **String** | ショップID  | [optional] |
| **pay_type** | [**PaymentBulkPayType**](PaymentBulkPayType.md) |  | [optional] |
| **status** | [**PaymentBulkStatus**](PaymentBulkStatus.md) |  | [optional] |
| **process_plan_date** | **String** | 一括決済 処理予定日\\ この一括決済の処理予定日です。\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **file_name** | **String** | 一括決済データファイル名  | [optional] |
| **process_start_date** | **String** | 一括決済 処理開始日時\\ この一括決済の処理開始日時です。\\ \\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **process_end_date** | **String** | 一括決済 処理終了日時\\ この一括決済の処理終了日時です。\\ \\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **total_count** | **Integer** | 一括決済 総件数\\ この一括決済に含まれる決済の件数です。  | [optional] |
| **process_success_count** | **Integer** | 一括決済 成功件数\\ この一括決済の処理に成功した決済の件数です。  | [optional] |
| **process_failure_count** | **Integer** | 一括決済 失敗件数\\ この一括決済の処理に失敗した決済の件数です。  | [optional] |
| **error_code** | **String** | この一括決済において発生したエラーのうち、一番最新のエラーのエラーコードです。\\ [各エラーコードの定義はこちらを参照](https://docs.fincode.jp/develop_support/error)して確認できます。  | [optional] |
| **delete_flag** | [**DeleteFlag**](DeleteFlag.md) |  | [optional] |
| **created** | **String** | 作成日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **updated** | **String** | 更新日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentBulkCreatingResponse.new(
  id: null,
  shop_id: s_***********,
  pay_type: null,
  status: null,
  process_plan_date: null,
  file_name: null,
  process_start_date: null,
  process_end_date: null,
  total_count: null,
  process_success_count: null,
  process_failure_count: null,
  error_code: E**********,
  delete_flag: null,
  created: 2022/05/16 23:59:59.999,
  updated: 2022/05/16 23:59:59.999
)
```

