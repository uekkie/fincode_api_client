# FincodeApiClient::ContractInfoV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **representative_last_name** | **String** | 代表者 姓 形式： 漢字/ひらがな/カタカナ/半角英字  |  |
| **representative_last_name_kana** | **String** | 代表者 姓（カナ）\\ 形式： 全角カナ  |  |
| **representative_first_name** | **String** | 代表者 名\\ 形式： 漢字/ひらがな/カタカナ/半角英字  |  |
| **representative_first_name_kana** | **String** | 代表者 名（カナ）\\ 形式： 全角カナ  |  |
| **representative_postal_code** | **String** | 代表者 住所 郵便番号\\ 形式：&#x60;xxx-xxxx&#x60;  |  |
| **representative_prefecture** | **String** | 代表者 住所 都道府県\\ 形式： 漢字  |  |
| **representative_prefecture_kana** | **String** | 代表者 住所 都道府県（カナ）\\ 形式： 全角カナ  |  |
| **representative_address_municipality** | **String** | 代表者 住所 市区町村\\ 形式： 漢字/ひらがな/カタカナ/半角英数  |  |
| **representative_address_municipality_kana** | **String** | 代表者 住所 市区町村（カナ）\\ 形式： 全角カナ  |  |
| **representative_address_section** | **String** | 代表者 住所 町域\\ 形式： 漢字/ひらがな/カタカナ/半角英数  |  |
| **representative_address_section_kana** | **String** | 代表者 住所 町域（カナ）\\ 形式： 全角カナ  |  |
| **representative_address_chrome** | **String** | 代表者 住所 番地\\ 形式： 漢字/ひらがな/カタカナ/半角英数  |  |
| **representative_address_chrome_kana** | **String** | 代表者 住所 番地（カナ）  |  |
| **representative_address_building_name** | **String** | 代表者 住所 建物名\\ 形式： 漢字/ひらがな/カタカナ/半角英数  | [optional] |
| **representative_address_building_name_kana** | **String** | 代表者 住所 建物名（カナ）\\ 形式： 全角カナ  | [optional] |
| **representative_tel** | **String** | 代表者 電話番号\\ 形式： 半角数字（ハイフンなし、PHS番号不可）  |  |
| **representative_birthday** | **String** | 代表者 生年月日\\ \\ 形式：&#x60;yyyy/MM/dd&#x60;  |  |
| **representative_gender** | **Integer** | 代表者 性別  - &#x60;0&#x60;: 男性 - &#x60;1&#x60;: 女性  |  |
| **staff1_last_name** | **String** | 担当者1 姓\\ 形式： 漢字/ひらがな/カタカナ/半角英字\\ \\ fincodeは担当者1,2宛てに審査結果の通知や審査保留対応の連絡などを行います。  |  |
| **staff1_last_name_kana** | **String** | 担当者1 姓（カナ）\\ 形式： 全角カナ  |  |
| **staff1_first_name** | **String** | 担当者1 名\\ 形式： 漢字/ひらがな/カタカナ/半角英字  |  |
| **staff1_first_name_kana** | **String** | 担当者1 名（カナ）\\ 形式： 全角カナ  |  |
| **staff1_company_name** | **String** | 担当者1 会社名\\ 形式： 漢字/ひらがな/カタカナ/半角英数  |  |
| **staff1_belongs** | **String** | 担当者1 部署名\\ 形式： 漢字/ひらがな/カタカナ/半角英数  | [optional] |
| **staff1_tel** | **String** | 担当者1 電話番号\\ 形式： 半角数字（ハイフンなし、PHS番号不可）  |  |
| **staff1_mail** | **String** | 担当者1 メールアドレス\\ 形式： RFC 5322  |  |
| **staff2_last_name** | **String** | 担当者2 姓\\ 形式： 漢字/ひらがな/カタカナ/半角英字  | [optional] |
| **staff2_last_name_kana** | **String** | 担当者2 姓（カナ）\\ 形式： 全角カナ  | [optional] |
| **staff2_first_name** | **String** | 担当者2 名\\ 形式： 漢字/ひらがな/カタカナ/半角英字  | [optional] |
| **staff2_first_name_kana** | **String** | 担当者2 名（カナ）\\ 形式： 全角カナ  | [optional] |
| **staff2_company_name** | **String** | 担当者2 会社名\\ 形式： 漢字/ひらがな/カタカナ/半角英数  | [optional] |
| **staff2_belongs** | **String** | 担当者2 部署名\\ 形式： 漢字/ひらがな/カタカナ/半角英数  | [optional] |
| **staff2_tel** | **String** | 担当者2 電話番号\\ 形式： 半角数字（ハイフンなし、PHS番号不可）  | [optional] |
| **staff2_mail** | **String** | 担当者2 メールアドレス\\ 形式： RFC 5322  | [optional] |
| **corporate** | **Boolean** | 事業形態\\ \\ - &#x60;true&#x60;: 法人\\ - &#x60;false&#x60;: 個人事業主  |  |
| **corporate_info** | [**CorporateInfoV2**](CorporateInfoV2.md) | 法人情報 \\ &#x60;corporate&#x60;が&#x60;true&#x60;のとき必須  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::ContractInfoV2.new(
  representative_last_name: 山田,
  representative_last_name_kana: ヤマダ,
  representative_first_name: 太郎,
  representative_first_name_kana: タロウ,
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
  representative_birthday: 1980/01/01,
  representative_gender: 0,
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
  corporate: true,
  corporate_info: null
)
```

