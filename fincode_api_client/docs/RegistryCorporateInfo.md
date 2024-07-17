# FincodeApiClient::RegistryCorporateInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_name** | **String** | 法人名  | [optional] |
| **company_name_kana** | **String** | 法人名（カナ）  | [optional] |
| **company_kind** | **String** | 法人種別（国税庁既定のコード定義に準拠）  | [optional] |
| **company_postal_code** | **String** | 会社情報 郵便番号  | [optional] |
| **company_prefecture_code** | **String** | 会社情報 都道府県コード  | [optional] |
| **company_city_code** | **String** | 会社情報 市区町村コード  | [optional] |
| **company_prefecture** | **String** | 会社情報 都道府県  | [optional] |
| **company_prefecture_kana** | **String** | 会社情報 都道府県（カナ）  | [optional] |
| **company_city** | **String** | 会社情報 市区町村  | [optional] |
| **company_city_kana** | **String** | 会社情報 市区町村（カナ）  | [optional] |
| **company_street** | **String** | 会社情報 町域・丁目・番地  | [optional] |
| **company_street_kana** | **String** | 会社情報 町域・丁目・番地（カナ）  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::RegistryCorporateInfo.new(
  company_name: null,
  company_name_kana: null,
  company_kind: null,
  company_postal_code: null,
  company_prefecture_code: null,
  company_city_code: null,
  company_prefecture: null,
  company_prefecture_kana: null,
  company_city: null,
  company_city_kana: null,
  company_street: null,
  company_street_kana: null
)
```

