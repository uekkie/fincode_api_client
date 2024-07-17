# FincodeApiClient::CorporateInfoV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporate_number** | **String** | 法人番号  |  |
| **corporate_name** | **String** | 法人名  |  |
| **corporate_name_kana** | **String** | 法人名（カナ）  |  |
| **hp** | **String** | 企業サイトURL  | [optional] |
| **capital** | **Float** | 資本金  |  |
| **established_at** | **String** | 設立日  |  |
| **yearly_sales** | **Float** | 年商  |  |
| **business_details** | **String** | 事業内容  |  |
| **company_postal_code** | **String** | 会社住所 郵便番号\\ 形式： 半角数字（ハイフンあり）  |  |
| **company_prefecture** | **String** | 会社住所 都道府県\\ 形式： 漢字  |  |
| **company_prefecture_kana** | **String** | 会社住所 都道府県（カナ）\\ 形式： 全角カタカナ  |  |
| **company_address_municipality** | **String** | 会社住所 市区町村\\ 形式： 漢字/ひらがな/カタカナ/半角英数  |  |
| **company_address_municipality_kana** | **String** | 会社住所 市区町村（カナ）\\ 形式： 全角カタカナ  |  |
| **company_address_section** | **String** | 会社住所 町域\\ 形式： 漢字/ひらがな/カタカナ/半角英数  |  |
| **company_address_section_kana** | **String** | 会社住所 町域（カナ）\\ 形式： 全角カタカナ  |  |
| **company_address_chrome** | **String** | 会社住所 番地\\ 形式： 漢字/ひらがな/カタカナ/半角英数  |  |
| **company_address_chrome_kana** | **String** | 会社住所 番地（カナ）\\ 形式： 全角カタカナ  |  |
| **company_address_building_name** | **String** | 会社住所 ビル名\\ 形式： 漢字/ひらがな/カタカナ/半角英数  | [optional] |
| **company_address_building_name_kana** | **String** | 会社住所 ビル名（カナ）\\ 形式： 全角カタカナ  | [optional] |
| **company_tel** | **String** | 会社情報 電話番号\\ 形式： 半角数字（ハイフンなし）  |  |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::CorporateInfoV2.new(
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
  company_tel: 0312345678
)
```

