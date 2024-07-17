# FincodeApiClient::CardDestination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_card_info_master_id** | **Integer** | カードマスタID  | [optional] |
| **examination_master_id** | [**ExaminationMasterId**](ExaminationMasterId.md) |  | [optional] |
| **destination** | **String** | 仕向け先  | [optional] |
| **destination_type** | **Float** | 仕向け先種別  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::CardDestination.new(
  contract_card_info_master_id: 123456789,
  examination_master_id: null,
  destination: null,
  destination_type: null
)
```

