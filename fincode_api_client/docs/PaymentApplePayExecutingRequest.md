# FincodeApiClient::PaymentApplePayExecutingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ この決済で利用する決済手段です。  - &#x60;Applepay&#x60;: Apple Pay  |  |
| **access_id** | **String** | 取引ID  |  |
| **token** | **String** | Apple Pay カードトークン\\ Apple Payが利用可能なデバイスから取得したトークンをBase64エンコードした値を設定します。\\ \\ トークンの取得方法 - Swift： &#x60;PKPayment.token.paymentData&#x60;の値をBase64エンコード - JavaScript： &#x60;ApplePayPaymentAuthorizedEvent.payment.token&#x60;の値をBase64エンコード  詳細は[Docs &gt; 決済処理を実行する（Apple Pay）](https://docs.fincode.jp/payment/applepay/execution)または[Offering Apple Pay in Your App](https://developer.apple.com/documentation/passkit_apple_pay_and_wallet/apple_pay/offering_apple_pay_in_your_app)（Apple公式）を参照できます。  |  |
| **customer_id** | **String** | 顧客ID\\ 購入者となる顧客のIDです。  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentApplePayExecutingRequest.new(
  pay_type: null,
  access_id: a_**********************,
  token: eyJoZWFkZXIiOnsiZXBoZW1lcmFsUHVibGljS2V5IjoidGVzdFB1YmxpY0tleSIsInB1YmxpY0tleUhhc2giOiJ0ZXN0S2V5SGFzaCIsInRyYW5zYWN0aW9uSWQiOiJ0ZXN0VHJhbnNhY3Rpb24ifSwiZGF0YSI6ImV5SmhjSEJzYVdOaGRHbHZibEJ5YVcxaGNubEJZMk52ZFc1MFRuVnRZbVZ5SWpvaU5ERXhNVEV4TVRFeE1URXhNVEV4TVNJc0ltRndjR3hwWTJGMGFXOXVSWGh3YVhKaGRHbHZia1JoZEdVaU9pSXlOakV5TXpFaUxDSmpkWEp5Wlc1amVVTnZaR1VpT2lJek9USWlMQ0owY21GdWMyRmpkR2x2YmtGdGIzVnVkQ0k2SWpFeE1URWlMQ0pqWVhKa2FHOXNaR1Z5VG1GdFpTSTZJaUlzSW1SbGRtbGpaVTFoYm5WbVlXTjBkWEpsY2tsa1pXNTBhV1pwWlhJaU9pSWlMQ0p3WVhsdFpXNTBSR0YwWVZSNWNHVWlPaUl6UkZObFkzVnlaU0lzSW5CaGVXMWxiblJFWVhSaElqcDdJbTl1YkdsdVpWQmhlVzFsYm5SRGNubHdkRzluY21GdElqb2lSSFZ0YlhsRFFWWldRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRU0lzSW1WamFVbHVaR2xqWVhSdmNpSTZJalVpZlgwPSIsInNpZ25hdHVyZSI6InRlc3RTaWduYXR1cmUiLCJ2ZXJzaW9uIjoiTW9jayJ9,
  customer_id: c_**********************
)
```

