# FincodeApiClient::PaymentPayPayExecutingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ この決済で利用する決済手段です。  - &#x60;Paypay&#x60;: PayPay  |  |
| **access_id** | **String** | 取引ID  |  |
| **customer_id** | **String** | 顧客ID\\ 購入者となる顧客のIDです。  | [optional] |
| **redirect_url** | **String** | リダイレクトURL\\ 決済が完了した際のPayPayからのリダイレクト先URL。  |  |
| **redirect_type** | [**RedirectType**](RedirectType.md) |  | [optional] |
| **user_agent** | **String** | ユーザーエージェント\\ リクエストを送信したユーザーエージェントの情報。&#x60;redirect_type&#x60;が&#x60;1&#x60;（Webページ／Webアプリケーション）の場合指定できます。  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentPayPayExecutingRequest.new(
  pay_type: null,
  access_id: a_**********************,
  customer_id: c_**********************,
  redirect_url: https://your-service.example.com/on-payment-complete,
  redirect_type: null,
  user_agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3
)
```

