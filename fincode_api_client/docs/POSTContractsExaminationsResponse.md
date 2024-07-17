# FincodeApiClient::POSTContractsExaminationsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **String** | ショップID（テナント）\\ \\ 審査申請を行うテナントのショップID  | [optional] |
| **enable_immediate_use** | **Float** | VISA/Mastercard即時利用 結果  - &#x60;1&#x60;: OK&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;即時利用が認められました。VISA/Mastercardブランドの決済受付が可能な状態です。&lt;/span&gt; - &#x60;2&#x60;: NG&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;ネガティブチェックにより、fincodeの利用が認められませんでした。&lt;/span&gt; - &#x60;3&#x60;: 保留&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;即時利用が認められませんでした。審査は継続して行われます。&lt;/span&gt;  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::POSTContractsExaminationsResponse.new(
  shop_id: s_***********,
  enable_immediate_use: 1
)
```

