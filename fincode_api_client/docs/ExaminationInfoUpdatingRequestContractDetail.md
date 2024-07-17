# FincodeApiClient::ExaminationInfoUpdatingRequestContractDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporate** | **Boolean** | 事業形態  - &#x60;true&#x60;: 法人 - &#x60;false&#x60;: 個人事業主  | [optional] |
| **corporate_number** | **String** | 法人番号  | [optional] |
| **corporate_name** | **String** | 法人名  | [optional] |
| **corporate_name_kana** | **String** | 法人名（カナ）  | [optional] |
| **hp** | **String** | 企業サイトURL  | [optional] |
| **capital** | **Float** | 資本金  | [optional] |
| **established_at** | **String** | 設立日  | [optional] |
| **yearly_sales** | **Float** | 年商  | [optional] |
| **business_details** | **String** | 事業内容  | [optional] |
| **company_postal_code** | **String** | 会社住所 郵便番号\\ 形式： 半角数字（ハイフンあり）  | [optional] |
| **company_prefecture** | **String** | 会社住所 都道府県\\ 形式： 漢字  | [optional] |
| **company_prefecture_kana** | **String** | 会社住所 都道府県（カナ）\\ 形式： 全角カタカナ  | [optional] |
| **company_address_municipality** | **String** | 会社住所 市区町村\\ 形式： 漢字/ひらがな/カタカナ/半角英数  | [optional] |
| **company_address_municipality_kana** | **String** | 会社住所 市区町村（カナ）\\ 形式： 全角カタカナ  | [optional] |
| **company_address_section** | **String** | 会社住所 町域\\ 形式： 漢字/ひらがな/カタカナ/半角英数  | [optional] |
| **company_address_section_kana** | **String** | 会社住所 町域（カナ）\\ 形式： 全角カタカナ  | [optional] |
| **company_address_chrome** | **String** | 会社住所 番地\\ 形式： 漢字/ひらがな/カタカナ/半角英数  | [optional] |
| **company_address_chrome_kana** | **String** | 会社住所 番地（カナ）\\ 形式： 全角カタカナ  | [optional] |
| **company_address_building_name** | **String** | 会社住所 ビル名\\ 形式： 漢字/ひらがな/カタカナ/半角英数  | [optional] |
| **company_address_building_name_kana** | **String** | 会社住所 ビル名（カナ）\\ 形式： 全角カタカナ  | [optional] |
| **company_tel** | **String** | 会社情報 電話番号\\ 形式： 半角数字（ハイフンなし）  | [optional] |
| **representative_last_name** | **String** | 代表者 姓 形式： 漢字/ひらがな/カタカナ/半角英字  | [optional] |
| **representative_last_name_kana** | **String** | 代表者 姓（カナ）\\ 形式： 全角カナ  | [optional] |
| **representative_first_name** | **String** | 代表者 名\\ 形式： 漢字/ひらがな/カタカナ/半角英字  | [optional] |
| **representative_first_name_kana** | **String** | 代表者 名（カナ）\\ 形式： 全角カナ  | [optional] |
| **representative_birthday** | **String** | 代表者 生年月日\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **representative_gender** | [**RepresentativeGender**](RepresentativeGender.md) |  | [optional] |
| **representative_postal_code** | **String** | 代表者 住所 郵便番号\\ 形式：&#x60;xxx-xxxx&#x60;  | [optional] |
| **representative_prefecture** | **String** | 代表者 住所 都道府県\\ 形式： 漢字  | [optional] |
| **representative_prefecture_kana** | **String** | 代表者 住所 都道府県（カナ）\\ 形式： 全角カナ  | [optional] |
| **representative_address_municipality** | **String** | 代表者 住所 市区町村\\ 形式： 漢字/ひらがな/カタカナ/半角英数  | [optional] |
| **representative_address_municipality_kana** | **String** | 代表者 住所 市区町村（カナ）\\ 形式： 全角カナ  | [optional] |
| **representative_address_section** | **String** | 代表者 住所 町域\\ 形式： 漢字/ひらがな/カタカナ/半角英数  | [optional] |
| **representative_address_section_kana** | **String** | 代表者 住所 町域（カナ）\\ 形式： 全角カナ  | [optional] |
| **representative_address_chrome** | **String** | 代表者 住所 番地\\ 形式： 漢字/ひらがな/カタカナ/半角英数  | [optional] |
| **representative_address_chrome_kana** | **String** | 代表者 住所 番地（カナ）  | [optional] |
| **representative_address_building_name** | **String** | 代表者 住所 建物名\\ 形式： 漢字/ひらがな/カタカナ/半角英数  | [optional] |
| **representative_address_building_name_kana** | **String** | 代表者 住所 建物名（カナ）\\ 形式： 全角カナ  | [optional] |
| **representative_tel** | **String** | 代表者 電話番号\\ 形式： 半角数字（ハイフンなし、PHS番号不可）  | [optional] |
| **staff1_last_name** | **String** | 担当者1 姓\\ 形式： 漢字/ひらがな/カタカナ/半角英字\\ \\ fincodeは担当者1,2宛てに審査結果の通知や審査保留対応の連絡などを行います。  | [optional] |
| **staff1_last_name_kana** | **String** | 担当者1 姓（カナ）\\ 形式： 全角カナ  | [optional] |
| **staff1_first_name** | **String** | 担当者1 名\\ 形式： 漢字/ひらがな/カタカナ/半角英字  | [optional] |
| **staff1_first_name_kana** | **String** | 担当者1 名（カナ）\\ 形式： 全角カナ  | [optional] |
| **staff1_company_name** | **String** | 担当者1 会社名\\ 形式： 漢字/ひらがな/カタカナ/半角英数  | [optional] |
| **staff1_belongs** | **String** | 担当者1 部署名\\ 形式： 漢字/ひらがな/カタカナ/半角英数  | [optional] |
| **staff1_tel** | **String** | 担当者1 電話番号\\ 形式： 半角数字（ハイフンなし、PHS番号不可）  | [optional] |
| **staff1_mail** | **String** | 担当者1 メールアドレス\\ 形式： RFC 5322  | [optional] |
| **staff2_last_name** | **String** | 担当者2 姓\\ 形式： 漢字/ひらがな/カタカナ/半角英字  | [optional] |
| **staff2_last_name_kana** | **String** | 担当者2 姓（カナ）\\ 形式： 全角カナ  | [optional] |
| **staff2_first_name** | **String** | 担当者2 名\\ 形式： 漢字/ひらがな/カタカナ/半角英字  | [optional] |
| **staff2_first_name_kana** | **String** | 担当者2 名（カナ）\\ 形式： 全角カナ  | [optional] |
| **staff2_company_name** | **String** | 担当者2 会社名\\ 形式： 漢字/ひらがな/カタカナ/半角英数  | [optional] |
| **staff2_belongs** | **String** | 担当者2 部署名\\ 形式： 漢字/ひらがな/カタカナ/半角英数  | [optional] |
| **staff2_tel** | **String** | 担当者2 電話番号\\ 形式： 半角数字（ハイフンなし、PHS番号不可）  | [optional] |
| **staff2_mail** | **String** | 担当者2 メールアドレス\\ 形式： RFC 5322  | [optional] |
| **used_on_app** | **Boolean** | ネイティブアプリ利用有無\\ \\ ネイティブアプリでfincodeを使用するかどうか  - &#x60;true&#x60;: ネイティブアプリでfincodeを使用する  | [optional] |
| **used_on_web** | **Boolean** | Webサイト利用有無\\ \\ Webサイト/Webアプリでfincodeを使用するかどうか  - &#x60;true&#x60;: Webサイト/Webアプリでfincodeを使用する  | [optional] |
| **used_on_other** | **Boolean** | その他の箇所での利用有無\\ \\ Webアプリケーションやネイティブアプリ上でない箇所で利用があるかどうか  - &#x60;true&#x60;: Webアプリ／ネイティブアプリでない箇所でfincodeを使用する  | [optional] |
| **site_existing** | **Float** | Webサイトの公開状況\\ \\ fincode審査時点で決済機能を提供するWebサイトが閲覧可能かどうかを示します。  - &#x60;0&#x60;: fincode審査チームがサイトを閲覧可能 - &#x60;1&#x60;: fincode審査チームがサイトを閲覧不可能（ただし準備中） - &#x60;2&#x60;: fincode審査チームがサイトを閲覧不可能  | [optional] |
| **url** | **String** | WebサイトURL\\ \\ fincode審査チームがサイトを閲覧するためのURL  | [optional] |
| **site_credential** | **String** | ログイン情報\\ \\ fincode審査チームがサイトを閲覧するためのログイン情報  | [optional] |
| **shop_name** | **String** | fincodeにおけるショップ名  | [optional] |
| **shop_name_kana** | **String** | fincodeにおけるショップ名（カナ）  | [optional] |
| **shop_name_en** | **String** | fincodeにおけるショップ名（英語）  | [optional] |
| **shop_distributor_name** | **String** | 販売者業者名  | [optional] |
| **shop_sales_manager_name** | **String** | 販売責任者氏名\\ \\ ショップの販売責任者の氏名  | [optional] |
| **shop_service_name** | **String** | 屋号・サービス名\\ \\ ショップのサービスの名称  | [optional] |
| **shop_support_tel** | **String** | 問い合わせ先電話番号\\ \\ 購入者が問い合わせる窓口となる電話番号  | [optional] |
| **shop_support_mail** | **String** | 問い合わせ先メールアドレス\\ \\ 購入者が問い合わせる窓口となるメールアドレス  | [optional] |
| **shop_post_code** | **String** | ショップ住所 郵便番号  | [optional] |
| **shop_prefecture** | **String** | ショップ住所 都道府県  | [optional] |
| **shop_address_municipality** | **String** | ショップ住所 市区町村  | [optional] |
| **shop_address_section** | **String** | ショップ住所 町域  | [optional] |
| **shop_address_chrome** | **String** | ショップ住所 番地  | [optional] |
| **shop_address_building_name** | **String** | ショップ住所 建物名等  | [optional] |
| **shop_address_building_name_kana** | **String** | ショップ住所 建物名等（カナ）  | [optional] |
| **shop_payment_method** | **String** | 支払い方法\\ \\ ショップで利用可能な支払い方法  | [optional] |
| **shop_charge_description** | **String** | 商品代金以外の料金の説明\\ \\ 送料、手数料、消費税などの商品代金以外の料金についての説明  | [optional] |
| **shop_product_delievery_time** | **String** | 商品の引き渡し時期\\ \\ 商品の引き渡し時期についての説明  | [optional] |
| **shop_return_goods_handing_conditions** | **String** | 返品・交換に関する条件\\ \\ 返品・交換に関する条件についての説明  | [optional] |
| **platform_name** | **String** | プラットフォーム名  | [optional] |
| **support_tel** | **String** | 購入者向けサポート窓口 電話番号\\ 形式： 電話番号（ハイフンなし）  | [optional] |
| **support_mail** | **String** | 購入者向けサポート窓口 メールアドレス\\ 形式： RFC 5322  | [optional] |
| **provides_product** | **Boolean** | 物販商材 提供有無\\ \\ ショップが物品販売を行うかどうか  | [optional] |
| **provides_service** | **Boolean** | サービス商材 提供有無\\ \\ ショップがサービス提供を行うかどうか  | [optional] |
| **provides_digital_content** | **Boolean** | デジタルコンテンツ 提供有無\\ \\ ショップがデジタルコンテンツ販売を行うかどうか  | [optional] |
| **prepaid** | **Boolean** | プリペイドポイントの有無\\ \\ ショップがプリペイドポイントを導入しているかどうか  | [optional] |
| **unit_price** | **Float** | 1回の決済における金額（単価）\\ \\ 例： &#x60;1000&#x60;（1000円）  | [optional] |
| **content_category_master_id** | **Float** | 取扱商材カテゴリID  | [optional] |
| **content_description** | **String** | 取扱商材の説明\\ \\ ショップの提供する商材についての説明  | [optional] |
| **expiration_date_of_point** | **String** | ポイント有効期限について\\ \\ プリペイドポイントの有効期限について  | [optional] |
| **usage_of_point** | **String** | ポイント利用方法\\ \\ プリペイドポイントの利用方法  | [optional] |
| **lost_trial** | **Boolean** | 改正割賦販売法に基づく訴訟敗訴歴があるかどうかの表明  - &#x60;true&#x60;: 改正割賦販売法に基づく訴訟敗訴歴がある - &#x60;false&#x60;: 改正割賦販売法に基づく訴訟敗訴歴はない  | [optional] |
| **deals_insecure_content** | **Boolean** | fincodeで取扱不可の商材を取り扱わないことの表明  - &#x60;true&#x60;: 取扱不可の商材を取り扱う予定はない - &#x60;false&#x60;: 取扱不可の商材を取り扱う予定がある  fincodeの禁止商材は以下の通りです。  - 金融行為（クレジットカードショッピング枠の現金化等） - 仮想通貨取引、金券（印紙、切手等含む）、商品券、プリペイドカード、有価証券 - 賭博、ギャンブル - RMT（リアルマネートレーディング） - ペット等の生き物全般（※標本・剥製も含む） - お布施 - 危険ドラッグ、デザイナーズドラッグ - 処方箋なしで購入できる処方薬（ルミガン・ラディース・クラッシュビスタ・ケアプロスト等） - 第三者の著作権・肖像権・知的所有権等を侵害する恐れがあるもの - 公序良俗に反するもの（アダルト、出会い系サイトを含む） - 法律・法令の定めに違反するもの（銃刀法・麻薬取締法・ワシントン条約・薬事法）  | [optional] |
| **deals_long_apply_content** | **Boolean** | fincode審査に時間がかかるコンテンツを取り扱うかどうかの表明  - &#x60;true&#x60;: fincode審査に時間がかかるコンテンツを取り扱う - &#x60;false&#x60;: fincode審査に時間がかかるコンテンツを取り扱わない  以下の商材を取り扱う場合は&#x60;true&#x60;を指定する必要があります。  - 呉服 - コンサルディングサービス - エステ、美容サロン、美容医療 - スポーツ施設・フィットネスクラブ - カルチャースクール・通信講座 - データ販売 - 情報詳細（情報の内容自体が商品となるもの） - 占い - サプリメント・健康食品 - 美容品・化粧品 - カツラ - 旅行業に該当するサービス - タバコ・CBD - 寄付金  | [optional] |
| **pay_by** | [**ShopPaymentMethod**](ShopPaymentMethod.md) |  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::ExaminationInfoUpdatingRequestContractDetail.new(
  corporate: true,
  corporate_number: 1234567890123,
  corporate_name: サンプル株式会社,
  corporate_name_kana: サンプルカブシキガイシャ,
  hp: https://www.sample-corp.example.com,
  capital: 1000000,
  established_at: 2020/01/01,
  yearly_sales: 1000000,
  business_details: ○○の製造・販売を行っており、fincodeによるオンラインでの販売を予定。,
  company_postal_code: 123-4567,
  company_prefecture: 東京都,
  company_prefecture_kana: トウキョウト,
  company_address_municipality: 渋谷区,
  company_address_municipality_kana: シブヤク,
  company_address_section: 道玄坂,
  company_address_section_kana: ドウゲンザカ,
  company_address_chrome: 1-2-3,
  company_address_chrome_kana: イチニサン,
  company_address_building_name: サンプルビル,
  company_address_building_name_kana: サンプルビル,
  company_tel: 0312345678,
  representative_last_name: 山田,
  representative_last_name_kana: ヤマダ,
  representative_first_name: 太郎,
  representative_first_name_kana: タロウ,
  representative_birthday: 1980/01/01,
  representative_gender: null,
  representative_postal_code: 150-0043,
  representative_prefecture: 東京都,
  representative_prefecture_kana: トウキョウト,
  representative_address_municipality: 渋谷区,
  representative_address_municipality_kana: シブヤク,
  representative_address_section: 道玄坂,
  representative_address_section_kana: ドウゲンザカ,
  representative_address_chrome: 1-14-6,
  representative_address_chrome_kana: 1-14-6,
  representative_address_building_name: ヒューマックス渋谷ビル 7F,
  representative_address_building_name_kana: ヒューマックスシブヤビル ナナカイ,
  representative_tel: 0364330000,
  staff1_last_name: 鈴木,
  staff1_last_name_kana: スズキ,
  staff1_first_name: 次郎,
  staff1_first_name_kana: ジロウ,
  staff1_company_name: サンプル株式会社,
  staff1_belongs: EC事業部,
  staff1_tel: 09000000000,
  staff1_mail: staff-1@example.com,
  staff2_last_name: 佐藤,
  staff2_last_name_kana: サトウ,
  staff2_first_name: 三郎,
  staff2_first_name_kana: サブロウ,
  staff2_company_name: サンプル株式会社,
  staff2_belongs: 営業統括部,
  staff2_tel: 09000000000,
  staff2_mail: staff-2@example.com,
  used_on_app: true,
  used_on_web: true,
  used_on_other: false,
  site_existing: null,
  url: https://example.com,
  site_credential: ID: example_user,Password: password,
  shop_name: サンプルショップ東京,
  shop_name_kana: サンプルショップトウキョウ,
  shop_name_en: Sample Shop Tokyo,
  shop_distributor_name: null,
  shop_sales_manager_name: イプシロン太郎,
  shop_service_name: サンプルショップ,
  shop_support_tel: null,
  shop_support_mail: null,
  shop_post_code: null,
  shop_prefecture: null,
  shop_address_municipality: null,
  shop_address_section: null,
  shop_address_chrome: null,
  shop_address_building_name: null,
  shop_address_building_name_kana: null,
  shop_payment_method: クレジットカード、コンビニ決済,
  shop_charge_description: インターネット接続費用およびその他インターネット利用に必要な費用。モバイルデバイスをご利用の場合にはデータ通信料が発生する場合があります。
,
  shop_product_delievery_time: サンプルショップのサービス提供開始日はユーザーアカウントで初めて認証手続を行った日となります。
,
  shop_return_goods_handing_conditions: 1. サービス開始月中に解約した場合、サービスの月額利用料が全額発生します。
2. デジタルコンテンツサービスの特性上、購入後の返品・キャンセルはお受付いたしかねます。
,
  platform_name: null,
  support_tel: 312345678,
  support_mail: support@example.com,
  provides_product: false,
  provides_service: false,
  provides_digital_content: true,
  prepaid: true,
  unit_price: 1000,
  content_category_master_id: null,
  content_description: 本サービスは、ユーザーが自由にWeb記事を投稿・販売できるコンテンツを提供しています。
,
  expiration_date_of_point: ポイントは1年間有効。,
  usage_of_point: ポイントは購入時に利用可能で、合計金額からポイントを差し引いて決済を行う。,
  lost_trial: true,
  deals_insecure_content: true,
  deals_long_apply_content: true,
  pay_by: null
)
```

