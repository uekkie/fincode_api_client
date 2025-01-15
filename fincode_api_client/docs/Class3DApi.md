# FincodeApiClient::Class3DApi

All URIs are relative to *https://api.fincode.jp*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**confirm_three_d_secureecure_authentication**](Class3DApi.md#confirm_three_d_secureecure_authentication) | **GET** /v1/secure2/{access_id} | 3Dセキュア 認証結果確定 |
| [**execute_three_d_secureecure_authentication**](Class3DApi.md#execute_three_d_secureecure_authentication) | **PUT** /v1/secure2/{access_id} | 3Dセキュア 認証実行 |


## confirm_three_d_secureecure_authentication

> <ThreeDSecureConfirmingResponse> confirm_three_d_secureecure_authentication(access_id, opts)

3Dセキュア 認証結果確定

`access_id`で指定したカード決済取引の3Dセキュア認証の結果を確定します。\\ \\ `challenge_url`上で購入者がチャレンジ認証実施後、`tds2_ret_url`に対し`event`パラメータで`AuthResultReady`イベントが通知されたとき、このAPIを呼び出します。  - レスポンスの`tds2_trans_result`が`Y`または`A`のとき、認証後決済 実行APIを呼び出し3Dセキュア認証された決済を完了させます。 - レスポンスの`tds2_trans_result`が上記以外の場合、3Dセキュア認証で決済が拒否されたことを示します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure Bearer authorization: Public-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::Class3DApi.new
access_id = TODO # String | 取引ID
opts = {
  pay_type: 'Card', # String | この決済で利用する決済手段です。未指定の場合、`Card`となります。  - `Card`: カード（デフォルト） - `Googlepay`: Google Pay 
  tenant_shop_id: TODO # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ このテナントショップの決済情報のうち、指定した`access_id`のカード決済の3Dセキュア認証の結果を確定します。 
}

begin
  # 3Dセキュア 認証結果確定
  result = api_instance.confirm_three_d_secureecure_authentication(access_id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling Class3DApi->confirm_three_d_secureecure_authentication: #{e}"
end
```

#### Using the confirm_three_d_secureecure_authentication_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThreeDSecureConfirmingResponse>, Integer, Hash)> confirm_three_d_secureecure_authentication_with_http_info(access_id, opts)

```ruby
begin
  # 3Dセキュア 認証結果確定
  data, status_code, headers = api_instance.confirm_three_d_secureecure_authentication_with_http_info(access_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThreeDSecureConfirmingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling Class3DApi->confirm_three_d_secureecure_authentication_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_id** | [**String**](.md) | 取引ID |  |
| **pay_type** | **String** | この決済で利用する決済手段です。未指定の場合、&#x60;Card&#x60;となります。  - &#x60;Card&#x60;: カード（デフォルト） - &#x60;Googlepay&#x60;: Google Pay  | [optional] |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ このテナントショップの決済情報のうち、指定した&#x60;access_id&#x60;のカード決済の3Dセキュア認証の結果を確定します。  | [optional] |

### Return type

[**ThreeDSecureConfirmingResponse**](ThreeDSecureConfirmingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Public-Bearer-Auth](../README.md#Public-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## execute_three_d_secureecure_authentication

> <ThreeDSecureAuthorizingResponse> execute_three_d_secureecure_authentication(access_id, opts)

3Dセキュア 認証実行

`access_id`で指定したカード決済取引の3Dセキュア2.0認証を開始します。\\ \\ 用意した`tds2_ret_url`に対し`event`パラメータで`ThreeDSecureMethodFinished`もしくは`ThreeDSecureMethodSkipped`イベントが通知されたとき、このAPIを呼び出します。  - レスポンスの`tds2_trans_result`が`Y`または`A`のとき、認証後決済 実行APIを呼び出し3Dセキュア認証された決済を完了させます。 - レスポンスの`tds2_trans_result`が`C`のとき、`challenge_url`にリダイレクトし購入者にチャレンジ認証を実施させ、結果を3Dセキュア認証 結果確定APIで確定します。 - レスポンスの`tds2_trans_result`が上記以外の場合、3Dセキュア認証で決済が拒否されたことを示します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure Bearer authorization: Public-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::Class3DApi.new
access_id = TODO # String | 取引ID
opts = {
  tenant_shop_id: TODO, # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ このテナントショップの決済情報のうち、指定した`access_id`のカード決済の3Dセキュア認証を開始します。 
  three_d_secure_authorizing_request: FincodeApiClient::ThreeDSecureAuthorizingRequest.new({param: 'ew0KICAgICJicm93c2VyQWNjZXB0SGVhZGVyIjogInRleHQvaHRtbCxhcHBsaWNhdGlvbi94aHRtbCt4bWwsYXBwbGljYXRpb24veG1sO3E9MC45LGltYWdlL2F2aWYsaW1hZ2Uvd2VicCxpbWFnZS9hcG5nLCovKjtxPTAuOCxhcHBsaWNhdGlvbi9zaWduZWQtZXhjaGFuZ2U7dj1iMztxPTAuNyIsDQogICAgImJyb3dzZXJJUCI6ICIxOTIuMTY4LngueCIsDQogICAgImJyb3dzZXJKYXZhRW5hYmxlZCI6IGZhbHNlLA0KICAgICJicm93c2VyTGFuZ3VhZ2UiOiAiamEtSlAiLA0KICAgICJicm93c2VySmF2YXNjcmlwdEVuYWJsZWQiOiB0cnVlLA0KICAgICJicm93c2VyQ29sb3JEZXB0aCI6ICJ7e0NvbG9yIGRlcHRofX0iLA0KICAgICJicm93c2VyU2NyZWVuSGVpZ2h0IjogInt7U2NyZWVuIGhlaWdodH19IiwNCiAgICAiYnJvd3NlclNjcmVlbldpZHRoIjogInt7U2NyZWVuIHdpZHRofX0iLA0KICAgICJicm93c2VyVFoiOiAiLTU0MCIsDQogICAgImJyb3dzZXJVc2VyQWdlbnQiOiAiTW96aWxsYS81LjAgKE1hY2ludG9zaDsgSW50ZWwgTWFjIE9TIFggMTBfMTVfNykgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzEyMi4wLjAuMCBTYWZhcmkvNTM3LjM2Ig0KfQ0K'}) # ThreeDSecureAuthorizingRequest | 
}

begin
  # 3Dセキュア 認証実行
  result = api_instance.execute_three_d_secureecure_authentication(access_id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling Class3DApi->execute_three_d_secureecure_authentication: #{e}"
end
```

#### Using the execute_three_d_secureecure_authentication_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThreeDSecureAuthorizingResponse>, Integer, Hash)> execute_three_d_secureecure_authentication_with_http_info(access_id, opts)

```ruby
begin
  # 3Dセキュア 認証実行
  data, status_code, headers = api_instance.execute_three_d_secureecure_authentication_with_http_info(access_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThreeDSecureAuthorizingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling Class3DApi->execute_three_d_secureecure_authentication_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_id** | [**String**](.md) | 取引ID |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ このテナントショップの決済情報のうち、指定した&#x60;access_id&#x60;のカード決済の3Dセキュア認証を開始します。  | [optional] |
| **three_d_secure_authorizing_request** | [**ThreeDSecureAuthorizingRequest**](ThreeDSecureAuthorizingRequest.md) |  | [optional] |

### Return type

[**ThreeDSecureAuthorizingResponse**](ThreeDSecureAuthorizingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Public-Bearer-Auth](../README.md#Public-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

