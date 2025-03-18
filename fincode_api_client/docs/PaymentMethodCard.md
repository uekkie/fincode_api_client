# FincodeApiClient::PaymentMethodCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_no** | **String** | マスク済みカード番号。\\ &lt;span class&#x3D;\&quot;smallText\&quot;&gt; 下4桁以外をマスクしたカード番号です。\\ カード情報非保持の原則に基づき、fincodeユーザーはマスクされていないカード番号の代わりにこの値を保持することができます。\\ &lt;/span&gt; 形式：&#x60;************1234&#x60;  | [optional] |
| **expire** | **String** | カード有効期限。\\ 形式：&#x60;YYMM&#x60;  | [optional] |
| **holder_name** | **String** | カード名義人名。  | [optional] |
| **type** | [**CardType**](CardType.md) |  | [optional] |
| **brand** | [**CardBrand**](CardBrand.md) |  | [optional] |
| **card_no_hash** | **String** | カード番号をもとに生成されたハッシュ値。\\ &lt;span class&#x3D;\&quot;smallText\&quot;&gt; おなじカード番号に対しては常に同じ値が返されます。\\ カード情報非保持の原則に基づき、fincodeユーザーはマスクされていないカード番号の代わりにこの値を保持することができます。 &lt;/span&gt;  | [optional] |
| **tds_type** | [**TdsType**](TdsType.md) | カード登録時3Dセキュア認証を利用するか。  - &#x60;0&#x60;: 3Dセキュア認証を利用しない（デフォルト） - &#x60;2&#x60;: 3Dセキュア2.0認証を利用する  | [optional] |
| **tds2_type** | [**Tds2Type**](Tds2Type.md) | 3Dセキュア2.0非対応時の挙動設定\\ 購入者がこの決済に利用したカードが3Dセキュア2.0に非対応である場合の後続処理を設定します。  - &#x60;2&#x60;: エラーをレスポンスし、処理を終了する。（デフォルト） - &#x60;3&#x60;: 3Dセキュア認証なしで登録を行う。  | [optional] |
| **tds2_status** | [**ThreeDSecure2Status**](ThreeDSecure2Status.md) |  | [optional] |
| **merchant_name** | **String** | &lt;span class&#x3D;\&quot;smallText color--blue-400\&quot;&gt;[3Dセキュア認証パラメータ]&lt;/span&gt;\\ 加盟店名。\\ 3Dセキュア認証の際に表示されるショップ名や加盟店名を指定できます。\\ 使用可能な文字は以下の通りです。 - 半角英数 - 半角記号： !\&quot;#$%&amp;&#39;()*+,-./:;&lt;&#x3D;&gt;?@[\\]&#x60;^_{|}~ - 半角スペース  未指定の場合、 カード決済の契約時にfincodeが下記の形式に従って設定した値が自動的に使用されます。\\ \\ 形式：&#x60;{{ショップID}}-{{英数字からなる固定値}}&#x60;  | [optional] |
| **access_id** | **String** | 取引ID  | [optional] |
| **acs** | **String** | ACS呼出判定。  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::PaymentMethodCard.new(
  card_no: ************1234,
  expire: 4012,
  holder_name: TARO EPSILON,
  type: null,
  brand: null,
  card_no_hash: abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz01,
  tds_type: null,
  tds2_type: null,
  tds2_status: null,
  merchant_name: s_***********-ab123,
  access_id: a_**********************,
  acs: 1
)
```

