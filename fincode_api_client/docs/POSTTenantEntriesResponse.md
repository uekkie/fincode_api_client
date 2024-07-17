# FincodeApiClient::POSTTenantEntriesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_data** | [**User**](User.md) | 新規作成されたユーザー情報（このAPIによって新規作成されたテナントのショップIDを含む）  | [optional] |
| **access_token** | **String** | アクセストークン  | [optional] |
| **authorities** | [**Array&lt;POSTTenantEntriesAuthoritiesInner&gt;**](POSTTenantEntriesAuthoritiesInner.md) | ユーザーの権限情報\\ \\ このユーザーが実行可能なエンドポイントとHTTPメソッドの情報  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::POSTTenantEntriesResponse.new(
  user_data: null,
  access_token: a_****_**************,
  authorities: null
)
```

