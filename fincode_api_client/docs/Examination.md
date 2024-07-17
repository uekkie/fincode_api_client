# FincodeApiClient::Examination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **examination_master_id** | [**ExaminationMasterId**](ExaminationMasterId.md) |  | [optional] |
| **status_code** | [**ExaminationStatus**](ExaminationStatus.md) |  | [optional] |
| **member_code** | **String** | 加盟店番号  | [optional] |
| **tds_available** | **Boolean** | 3Dセキュア認証利用可否  - &#x60;true&#x60;: 利用可 - &#x60;false&#x60;: 利用不可  | [optional] |
| **installments_payment_available** | **Boolean** | 分割払い利用可否  - &#x60;true&#x60;: 利用可 - &#x60;false&#x60;: 利用不可  | [optional] |
| **mcc_1** | **String** | MCC 1  | [optional] |
| **mcc_2** | **String** | MCC 2  | [optional] |
| **paypay_mid** | **String** | PayPay 加盟店番号  | [optional] |
| **paypay_store_id** | **String** | PayPay 店舗ID  | [optional] |
| **paysle_merchant_code** | **String** | PAYSLE 企業コード  | [optional] |
| **paysle_user_id** | **String** | PAYSLE ログイン企業ID  | [optional] |
| **paysle_user_password** | **String** | PAYSLE システム接続パスワード  | [optional] |
| **cut_over_at** | **String** | 利用開始日\\ 形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::Examination.new(
  examination_master_id: null,
  status_code: null,
  member_code: null,
  tds_available: null,
  installments_payment_available: null,
  mcc_1: null,
  mcc_2: null,
  paypay_mid: null,
  paypay_store_id: null,
  paysle_merchant_code: null,
  paysle_user_id: null,
  paysle_user_password: null,
  cut_over_at: null
)
```

