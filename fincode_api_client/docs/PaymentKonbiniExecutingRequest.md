# FincodeApiClient::PaymentKonbiniExecutingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**PayType**](PayType.md) | 決済種別\\ この決済で利用する決済手段です。  - &#x60;Konbini&#x60;: コンビニ決済  |  |
| **access_id** | **String** | 取引ID  |  |
| **customer_id** | **String** | 顧客ID\\ 購入者となる顧客のIDです。  | [optional] |
| **payment_term_day** | **String** | 支払い期限日数\\ この決済の支払い期限日数です。&#x60;\&quot;0\&quot;&#x60;日から&#x60;\&quot;14\&quot;&#x60;日まで指定できます。  - &#x60;\&quot;0\&quot;&#x60;を指定すると決済を作成した当日に限り支払いが可能な決済が作成されます。 - デフォルト：&#x60;\&quot;2\&quot;&#x60;  | [optional] |
| **device_name** | **String** | デバイス名\\ バーコード表示を行うデバイスの名前を指定します。  - Androidの場合： [ユーザーエージェントクライアントヒントAPI](https://developer.mozilla.org/ja/docs/Web/API/User-Agent_Client_Hints_API)またはNavigator: userAgentプロパティ（非推奨）で取得できる文字列から取得したデバイス名を指定します。 - iPhoneの場合： 固定文字列&#x60;iPhone&#x60;を指定します。  |  |
| **win_width** | **String** | デバイス画面幅\\ バーコード表示を行うデバイスの画面幅を指定します。  - Androidの場合： &#x60;window.screen.width&#x60;で取得した値に &#x60;pixel_ratio&#x60;（ピクセル比）の値を乗じたものを指定します。 - iPhoneの場合： &#x60;window.screen.width&#x60;で取得した値を指定します。  |  |
| **win_height** | **String** | デバイス画面の高さ\\ バーコード表示を行うデバイス画面の高さを指定します。  - Androidの場合： &#x60;window.screen.height&#x60;で取得した値に &#x60;pixel_ratio&#x60;（ピクセル比）の値を乗じたものを指定します。 - iPhoneの場合： &#x60;window.screen.height&#x60;で取得した値を指定します。  |  |
| **pixel_ratio** | **String** | デバイスピクセル比\\ &#x60;window.devicePixelRatio&#x60;から取得した値を小数点以下2桁まで指定します。  |  |
| **win_size_type** | [**WinSizeType**](WinSizeType.md) |  |  |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentKonbiniExecutingRequest.new(
  pay_type: null,
  access_id: a_**********************,
  customer_id: c_**********************,
  payment_term_day: 2,
  device_name: iPhone,
  win_width: 375,
  win_height: 812,
  pixel_ratio: 2.00,
  win_size_type: null
)
```

