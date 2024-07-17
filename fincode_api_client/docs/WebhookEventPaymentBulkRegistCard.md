# FincodeApiClient::WebhookEventPaymentBulkRegistCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **String** | ショップID  | [optional] |
| **bulk_payment_id** | **String** | 一括決済ID  | [optional] |
| **file_name** | **String** | 一括決済データファイル名  | [optional] |
| **status** | [**PaymentBulkStatus**](PaymentBulkStatus.md) |  | [optional] |
| **regist_total_count** | **String** | 総件数\\ \\ この一括決済に登録された決済の件数です。  | [optional] |
| **error_total_count** | **String** | エラー件数\\ \\ この一括決済においてエラーが発生した決済の件数です。  | [optional] |
| **pay_type** | [**PaymentBulkPayType**](PaymentBulkPayType.md) |  | [optional] |
| **bulk_search_url** | **String** | この一括決済の一括決済 詳細情報一覧取得APIのURLです。  | [optional] |
| **error_code** | **String** | この一括決済において発生したエラーのうち、一番最新のエラーのエラーコードです。\\ [各エラーコードの定義はこちらを参照](https://docs.fincode.jp/develop_support/error)して確認できます。  | [optional] |
| **event** | [**FincodeEvent**](FincodeEvent.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::WebhookEventPaymentBulkRegistCard.new(
  shop_id: s_***********,
  bulk_payment_id: null,
  file_name: null,
  status: null,
  regist_total_count: null,
  error_total_count: null,
  pay_type: null,
  bulk_search_url: https://api.test.fincode.jp/v1/payments/bulk/{bulk_payment_id}?pay_type&#x3D;Card,
  error_code: E**********,
  event: null
)
```

