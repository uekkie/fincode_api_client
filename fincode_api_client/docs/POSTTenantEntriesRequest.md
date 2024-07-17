# FincodeApiClient::POSTTenantEntriesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | メールアドレス\\ \\ fincodeに新規作成するユーザーのメールアドレス。\\ すでに登録されているメールアドレスを指定するとエラーとなります。（エラーコード：&#x60;E0087012014&#x60;）\\ \\ 形式： RFC 5322  |  |
| **password** | **String** | パスワード\\ \\ fincodeに新規作成するユーザーのパスワード。\\ パスワードは以下の条件を満たす必要があります。  - 半角英数のみ - 12文字以上 - 英数ともに使用 - 大文字小文字ともに使用  |  |
| **name** | **String** | ユーザー名\\ \\ fincodeに新規作成するユーザーの名前  |  |
| **tenant_url_id** | **String** | テナント登録URL ID\\ \\ テナント登録URLのID。\\ [管理画面 &gt; プラットフォームの運用と管理 &gt; 構成](https://dashboard.test.fincode.jp/platform/setting)の『テナント登録用のURL』の&#x60;tenant_url_id&#x60;の値をこのパラメータに指定します。  |  |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::POSTTenantEntriesRequest.new(
  email: new-fincode-user@example.com,
  password: password1234,
  name: Epsilon Taro,
  tenant_url_id: tu_**********************
)
```

