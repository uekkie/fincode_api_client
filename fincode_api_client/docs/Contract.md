# FincodeApiClient::Contract

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **String** | ショップID（テナント）  | [optional] |
| **platform_id** | **String** | プラットフォームID  | [optional] |
| **shop_type** | [**ShopType**](ShopType.md) |  | [optional] |
| **status_code** | [**ContractStatus**](ContractStatus.md) |  | [optional] |
| **examination** | [**Array&lt;Examination&gt;**](Examination.md) | 審査情報\\ \\ 決済事業者ごとの審査状況を配列に格納しています。\\ ある決済手段について審査が開始されていない場合、その決済手段に対応する&#x60;examination_master_id&#x60;をもつオブジェクトは配列中に存在しません。  | [optional] |
| **available_status_code** | **Integer** | 利用可能モード  - 201: テスト環境のみ利用可能 - 202: 本番環境利用可能  | [optional] |
| **create_date** | **String** | ショップを作成したユーザーの登録日  形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **contracted_at** | **String** | 本番環境申請日  形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **start_charging_at** | **String** | 初回登録完了日  形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **expired_at** | **String** | 解約日  形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **sales_deposit_status_code** | **Integer** | 本人確認手続き ステータス  入金開始に必要な本人確認手続きのステータスを表します。 - &#x60;501&#x60;: 入金に必要な手続きが未完了 - &#x60;502&#x60;: 入金可能  | [optional] |
| **sales_deposit_status_updated_date** | **String** | 売上入金 可否ステータス 更新日  形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **denied_at** | **String** | 契約不成立日  形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **suspended_billing** | **Boolean** | 請求停止フラグ  | [optional] |
| **suspended_billing_date** | **String** | 請求停止フラグ 更新日  形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **suspended_payment** | **Boolean** | 入金停止フラグ  | [optional] |
| **suspended_payment_date** | **String** | 入金停止フラグ 更新日  形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **suspended_service** | **Boolean** | サービス停止フラグ  | [optional] |
| **suspended_service_date** | **String** | サービス停止フラグ 更新日  形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **suspeded_immediate_use** | **Boolean** | 即時利用停止フラグ  | [optional] |
| **suspended_immediate_use_date** | **String** | 即時利用停止フラグ 更新日  形式：&#x60;yyyy/MM/dd&#x60;  | [optional] |
| **stop_cancelaltion_memo** | **String** | 停止・解約 備考  | [optional] |
| **obligations_notice** | **String** | 特記事項（債権債務）  | [optional] |
| **user_shop_name** | **String** | ショップ名（ユーザー用）  | [optional] |
| **register_mail** | **String** | 登録メールアドレス  | [optional] |
| **platform_reprentative_shop** | **Boolean** | プラットフォームの代表ショップか  - true: 代表ショップ - false: 代表ショップではない  | [optional] |
| **shared_customer_flag** | [**SharedCustomerFlag**](SharedCustomerFlag.md) |  | [optional] |
| **contract_detail** | [**ContractContractDetail**](ContractContractDetail.md) |  | [optional] |
| **contract_bank_account** | [**ContractBankAccountInfo**](ContractBankAccountInfo.md) | 入金先口座  | [optional] |
| **contract_virtual_bank** | [**ContractBankAccountInfo**](ContractBankAccountInfo.md) | バーチャル口座情報\\ \\ このショップに関してfincodeへの支払いが売上入金額を上回った場合、この口座に所定の期日までに入金を行う必要があります。  | [optional] |
| **contract_card_destination** | [**Array&lt;CardDestination&gt;**](CardDestination.md) | カード決済 仕向け先のリスト  | [optional] |
| **credit_card_setting** | [**CardPaymentSetting**](CardPaymentSetting.md) | カード決済 設定\\ \\ 3Dセキュアが有効かどうか・審査の結果、3Dセキュアの利用が必須となったかどうか・分割払い／リボ払い利用ができるかどうかなどの情報が含まれます。  | [optional] |
| **official_registered_corporate_info** | [**RegistryCorporateInfo**](RegistryCorporateInfo.md) | 登記簿上の法人情報  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::Contract.new(
  shop_id: s_***********,
  platform_id: p_***********,
  shop_type: null,
  status_code: null,
  examination: null,
  available_status_code: 201,
  create_date: 2021/01/01,
  contracted_at: 2021/01/01,
  start_charging_at: 2021/01/01,
  expired_at: 2021/12/01,
  sales_deposit_status_code: null,
  sales_deposit_status_updated_date: 2021/01/21,
  denied_at: null,
  suspended_billing: false,
  suspended_billing_date: null,
  suspended_payment: false,
  suspended_payment_date: null,
  suspended_service: false,
  suspended_service_date: null,
  suspeded_immediate_use: false,
  suspended_immediate_use_date: null,
  stop_cancelaltion_memo: null,
  obligations_notice: null,
  user_shop_name: null,
  register_mail: null,
  platform_reprentative_shop: false,
  shared_customer_flag: null,
  contract_detail: null,
  contract_bank_account: null,
  contract_virtual_bank: null,
  contract_card_destination: null,
  credit_card_setting: null,
  official_registered_corporate_info: null
)
```

