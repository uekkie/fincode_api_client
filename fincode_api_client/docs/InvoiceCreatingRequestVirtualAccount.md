# FincodeApiClient::InvoiceCreatingRequestVirtualAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reference_invoice_id** | **String** | バーチャル口座 再利用 インボイスID\\ \\ あるインボイス情報が持つバーチャル口座を再利用する場合、そのインボイス情報のIDを参照先として指定します。\\ バーチャル口座の再利用が可能なインボイスの条件は以下の通りです。   - 参照するインボイスのステータスが &#x60;PAID&#x60; であること  - 参照するインボイスのステータスが &#x60;PAID&#x60; に遷移してから90日以内であること  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::InvoiceCreatingRequestVirtualAccount.new(
  reference_invoice_id: null
)
```

