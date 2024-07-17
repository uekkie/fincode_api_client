# FincodeApiClient::PaymentCardCapturingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ この決済で利用する決済手段です。  - &#x60;Card&#x60;: カード  |  |
| **access_id** | **String** | 取引ID  |  |
| **method** | [**CardPayMethod**](CardPayMethod.md) | 支払方法\\ &#x60;CANCELED&#x60;ステータスの決済に対して指定ができます。  - &#x60;1&#x60;: 一括払い - &#x60;2&#x60;: 分割払い - &#x60;5&#x60;: リボ払い | [optional] |
| **pay_times** | [**CardPayTimes**](CardPayTimes.md) | （分割払いの場合）支払回数\\ &#x60;CANCELED&#x60;ステータスの決済に対して指定ができます。\\ \\ 指定可能な値： &#x60;3&#x60;, &#x60;5&#x60;, &#x60;6&#x60;, &#x60;10&#x60;, &#x60;12&#x60;, &#x60;15&#x60;, &#x60;18&#x60;, &#x60;20&#x60;, &#x60;24&#x60;  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentCardCapturingRequest.new(
  pay_type: null,
  access_id: a_**********************,
  method: null,
  pay_times: null
)
```
