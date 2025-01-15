# FincodeApiClient::CardDestination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_card_info_master_id** | **Integer** | カードマスタID  | [optional] |
| **examination_master_id** | **Float** | 審査種別マスタID   - &#x60;1&#x60;：  カード決済（VISA / Mastercard, UCカード社） - &#x60;2&#x60;：  カード決済（JCB / American Express / Diners Club / Discover） - &#x60;3&#x60;：  カード決済（VISA / Mastercard, トヨタファイナンス社）  | [optional] |
| **destination** | **String** | 仕向け先  | [optional] |
| **destination_type** | **Float** | 仕向け先種別  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::CardDestination.new(
  contract_card_info_master_id: 123456789,
  examination_master_id: 1,
  destination: null,
  destination_type: null
)
```

