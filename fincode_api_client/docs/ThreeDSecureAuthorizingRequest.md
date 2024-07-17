# FincodeApiClient::ThreeDSecureAuthorizingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **param** | **String** | ブラウザ情報\\ \\ 購入者が&#x60;acs_url&#x60;にアクセスしたことをトリガーにfincodeが&#x60;tds2_ret_url&#x60;宛てに送信するデータのうち、&#x60;param&#x60;の値を設定します。  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::ThreeDSecureAuthorizingRequest.new(
  param: ew0KICAgICJicm93c2VyQWNjZXB0SGVhZGVyIjogInRleHQvaHRtbCxhcHBsaWNhdGlvbi94aHRtbCt4bWwsYXBwbGljYXRpb24veG1sO3E9MC45LGltYWdlL2F2aWYsaW1hZ2Uvd2VicCxpbWFnZS9hcG5nLCovKjtxPTAuOCxhcHBsaWNhdGlvbi9zaWduZWQtZXhjaGFuZ2U7dj1iMztxPTAuNyIsDQogICAgImJyb3dzZXJJUCI6ICIxOTIuMTY4LngueCIsDQogICAgImJyb3dzZXJKYXZhRW5hYmxlZCI6IGZhbHNlLA0KICAgICJicm93c2VyTGFuZ3VhZ2UiOiAiamEtSlAiLA0KICAgICJicm93c2VySmF2YXNjcmlwdEVuYWJsZWQiOiB0cnVlLA0KICAgICJicm93c2VyQ29sb3JEZXB0aCI6ICJ7e0NvbG9yIGRlcHRofX0iLA0KICAgICJicm93c2VyU2NyZWVuSGVpZ2h0IjogInt7U2NyZWVuIGhlaWdodH19IiwNCiAgICAiYnJvd3NlclNjcmVlbldpZHRoIjogInt7U2NyZWVuIHdpZHRofX0iLA0KICAgICJicm93c2VyVFoiOiAiLTU0MCIsDQogICAgImJyb3dzZXJVc2VyQWdlbnQiOiAiTW96aWxsYS81LjAgKE1hY2ludG9zaDsgSW50ZWwgTWFjIE9TIFggMTBfMTVfNykgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzEyMi4wLjAuMCBTYWZhcmkvNTM3LjM2Ig0KfQ0K
)
```

