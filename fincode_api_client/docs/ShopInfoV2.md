# FincodeApiClient::ShopInfoV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_name** | **String** | fincodeにおけるショップ名  |  |
| **shop_name_kana** | **String** | fincodeにおけるショップ名（カナ）  |  |
| **shop_name_en** | **String** | fincodeにおけるショップ名（英語）  |  |
| **support_mail** | **String** | 購入者向けサポート窓口 メールアドレス\\ 形式： RFC 5322  |  |
| **support_tel** | **String** | 購入者向けサポート窓口 電話番号\\ 形式： 電話番号（ハイフンなし）  |  |
| **unit_price** | **Float** | 1回の決済における金額（単価）\\ \\ 例： &#x60;1000&#x60;（1000円）  | [optional] |
| **deals_long_apply_content** | **Boolean** | fincode審査に時間がかかるコンテンツを取り扱うかどうかの表明  - &#x60;true&#x60;: fincode審査に時間がかかるコンテンツを取り扱う - &#x60;false&#x60;: fincode審査に時間がかかるコンテンツを取り扱わない  以下の商材を取り扱う場合は&#x60;true&#x60;を指定する必要があります。  - 呉服 - コンサルディングサービス - エステ、美容サロン、美容医療 - スポーツ施設・フィットネスクラブ - カルチャースクール・通信講座 - データ販売 - 情報詳細（情報の内容自体が商品となるもの） - 占い - サプリメント・健康食品 - 美容品・化粧品 - カツラ - 旅行業に該当するサービス - タバコ・CBD - 寄付金  |  |
| **deals_insecure_content** | **Boolean** | fincodeで取扱不可の商材を取り扱わないことの表明  - &#x60;true&#x60;: 取扱不可の商材を取り扱う予定はない - &#x60;false&#x60;: 取扱不可の商材を取り扱う予定がある  fincodeの禁止商材は以下の通りです。  - 金融行為（クレジットカードショッピング枠の現金化等） - 仮想通貨取引、金券（印紙、切手等含む）、商品券、プリペイドカード、有価証券 - 賭博、ギャンブル - RMT（リアルマネートレーディング） - ペット等の生き物全般（※標本・剥製も含む） - お布施 - 危険ドラッグ、デザイナーズドラッグ - 処方箋なしで購入できる処方薬（ルミガン・ラディース・クラッシュビスタ・ケアプロスト等） - 第三者の著作権・肖像権・知的所有権等を侵害する恐れがあるもの - 公序良俗に反するもの（アダルト、出会い系サイトを含む） - 法律・法令の定めに違反するもの（銃刀法・麻薬取締法・ワシントン条約・薬事法）  |  |
| **lost_trial** | **Boolean** | 改正割賦販売法に基づく訴訟敗訴歴があるかどうかの表明  - &#x60;true&#x60;: 改正割賦販売法に基づく訴訟敗訴歴がない - &#x60;false&#x60;: 改正割賦販売法に基づく訴訟敗訴歴がある  |  |
| **use_of_fincode** | [**ShopInfoV2UseOfFincode**](ShopInfoV2UseOfFincode.md) |  |  |
| **site_published** | **Boolean** | Webサイトの公開状況\\ \\ fincode審査時点で決済機能を提供するWebサイトが閲覧可能かどうかを示します。\\ &#x60;usage_of_fincode.used_on_web&#x60;が&#x60;true&#x60;の場合、指定必須です。  - &#x60;true&#x60;: fincode審査チームがサイトを閲覧可能 - &#x60;false&#x60;: fincode審査チームがサイトを閲覧不可能  | [optional] |
| **site_info** | [**ShopInfoV2SiteInfo**](ShopInfoV2SiteInfo.md) |  | [optional] |
| **prepaid_point** | **Boolean** | プリペイドポイントの有無\\ \\ ショップがプリペイドポイントを導入しているかどうか  | [optional] |
| **prepaid_point_info** | [**ShopInfoV2PrepaidPointInfo**](ShopInfoV2PrepaidPointInfo.md) |  | [optional] |
| **provides** | [**ShopInfoV2Provides**](ShopInfoV2Provides.md) |  |  |
| **content_description** | **String** | 取扱商材の説明\\ \\ ショップの提供する商材についての説明  |  |
| **product_content_info** | [**ContentInfoV2**](ContentInfoV2.md) | 物販商材情報&lt;br&gt;webサイトが公開されていない場合、取扱商材の詳細情報が必要になります。&lt;br&gt;&lt;a style&#x3D;\&quot;color: rgb(212, 31, 28);\&quot;&gt;※ use_of_fincode.used_on_web または site_publishedが&lt;/a&gt; &#x60;false&#x60; &lt;a style&#x3D;\&quot;color: rgb(212, 31, 28);\&quot;&gt;&lt;br&gt;かつ provides.productが&lt;/a&gt; &#x60;true&#x60; &lt;a style&#x3D;\&quot;color: rgb(212, 31, 28);\&quot;&gt;のとき必須&lt;/a&gt; | [optional] |
| **service_content_info** | [**ContentInfoV2**](ContentInfoV2.md) | サービス商材情報&lt;br&gt;webサイトが公開されていない場合、取扱商材の詳細情報が必要になります。&lt;br&gt;&lt;a style&#x3D;\&quot;color: rgb(212, 31, 28);\&quot;&gt;※ use_of_fincode.used_on_web または site_publishedが&lt;/a&gt; &#x60;false&#x60; &lt;a style&#x3D;\&quot;color: rgb(212, 31, 28);\&quot;&gt;&lt;br&gt;かつ provides.serviceが&lt;/a&gt; &#x60;true&#x60; &lt;a style&#x3D;\&quot;color: rgb(212, 31, 28);\&quot;&gt;のとき必須&lt;/a&gt; | [optional] |
| **digital_content_info** | [**ContentInfoV2**](ContentInfoV2.md) | デジタルコンテンツ商材情報&lt;br&gt;webサイトが公開されていない場合、取扱商材の詳細情報が必要になります。&lt;br&gt;&lt;a style&#x3D;\&quot;color: rgb(212, 31, 28);\&quot;&gt;※ use_of_fincode.used_on_web または site_publishedが&lt;/a&gt; &#x60;false&#x60; &lt;a style&#x3D;\&quot;color: rgb(212, 31, 28);\&quot;&gt;&lt;br&gt;かつ provides.digital_contentsが&lt;/a&gt; &#x60;true&#x60; &lt;a style&#x3D;\&quot;color: rgb(212, 31, 28);\&quot;&gt;のとき必須&lt;/a&gt; | [optional] |
| **additional_info** | [**ShopInfoV2AdditionalInfo**](ShopInfoV2AdditionalInfo.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::ShopInfoV2.new(
  shop_name: サンプルショップ東京,
  shop_name_kana: サンプルショップトウキョウ,
  shop_name_en: Sample Shop Tokyo,
  support_mail: support@example.com,
  support_tel: 312345678,
  unit_price: 1000,
  deals_long_apply_content: true,
  deals_insecure_content: true,
  lost_trial: true,
  use_of_fincode: null,
  site_published: true,
  site_info: null,
  prepaid_point: true,
  prepaid_point_info: null,
  provides: null,
  content_description: 本サービスは、ユーザーが自由にWeb記事を投稿・販売できるコンテンツを提供しています。
,
  product_content_info: null,
  service_content_info: null,
  digital_content_info: null,
  additional_info: null
)
```

