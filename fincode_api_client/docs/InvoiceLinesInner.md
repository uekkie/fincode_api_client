# FincodeApiClient::InvoiceLinesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **String** | 日付   形式： &#x60;yyyy/MM/dd&#x60;  | [optional] |
| **name** | **String** | 品目  | [optional] |
| **unit_price** | **Float** | 単価  | [optional] |
| **quantity** | **Integer** | 数量  | [optional] |
| **tax_rate** | **Float** | 適用税率（%）  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::InvoiceLinesInner.new(
  date: null,
  name: null,
  unit_price: null,
  quantity: null,
  tax_rate: null
)
```

