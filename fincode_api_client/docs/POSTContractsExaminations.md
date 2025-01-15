# FincodeApiClient::POSTContractsExaminations

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **String** | ショップID（テナント）\\ \\ 審査申請を行うテナントのショップID  | [optional] |
| **status_code** | **Float** | 申請ステータス  - &#x60;1&#x60;: OK&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;申請が完了しました。審査を行います。&lt;br /&gt;&#x60;enable_immediate_use &#x3D; true&#x60;の場合は即時利用が認められ、VISA/Mastercardブランドの決済受付が可能な状態です。&lt;/span&gt; - &#x60;2&#x60;: NG&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;fincodeの利用が認められませんでした。&lt;/span&gt; - &#x60;3&#x60;: 保留&lt;br /&gt;&lt;span class&#x3D;\&quot;smallText\&quot;&gt;即時利用が認められませんでした。申請は完了しており、審査は継続して行われます。&lt;/span&gt;  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::POSTContractsExaminations.new(
  shop_id: s_***********,
  status_code: 1
)
```

