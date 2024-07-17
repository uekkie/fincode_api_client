# FincodeApiClient::POSTJoinTenantsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | メールアドレス\\ \\ プラットフォームショップのユーザーのメールアドレス。  |  |
| **password** | **String** | パスワード\\ \\ プラットフォームショップのユーザーのパスワード。  |  |
| **tenant_url_id** | **String** | テナント登録URL ID\\ \\ テナント登録URLのID。\\ [管理画面 &gt; プラットフォームの運用と管理 &gt; 構成](https://dashboard.test.fincode.jp/platform/setting)の『テナント登録用のURL』の&#x60;tenant_url_id&#x60;の値をこのパラメータに指定します。  |  |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::POSTJoinTenantsRequest.new(
  email: new-fincode-user@example.com,
  password: password1234,
  tenant_url_id: tu_**********************
)
```

