# FincodeApiClient::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ユーザーID  | [optional] |
| **default_shop_id** | **String** | デフォルトショップID\\ \\ このユーザーがログインした際、どのショップにログインするかを示すID  | [optional] |
| **role_id** | **Integer** | ロールID\\ \\ ユーザーの管理画面における権限を示すIDです。  | [optional] |
| **name** | **String** | ユーザー名  | [optional] |
| **email** | **String** | メールアドレス  | [optional] |
| **type** | **String** | ユーザー種別  - &#x60;01&#x60;: ショップユーザー  | [optional] |
| **two_factor_auth_status** | **String** | 二要素認証ステータス  - &#x60;00&#x60;: 未設定\\ - &#x60;01&#x60;: 設定済み  | [optional] |
| **mail_auth_status** | **String** | メールアドレス認証ステータス  - &#x60;00&#x60;: 未設定\\ - &#x60;01&#x60;: 設定済み  | [optional] |
| **password_lock_status** | **String** | パスワードロックステータス  - &#x60;00&#x60;: ロックされていない\\ - &#x60;01&#x60;: ロック中  | [optional] |
| **last_login_date** | **String** | 最終ログイン日時\\ \\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **login_failure_date** | **String** | ログイン失敗日時\\ \\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **login_failure_times** | **Integer** | ログイン失敗回数  | [optional] |
| **password_expire** | **String** | パスワード有効期限\\ \\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **account_status** | **String** | アカウントステータス  - &#x60;00&#x60;: 有効 - &#x60;01&#x60;: 無効  | [optional] |
| **invite_status** | **String** | 招待ステータス  - &#x60;01&#x60;: 招待中 - &#x60;02&#x60;: 参加済み  | [optional] |
| **created** | **String** | 作成日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **updated** | **String** | 更新日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::User.new(
  id: u_**********************,
  default_shop_id: s_***********,
  role_id: 9,
  name: Epsilon Taro,
  email: new-fincode-user@example.com,
  type: 01,
  two_factor_auth_status: 00,
  mail_auth_status: 00,
  password_lock_status: 00,
  last_login_date: null,
  login_failure_date: null,
  login_failure_times: 0,
  password_expire: 2022/05/16 12.34.56.789,
  account_status: 00,
  invite_status: 02,
  created: 2022/05/16 23:59:59.999,
  updated: 2022/05/16 23:59:59.999
)
```

