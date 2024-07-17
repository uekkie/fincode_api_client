# FincodeApiClient::CustomerCardUpdatingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | カードID  | [optional] |
| **customer_id** | **String** | 顧客ID\\ このカードが紐づく顧客のID  | [optional] |
| **default_flag** | **String** | デフォルトフラグ。\\ このカードが決済実行やサブスクリプション登録などでカードIDを指定しない場合に自動的に使用するカードかどうかを示すフラグです。\\ 顧客に対して必ず1つのデフォルトカードが存在します。（カードが1つも登録されていない場合を除く）  - &#x60;0&#x60;: デフォルトカードではない - &#x60;1&#x60;: デフォルトカード  | [optional] |
| **card_no** | **String** | マスク済みカード番号。\\ &lt;span class&#x3D;\&quot;smallText\&quot;&gt; 下4桁以外をマスクしたカード番号です。\\ カード情報非保持の原則に基づき、fincodeユーザーはマスクされていないカード番号の代わりにこの値を保持することができます。\\ &lt;/span&gt; 形式：&#x60;************1234&#x60;  | [optional] |
| **expire** | **String** | カード有効期限。\\ 形式：&#x60;YYMM&#x60;  | [optional] |
| **holder_name** | **String** | カード名義人名。  | [optional] |
| **type** | [**CardType**](CardType.md) |  | [optional] |
| **brand** | [**CardBrand**](CardBrand.md) |  | [optional] |
| **card_no_hash** | **String** | カード番号をもとに生成されたハッシュ値。\\ &lt;span class&#x3D;\&quot;smallText\&quot;&gt; おなじカード番号に対しては常に同じ値が返されます。\\ カード情報非保持の原則に基づき、fincodeユーザーはマスクされていないカード番号の代わりにこの値を保持することができます。 &lt;/span&gt;  | [optional] |
| **created** | **String** | 作成日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |
| **updated** | **String** | 更新日\\ 形式：&#x60;yyyy/MM/dd HH:mm:ss.SSS&#x60;  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::CustomerCardUpdatingResponse.new(
  id: cs_**********************,
  customer_id: c_**********************,
  default_flag: 0,
  card_no: ************1234,
  expire: 4012,
  holder_name: TARO EPSILON,
  type: null,
  brand: null,
  card_no_hash: abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz01,
  created: 2022/05/16 23:59:59.999,
  updated: 2022/05/16 23:59:59.999
)
```

