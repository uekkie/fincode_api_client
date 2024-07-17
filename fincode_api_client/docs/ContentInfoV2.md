# FincodeApiClient::ContentInfoV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content1_name** | **String** | 商材1 名称  |  |
| **content1_description** | **String** | 商材1 説明  |  |
| **content1_unit_price** | **Integer** | 商材1 単価  |  |
| **content2_name** | **String** | 商材2 名称  | [optional] |
| **content2_description** | **String** | 商材2 説明  | [optional] |
| **content2_unit_price** | **Integer** | 商材2 単価  | [optional] |
| **content3_name** | **String** | 商材3 名称  | [optional] |
| **content3_description** | **String** | 商材3 説明  | [optional] |
| **content3_unit_price** | **Integer** | 商材3 単価  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::ContentInfoV2.new(
  content1_name: サンプル商材1,
  content1_description: サンプル商材1の説明,
  content1_unit_price: 1000,
  content2_name: サンプル商材2,
  content2_description: サンプル商材2の説明,
  content2_unit_price: 2000,
  content3_name: サンプル商材3,
  content3_description: サンプル商材3の説明,
  content3_unit_price: 3000
)
```
