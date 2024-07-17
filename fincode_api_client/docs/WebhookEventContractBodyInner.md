# FincodeApiClient::WebhookEventContractBodyInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acquirer** | [**Acquirer**](Acquirer.md) |  | [optional] |
| **examination_task** | **String** | 審査対象（和名）  - &#x60;決済事業者審査: VISA/MASTER-UC&#x60; - &#x60;決済事業者審査: VISA/MASTER-TFC&#x60; - &#x60;決済事業者審査: JCB/AMEX&#x60; - &#x60;決済事業者審査: DINERS&#x60; - &#x60;決済事業者審査: ApplePay-UC&#x60; - &#x60;決済事業者審査: ApplePay-JCB/AMEX&#x60; - &#x60;決済事業者審査: コンビニ決済&#x60; - &#x60;決済事業者審査: PayPay決済&#x60; - &#x60;決済事業者審査: 口座振替決済&#x60;  | [optional] |
| **status_code** | [**AcquirerContractStatus**](AcquirerContractStatus.md) |  | [optional] |
| **status** | **String** | 決済事業者 契約ステータス（和名）  - &#x60;申込なし&#x60; - &#x60;審査受付&#x60; - &#x60;審査待ち&#x60; - &#x60;審査中&#x60; - &#x60;審査保留中&#x60; - &#x60;審査OK&#x60; - &#x60;利用可能&#x60; - &#x60;審査NG&#x60; - &#x60;申込中止&#x60;  | [optional] |
| **is_updated** | **Boolean** | 更新の有無\\ \\ 更新があった場合は &#x60;true&#x60;になります。  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::WebhookEventContractBodyInner.new(
  acquirer: null,
  examination_task: null,
  status_code: null,
  status: null,
  is_updated: null
)
```

