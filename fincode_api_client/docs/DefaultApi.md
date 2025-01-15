# FincodeApiClient::DefaultApi

All URIs are relative to *https://api.fincode.jp*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**authorize_payment**](DefaultApi.md#authorize_payment) | **PUT** /v1/payments/{id}/auth | 決済 再オーソリ |
| [**cancel_invoices**](DefaultApi.md#cancel_invoices) | **PUT** /v1/invoices/{id}/cancel | インボイス キャンセル |
| [**cancel_payment**](DefaultApi.md#cancel_payment) | **PUT** /v1/payments/{id}/cancel | 決済 キャンセル |
| [**capture_payment**](DefaultApi.md#capture_payment) | **PUT** /v1/payments/{id}/capture | 決済 売上確定 |
| [**change_amount_of_payment**](DefaultApi.md#change_amount_of_payment) | **PUT** /v1/payments/{id}/change | 決済 金額変更 |
| [**create_card_registration_session**](DefaultApi.md#create_card_registration_session) | **POST** /v1/card_sessions | カード登録URL 作成 |
| [**create_customer**](DefaultApi.md#create_customer) | **POST** /v1/customers | 顧客 登録 |
| [**create_customer_card**](DefaultApi.md#create_customer_card) | **POST** /v1/customers/{customer_id}/cards | カード 登録 |
| [**create_customer_payment_method**](DefaultApi.md#create_customer_payment_method) | **POST** /v1/customers/{customer_id}/payment_methods | 決済手段 登録 |
| [**create_payment**](DefaultApi.md#create_payment) | **POST** /v1/payments | 決済 登録 |
| [**create_payment_bulk**](DefaultApi.md#create_payment_bulk) | **POST** /v1/payments/bulk | 一括決済 登録 |
| [**create_payment_session**](DefaultApi.md#create_payment_session) | **POST** /v1/sessions | 決済URL 作成 |
| [**create_plan**](DefaultApi.md#create_plan) | **POST** /v1/plans | プラン 登録 |
| [**create_subscription**](DefaultApi.md#create_subscription) | **POST** /v1/subscriptions | サブスクリプション 登録 |
| [**create_tenant_with_existing_user**](DefaultApi.md#create_tenant_with_existing_user) | **POST** /v1/join_tenants | テナントショップ 作成（既存ユーザー参加） |
| [**create_tenant_with_new_user**](DefaultApi.md#create_tenant_with_new_user) | **POST** /v1/tenant_entries | テナントショップ 作成（新規ユーザー登録） |
| [**delete_customer**](DefaultApi.md#delete_customer) | **DELETE** /v1/customers/{id} | 顧客 削除 |
| [**delete_customer_card**](DefaultApi.md#delete_customer_card) | **DELETE** /v1/customers/{customer_id}/cards/{id} | カード 削除 |
| [**delete_customer_payment_method**](DefaultApi.md#delete_customer_payment_method) | **DELETE** /v1/customers/{customer_id}/payment_methods/{id} | 決済手段 削除 |
| [**delete_invoices**](DefaultApi.md#delete_invoices) | **DELETE** /v1/invoices/{id} | インボイス 削除 |
| [**delete_payment_bulk**](DefaultApi.md#delete_payment_bulk) | **DELETE** /v1/payments/bulk/{id} | 一括決済 削除 |
| [**delete_plan**](DefaultApi.md#delete_plan) | **DELETE** /v1/plans/{id} | プラン 削除 |
| [**execute_payment**](DefaultApi.md#execute_payment) | **PUT** /v1/payments/{id} | 決済 実行 |
| [**execute_payment_after_three_d_secureecure**](DefaultApi.md#execute_payment_after_three_d_secureecure) | **PUT** /v1/payments/{id}/secure | 認証後決済 実行 |
| [**generate_barcode_of_payment**](DefaultApi.md#generate_barcode_of_payment) | **PUT** /v1/payments/{id}/barcode | バーコード発行 |
| [**get_invoices**](DefaultApi.md#get_invoices) | **GET** /v1/invoices/{id} | インボイス 取得 |
| [**get_invoices_list**](DefaultApi.md#get_invoices_list) | **GET** /v1/invoices | インボイス 一覧取得 |
| [**open_invoices**](DefaultApi.md#open_invoices) | **PUT** /v1/invoices/{id}/open | インボイス 発行 |
| [**paid_externally_invoices**](DefaultApi.md#paid_externally_invoices) | **PUT** /v1/invoices/{id}/paid_externally | インボイス 外部支払いマーク |
| [**refresh_invoices_virtualaccount**](DefaultApi.md#refresh_invoices_virtualaccount) | **PUT** /v1/invoices/{id}/virtual_account/refresh | インボイス バーチャル口座再発行 |
| [**register_invoices**](DefaultApi.md#register_invoices) | **POST** /v1/invoices | インボイス 作成 |
| [**request_production_environment**](DefaultApi.md#request_production_environment) | **POST** /v1/contracts/examinations | テナントショップ 本番環境申請 |
| [**reserve_provider**](DefaultApi.md#reserve_provider) | **POST** /v1/contracts/examinations/tenants/{id}/providers/reserve | テナントショップ 決済手段追加申請 |
| [**retrieve_account**](DefaultApi.md#retrieve_account) | **GET** /v1/accounts/{id} | 売上入金 取得 |
| [**retrieve_account_detail_list**](DefaultApi.md#retrieve_account_detail_list) | **GET** /v1/accounts/{id}/detail | 売上入金詳細 一覧取得 |
| [**retrieve_account_list**](DefaultApi.md#retrieve_account_list) | **GET** /v1/accounts | 売上入金 一覧取得 |
| [**retrieve_customer**](DefaultApi.md#retrieve_customer) | **GET** /v1/customers/{id} | 顧客 取得 |
| [**retrieve_customer_card**](DefaultApi.md#retrieve_customer_card) | **GET** /v1/customers/{customer_id}/cards/{id} | カード 取得 |
| [**retrieve_customer_card_list**](DefaultApi.md#retrieve_customer_card_list) | **GET** /v1/customers/{customer_id}/cards | カード 一覧取得 |
| [**retrieve_customer_list**](DefaultApi.md#retrieve_customer_list) | **GET** /v1/customers | 顧客 一覧取得 |
| [**retrieve_customer_payment_method**](DefaultApi.md#retrieve_customer_payment_method) | **GET** /v1/customers/{customer_id}/payment_methods/{id} | 決済手段 取得 |
| [**retrieve_customer_payment_method_list**](DefaultApi.md#retrieve_customer_payment_method_list) | **GET** /v1/customers/{customer_id}/payment_methods | 決済手段 一覧取得 |
| [**retrieve_payment**](DefaultApi.md#retrieve_payment) | **GET** /v1/payments/{id} | 決済 取得 |
| [**retrieve_payment_bulk_detail_list**](DefaultApi.md#retrieve_payment_bulk_detail_list) | **GET** /v1/payments/bulk/{id} | 一括決済詳細 一覧取得 |
| [**retrieve_payment_bulk_list**](DefaultApi.md#retrieve_payment_bulk_list) | **GET** /v1/payments/bulk | 一括決済 一覧取得 |
| [**retrieve_payment_list**](DefaultApi.md#retrieve_payment_list) | **GET** /v1/payments | 決済 一覧取得 |
| [**retrieve_plan**](DefaultApi.md#retrieve_plan) | **GET** /v1/plans/{id} | プラン 取得 |
| [**retrieve_plan_list**](DefaultApi.md#retrieve_plan_list) | **GET** /v1/plans | プラン 一覧取得 |
| [**retrieve_platform_account**](DefaultApi.md#retrieve_platform_account) | **GET** /v1/platform_accounts/{id} | プラットフォーム利用料収入 取得 |
| [**retrieve_platform_account_list**](DefaultApi.md#retrieve_platform_account_list) | **GET** /v1/platform_accounts | プラットフォーム利用料収入 一覧取得 |
| [**retrieve_platform_account_summary_list**](DefaultApi.md#retrieve_platform_account_summary_list) | **GET** /v1/platform_accounts/{id}/summary | プラットフォーム利用料収入サマリー 一覧取得 |
| [**retrieve_platform_shop**](DefaultApi.md#retrieve_platform_shop) | **GET** /v1/platforms/{id} | プラットフォームショップ 取得 |
| [**retrieve_platform_shop_list**](DefaultApi.md#retrieve_platform_shop_list) | **GET** /v1/platforms | プラットフォームショップ 一覧取得 |
| [**retrieve_subscription**](DefaultApi.md#retrieve_subscription) | **GET** /v1/subscriptions/{id} | サブスクリプション 取得 |
| [**retrieve_subscription_list**](DefaultApi.md#retrieve_subscription_list) | **GET** /v1/subscriptions | サブスクリプション 一覧取得 |
| [**retrieve_subscription_result_list**](DefaultApi.md#retrieve_subscription_result_list) | **GET** /v1/subscriptions/{id}/result | サブスクリプション結果 一覧取得 |
| [**retrieve_tenant_contract**](DefaultApi.md#retrieve_tenant_contract) | **GET** /v1/contracts/{id} | テナントショップ契約情報 取得 |
| [**retrieve_tenant_examination_info**](DefaultApi.md#retrieve_tenant_examination_info) | **GET** /v1/contracts/examinations/tenants/{id} | （旧）テナントショップ本番環境申請情報 取得 |
| [**retrieve_tenant_examination_info_v2**](DefaultApi.md#retrieve_tenant_examination_info_v2) | **GET** /v1/contracts/examinations_v2/tenants/{id} | テナントショップ本番環境申請情報 取得 |
| [**retrieve_tenant_shop**](DefaultApi.md#retrieve_tenant_shop) | **GET** /v1/tenants/{id} | テナントショップ 取得 |
| [**retrieve_tenant_shop_list**](DefaultApi.md#retrieve_tenant_shop_list) | **GET** /v1/tenants | テナントショップ 一覧取得 |
| [**unsubscripbe_subscription**](DefaultApi.md#unsubscripbe_subscription) | **DELETE** /v1/subscriptions/{id} | サブスクリプション 解約 |
| [**update_customer**](DefaultApi.md#update_customer) | **PUT** /v1/customers/{id} | 顧客 更新 |
| [**update_customer_card**](DefaultApi.md#update_customer_card) | **PUT** /v1/customers/{customer_id}/cards/{id} | カード 更新 |
| [**update_invoices**](DefaultApi.md#update_invoices) | **PUT** /v1/invoices/{id} | インボイス 更新 |
| [**update_plan**](DefaultApi.md#update_plan) | **PUT** /v1/plans/{id} | プラン 更新 |
| [**update_platform_shop**](DefaultApi.md#update_platform_shop) | **PUT** /v1/platforms/{id} | プラットフォームショップ 更新 |
| [**update_subscription**](DefaultApi.md#update_subscription) | **PUT** /v1/subscriptions/{id} | サブスクリプション 更新 |
| [**update_tenant_examination_info**](DefaultApi.md#update_tenant_examination_info) | **PUT** /v1/contracts/examinations/tenants/{id} | （旧）テナントショップ本番環境申請情報 更新 |
| [**update_tenant_examination_info_v2**](DefaultApi.md#update_tenant_examination_info_v2) | **PUT** /v1/contracts/examinations_v2/tenants/{id} | テナントショップ本番環境申請情報 更新 |
| [**update_tenant_shop**](DefaultApi.md#update_tenant_shop) | **PUT** /v1/tenants/{id} | テナントショップ 更新 |
| [**upload_examination_file**](DefaultApi.md#upload_examination_file) | **POST** /v1/contracts/examinations/tenants/{id}/files | テナントショップ 審査ファイルアップロード |


## authorize_payment

> <AuthorizePayment200Response> authorize_payment(id, opts)

決済 再オーソリ

決済のオーソリを再度実行します。\\ \\ `pay_type`が`Card`かつ`status`が`CANCELED`の決済（キャンセル済みのカード決済）に対して実行ができ、初回決済時の情報を引き継いで再オーソリを行います。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | オーダーID（決済情報のID）
opts = {
  tenant_shop_id: TODO, # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップを販売主とした決済のうち、`id`で指定した決済のオーソリを再度実行します。 
  authorize_payment_request: FincodeApiClient::PaymentCardReauthorizingRequest.new({pay_type: FincodeApiClient::PayType::CARD, access_id: 'a_**********************', method: FincodeApiClient::CardPayMethod::N1}) # AuthorizePaymentRequest | 
}

begin
  # 決済 再オーソリ
  result = api_instance.authorize_payment(id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->authorize_payment: #{e}"
end
```

#### Using the authorize_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthorizePayment200Response>, Integer, Hash)> authorize_payment_with_http_info(id, opts)

```ruby
begin
  # 決済 再オーソリ
  data, status_code, headers = api_instance.authorize_payment_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthorizePayment200Response>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->authorize_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | オーダーID（決済情報のID） |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップを販売主とした決済のうち、&#x60;id&#x60;で指定した決済のオーソリを再度実行します。  | [optional] |
| **authorize_payment_request** | [**AuthorizePaymentRequest**](AuthorizePaymentRequest.md) |  | [optional] |

### Return type

[**AuthorizePayment200Response**](AuthorizePayment200Response.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## cancel_invoices

> <InvoiceDetailCancelingResponse> cancel_invoices(id, opts)

インボイス キャンセル

指定したIDを持つ、発行済みのインボイス情報をキャンセルします。\\ キャンセルは請求の取り下げを意味し、一度キャンセルしたインボイス情報をもとに再度請求することはできません。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = 'id_example' # String | インボイスID 
opts = {
  tenant_shop_id: TODO # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップを請求元としたインボイス請求書のキャンセルができます。 
}

begin
  # インボイス キャンセル
  result = api_instance.cancel_invoices(id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->cancel_invoices: #{e}"
end
```

#### Using the cancel_invoices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvoiceDetailCancelingResponse>, Integer, Hash)> cancel_invoices_with_http_info(id, opts)

```ruby
begin
  # インボイス キャンセル
  data, status_code, headers = api_instance.cancel_invoices_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvoiceDetailCancelingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->cancel_invoices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | インボイスID  |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップを請求元としたインボイス請求書のキャンセルができます。  | [optional] |

### Return type

[**InvoiceDetailCancelingResponse**](InvoiceDetailCancelingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## cancel_payment

> <CancelPayment200Response> cancel_payment(id, opts)

決済 キャンセル

決済をキャンセルします。キャンセルに成功すると`status`はキャンセル済み（`CANCELED`）に遷移します。\\ \\ ユーザーへの返金の行われ方などは決済手段によって異なります。\\ 詳細は[Docs > 決済](/payment)から参照できます。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | オーダーID（決済情報のID）
opts = {
  tenant_shop_id: TODO, # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップを販売主とした決済のうち、`id`で指定した決済をキャンセルします。 
  cancel_payment_request: FincodeApiClient::PaymentApplePayCancelingRequest.new({pay_type: FincodeApiClient::PayType::CARD, access_id: 'a_**********************'}) # CancelPaymentRequest | 
}

begin
  # 決済 キャンセル
  result = api_instance.cancel_payment(id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->cancel_payment: #{e}"
end
```

#### Using the cancel_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CancelPayment200Response>, Integer, Hash)> cancel_payment_with_http_info(id, opts)

```ruby
begin
  # 決済 キャンセル
  data, status_code, headers = api_instance.cancel_payment_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CancelPayment200Response>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->cancel_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | オーダーID（決済情報のID） |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップを販売主とした決済のうち、&#x60;id&#x60;で指定した決済をキャンセルします。  | [optional] |
| **cancel_payment_request** | [**CancelPaymentRequest**](CancelPaymentRequest.md) |  | [optional] |

### Return type

[**CancelPayment200Response**](CancelPayment200Response.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## capture_payment

> <CapturePayment200Response> capture_payment(id, opts)

決済 売上確定

`status`が仮売上（`AUTHORIZED`）またはキャンセル（`CANCELED`）である決済に対して売上確定を行います。\\ 成功すると、ステータスが`CAPTURED`に遷移し、その時点を集計対象とした売上入金に反映されます。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | オーダーID（決済情報のID）
opts = {
  tenant_shop_id: TODO, # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップを販売主とした決済のうち、`id`で指定した決済の売上確定を実行します。 
  capture_payment_request: FincodeApiClient::PaymentApplePayCapturingRequest.new({pay_type: FincodeApiClient::PayType::CARD, access_id: 'a_**********************'}) # CapturePaymentRequest | 
}

begin
  # 決済 売上確定
  result = api_instance.capture_payment(id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->capture_payment: #{e}"
end
```

#### Using the capture_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapturePayment200Response>, Integer, Hash)> capture_payment_with_http_info(id, opts)

```ruby
begin
  # 決済 売上確定
  data, status_code, headers = api_instance.capture_payment_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapturePayment200Response>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->capture_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | オーダーID（決済情報のID） |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップを販売主とした決済のうち、&#x60;id&#x60;で指定した決済の売上確定を実行します。  | [optional] |
| **capture_payment_request** | [**CapturePaymentRequest**](CapturePaymentRequest.md) |  | [optional] |

### Return type

[**CapturePayment200Response**](CapturePayment200Response.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## change_amount_of_payment

> <ChangeAmountOfPayment200Response> change_amount_of_payment(id, opts)

決済 金額変更

決済の利用金額を変更します。\\ 既に売上確定となっている決済は請求金額が変更され、仮売上となっている決済は確保している与信枠の金額が変更されます。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | オーダーID（決済情報のID）
opts = {
  tenant_shop_id: TODO, # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップを販売主とした決済のうち、`id`で指定した決済の利用金額を変更します。 
  change_amount_of_payment_request: FincodeApiClient::PaymentCardChangingAmountRequest.new({pay_type: FincodeApiClient::PayType::CARD, access_id: 'a_**********************', amount: '1000', job_code: FincodeApiClient::CardPaymentJobCode::CHECK}) # ChangeAmountOfPaymentRequest | 
}

begin
  # 決済 金額変更
  result = api_instance.change_amount_of_payment(id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->change_amount_of_payment: #{e}"
end
```

#### Using the change_amount_of_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChangeAmountOfPayment200Response>, Integer, Hash)> change_amount_of_payment_with_http_info(id, opts)

```ruby
begin
  # 決済 金額変更
  data, status_code, headers = api_instance.change_amount_of_payment_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChangeAmountOfPayment200Response>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->change_amount_of_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | オーダーID（決済情報のID） |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップを販売主とした決済のうち、&#x60;id&#x60;で指定した決済の利用金額を変更します。  | [optional] |
| **change_amount_of_payment_request** | [**ChangeAmountOfPaymentRequest**](ChangeAmountOfPaymentRequest.md) |  | [optional] |

### Return type

[**ChangeAmountOfPayment200Response**](ChangeAmountOfPayment200Response.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_card_registration_session

> <CardRegistrationSessionCreatingResponse> create_card_registration_session(opts)

カード登録URL 作成

fincodeが提供するリダイレクト型カード登録ページを発行し、そのカード登録ページへのURLをレスポンスします。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
opts = {
  tenant_shop_id: TODO, # String | <span class=\"smallText color--red-400\">※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップ上の顧客に対してカードを登録するためのカード登録URLを発行します。 
  card_registration_session_creating_request: FincodeApiClient::CardRegistrationSessionCreatingRequest.new # CardRegistrationSessionCreatingRequest | 
}

begin
  # カード登録URL 作成
  result = api_instance.create_card_registration_session(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->create_card_registration_session: #{e}"
end
```

#### Using the create_card_registration_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CardRegistrationSessionCreatingResponse>, Integer, Hash)> create_card_registration_session_with_http_info(opts)

```ruby
begin
  # カード登録URL 作成
  data, status_code, headers = api_instance.create_card_registration_session_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CardRegistrationSessionCreatingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->create_card_registration_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップ上の顧客に対してカードを登録するためのカード登録URLを発行します。  | [optional] |
| **card_registration_session_creating_request** | [**CardRegistrationSessionCreatingRequest**](CardRegistrationSessionCreatingRequest.md) |  | [optional] |

### Return type

[**CardRegistrationSessionCreatingResponse**](CardRegistrationSessionCreatingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_customer

> <CustomerCreatingResponse> create_customer(opts)

顧客 登録

顧客情報を登録します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
opts = {
  tenant_shop_id: TODO, # String | <span class=\"smallText color--red-400\">※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップに紐づく形で顧客情報を登録します。 
  customer_creating_request: FincodeApiClient::CustomerCreatingRequest.new # CustomerCreatingRequest | 
}

begin
  # 顧客 登録
  result = api_instance.create_customer(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->create_customer: #{e}"
end
```

#### Using the create_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerCreatingResponse>, Integer, Hash)> create_customer_with_http_info(opts)

```ruby
begin
  # 顧客 登録
  data, status_code, headers = api_instance.create_customer_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerCreatingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->create_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップに紐づく形で顧客情報を登録します。  | [optional] |
| **customer_creating_request** | [**CustomerCreatingRequest**](CustomerCreatingRequest.md) |  | [optional] |

### Return type

[**CustomerCreatingResponse**](CustomerCreatingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_customer_card

> <CustomerCardCreatingResponse> create_customer_card(customer_id, opts)

カード 登録

`customer_id`で指定した顧客に対しカードを登録します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
customer_id = TODO # String | このカードが紐づく顧客のID
opts = {
  tenant_shop_id: TODO, # String | <span class=\"smallText color--red-400\">※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ このテナントショップに紐づく顧客のうち、指定したIDの顧客に対してカードを登録します。 
  customer_card_creating_request: FincodeApiClient::CustomerCardCreatingRequest.new({token: '34567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890', default_flag: FincodeApiClient::DefaultFlag::N0}) # CustomerCardCreatingRequest | 
}

begin
  # カード 登録
  result = api_instance.create_customer_card(customer_id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->create_customer_card: #{e}"
end
```

#### Using the create_customer_card_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerCardCreatingResponse>, Integer, Hash)> create_customer_card_with_http_info(customer_id, opts)

```ruby
begin
  # カード 登録
  data, status_code, headers = api_instance.create_customer_card_with_http_info(customer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerCardCreatingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->create_customer_card_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | [**String**](.md) | このカードが紐づく顧客のID |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ このテナントショップに紐づく顧客のうち、指定したIDの顧客に対してカードを登録します。  | [optional] |
| **customer_card_creating_request** | [**CustomerCardCreatingRequest**](CustomerCardCreatingRequest.md) |  | [optional] |

### Return type

[**CustomerCardCreatingResponse**](CustomerCardCreatingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_customer_payment_method

> <CustomerPaymentMethodCreatingResponse> create_customer_payment_method(customer_id, opts)

決済手段 登録

`customer_id`で指定した顧客に対し、決済手段を登録します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure Bearer authorization: Public-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
customer_id = TODO # String | 顧客ID
opts = {
  tenant_shop_id: TODO, # String | <span class=\"smallText color--red-400\">※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ このテナントショップに紐づく顧客のうち、指定したIDの顧客に対して決済手段を登録します。 
  customer_payment_method_creating_request: FincodeApiClient::CustomerPaymentMethodCreatingRequest.new({pay_type: FincodeApiClient::PaymentMethodPayType::CARD, default_flag: FincodeApiClient::PropertiesDefaultFlag::N0}) # CustomerPaymentMethodCreatingRequest | 
}

begin
  # 決済手段 登録
  result = api_instance.create_customer_payment_method(customer_id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->create_customer_payment_method: #{e}"
end
```

#### Using the create_customer_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerPaymentMethodCreatingResponse>, Integer, Hash)> create_customer_payment_method_with_http_info(customer_id, opts)

```ruby
begin
  # 決済手段 登録
  data, status_code, headers = api_instance.create_customer_payment_method_with_http_info(customer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerPaymentMethodCreatingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->create_customer_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | [**String**](.md) | 顧客ID |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ このテナントショップに紐づく顧客のうち、指定したIDの顧客に対して決済手段を登録します。  | [optional] |
| **customer_payment_method_creating_request** | [**CustomerPaymentMethodCreatingRequest**](CustomerPaymentMethodCreatingRequest.md) |  | [optional] |

### Return type

[**CustomerPaymentMethodCreatingResponse**](CustomerPaymentMethodCreatingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Public-Bearer-Auth](../README.md#Public-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_payment

> <CreatePayment200Response> create_payment(opts)

決済 登録

決済情報をfincodeに登録します。決済登録に成功した時点ではまだ顧客に対して請求はされていません。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
opts = {
  tenant_shop_id: TODO, # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップを販売主として決済を登録します。テナントが`pay_type`で指定する決済手段契約の審査を完了させている必要があります。 
  create_payment_request: FincodeApiClient::PaymentApplePayCreatingRequest.new({pay_type: FincodeApiClient::PayType::CARD, job_code: FincodeApiClient::ApplePayPaymentJobCode::AUTH, amount: '1000'}) # CreatePaymentRequest | 
}

begin
  # 決済 登録
  result = api_instance.create_payment(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->create_payment: #{e}"
end
```

#### Using the create_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePayment200Response>, Integer, Hash)> create_payment_with_http_info(opts)

```ruby
begin
  # 決済 登録
  data, status_code, headers = api_instance.create_payment_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePayment200Response>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->create_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップを販売主として決済を登録します。テナントが&#x60;pay_type&#x60;で指定する決済手段契約の審査を完了させている必要があります。  | [optional] |
| **create_payment_request** | [**CreatePaymentRequest**](CreatePaymentRequest.md) |  | [optional] |

### Return type

[**CreatePayment200Response**](CreatePayment200Response.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_payment_bulk

> <PaymentBulkCreatingResponse> create_payment_bulk(pay_type, process_plan_date, opts)

一括決済 登録

fincodeにJSON形式のファイルで一括決済情報を登録し、`process_plan_date`で指定した日時に一括決済処理を予約します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
pay_type = FincodeApiClient::PaymentBulkPayType::CARD # PaymentBulkPayType | 
process_plan_date = TODO # String | 
opts = {
  tenant_shop_id: TODO, # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップを販売主とした決済情報を一括登録します。 
  file: TODO # String | 一括決済情報を記載したJSONファイル。\\\\ \\\\ 以下のようなファイルをアップロードします。 ```json {     \\\"data\\\": [         {             \\\"id\\\": \\\"order_001\\\",             \\\"amount\\\": \\\"1000\\\",             \\\"tax\\\": \\\"100\\\",             \\\"customer_id\\\": \\\"c_**********************\\\",             \\\"card_id\\\": \\\"cs_**********************\\\",             \\\"client_field_1\\\": \\\"自由項目1\\\",             \\\"client_field_2\\\": \\\"自由項目2\\\",             \\\"client_field_3\\\": \\\"自由項目3\\\"         },         {             \\\"id\\\": \\\"order_002\\\",             \\\"amount\\\": \\\"1000\\\",             \\\"customer_id\\\": \\\"c_**********************\\\",             \\\"card_id\\\": \\\"cs_**********************\\\"         },         ...     ] } ``` パラメータ仕様は以下の通りで、各パラメータの形式は決済登録・決済実行APIに準拠します。（*は必須項目）  - `data`: 決済情報のリストを格納する配列 - `data[].id`: オーダーID* - `data[].amount`: 利用金額* - `data[].tax`: 税送料 - `data[].customer_id`: 顧客ID* - `data[].card_id`: カードID - `data[].client_field_1`: 自由項目1 - `data[].client_field_2`: 自由項目2 - `data[].client_field_3`: 自由項目3 
}

begin
  # 一括決済 登録
  result = api_instance.create_payment_bulk(pay_type, process_plan_date, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->create_payment_bulk: #{e}"
end
```

#### Using the create_payment_bulk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentBulkCreatingResponse>, Integer, Hash)> create_payment_bulk_with_http_info(pay_type, process_plan_date, opts)

```ruby
begin
  # 一括決済 登録
  data, status_code, headers = api_instance.create_payment_bulk_with_http_info(pay_type, process_plan_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentBulkCreatingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->create_payment_bulk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_type** | [**PaymentBulkPayType**](.md) |  |  |
| **process_plan_date** | [**String**](.md) |  |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップを販売主とした決済情報を一括登録します。  | [optional] |
| **file** | [**String**](String.md) | 一括決済情報を記載したJSONファイル。\\\\ \\\\ 以下のようなファイルをアップロードします。 &#x60;&#x60;&#x60;json {     \\\&quot;data\\\&quot;: [         {             \\\&quot;id\\\&quot;: \\\&quot;order_001\\\&quot;,             \\\&quot;amount\\\&quot;: \\\&quot;1000\\\&quot;,             \\\&quot;tax\\\&quot;: \\\&quot;100\\\&quot;,             \\\&quot;customer_id\\\&quot;: \\\&quot;c_**********************\\\&quot;,             \\\&quot;card_id\\\&quot;: \\\&quot;cs_**********************\\\&quot;,             \\\&quot;client_field_1\\\&quot;: \\\&quot;自由項目1\\\&quot;,             \\\&quot;client_field_2\\\&quot;: \\\&quot;自由項目2\\\&quot;,             \\\&quot;client_field_3\\\&quot;: \\\&quot;自由項目3\\\&quot;         },         {             \\\&quot;id\\\&quot;: \\\&quot;order_002\\\&quot;,             \\\&quot;amount\\\&quot;: \\\&quot;1000\\\&quot;,             \\\&quot;customer_id\\\&quot;: \\\&quot;c_**********************\\\&quot;,             \\\&quot;card_id\\\&quot;: \\\&quot;cs_**********************\\\&quot;         },         ...     ] } &#x60;&#x60;&#x60; パラメータ仕様は以下の通りで、各パラメータの形式は決済登録・決済実行APIに準拠します。（*は必須項目）  - &#x60;data&#x60;: 決済情報のリストを格納する配列 - &#x60;data[].id&#x60;: オーダーID* - &#x60;data[].amount&#x60;: 利用金額* - &#x60;data[].tax&#x60;: 税送料 - &#x60;data[].customer_id&#x60;: 顧客ID* - &#x60;data[].card_id&#x60;: カードID - &#x60;data[].client_field_1&#x60;: 自由項目1 - &#x60;data[].client_field_2&#x60;: 自由項目2 - &#x60;data[].client_field_3&#x60;: 自由項目3  | [optional] |

### Return type

[**PaymentBulkCreatingResponse**](PaymentBulkCreatingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## create_payment_session

> <PaymentSessionCreatingResponse> create_payment_session(opts)

決済URL 作成

fincodeが提供するリダイレクト型決済ページを発行し、その決済ページへのURLをレスポンスします。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
opts = {
  tenant_shop_id: TODO, # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップで決済を行います。 
  payment_session_creating_request: FincodeApiClient::PaymentSessionCreatingRequest.new({transaction: FincodeApiClient::PaymentSessionCreatingRequestTransaction.new({amount: '1000'})}) # PaymentSessionCreatingRequest | 
}

begin
  # 決済URL 作成
  result = api_instance.create_payment_session(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->create_payment_session: #{e}"
end
```

#### Using the create_payment_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentSessionCreatingResponse>, Integer, Hash)> create_payment_session_with_http_info(opts)

```ruby
begin
  # 決済URL 作成
  data, status_code, headers = api_instance.create_payment_session_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentSessionCreatingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->create_payment_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップで決済を行います。  | [optional] |
| **payment_session_creating_request** | [**PaymentSessionCreatingRequest**](PaymentSessionCreatingRequest.md) |  | [optional] |

### Return type

[**PaymentSessionCreatingResponse**](PaymentSessionCreatingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_plan

> <PlanCreatingResponse> create_plan(opts)

プラン 登録

プラン情報を登録します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
opts = {
  plan_creating_request: FincodeApiClient::PlanCreatingRequest.new({plan_name: 'Basic Plan', amount: '1000'}) # PlanCreatingRequest | 
}

begin
  # プラン 登録
  result = api_instance.create_plan(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->create_plan: #{e}"
end
```

#### Using the create_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanCreatingResponse>, Integer, Hash)> create_plan_with_http_info(opts)

```ruby
begin
  # プラン 登録
  data, status_code, headers = api_instance.create_plan_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanCreatingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->create_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_creating_request** | [**PlanCreatingRequest**](PlanCreatingRequest.md) |  | [optional] |

### Return type

[**PlanCreatingResponse**](PlanCreatingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_subscription

> <SubscriptionCreatingResponse> create_subscription(opts)

サブスクリプション 登録

`customer_id`で指定した顧客に対して`plan_id`で指定したプランを適用したサブスクリプション情報を登録します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
opts = {
  subscription_creating_request: FincodeApiClient::SubscriptionCreatingRequest.new({pay_type: FincodeApiClient::SubscriptionPayType::CARD, plan_id: 'pl_*********************', customer_id: 'c_**********************', start_date: '2022/05/16 00:00:00.000'}) # SubscriptionCreatingRequest | 
}

begin
  # サブスクリプション 登録
  result = api_instance.create_subscription(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->create_subscription: #{e}"
end
```

#### Using the create_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionCreatingResponse>, Integer, Hash)> create_subscription_with_http_info(opts)

```ruby
begin
  # サブスクリプション 登録
  data, status_code, headers = api_instance.create_subscription_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionCreatingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->create_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_creating_request** | [**SubscriptionCreatingRequest**](SubscriptionCreatingRequest.md) |  | [optional] |

### Return type

[**SubscriptionCreatingResponse**](SubscriptionCreatingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tenant_with_existing_user

> <POSTJoinTenantsResponse> create_tenant_with_existing_user(opts)

テナントショップ 作成（既存ユーザー参加）

指定したプラットフォームショップのユーザーを新規テナントショップのオーナーとして新規テナントショップを作成するAPIです。\\ \\ `password`パラメータに関して、ユーザーのパスワードがfincode管理画面アプリケーション上で更新されることを想定して実装・運用することが推奨されます。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
opts = {
  post_join_tenants_request: FincodeApiClient::POSTJoinTenantsRequest.new({email: 'new-fincode-user@example.com', password: 'password1234', tenant_url_id: 'tu_**********************'}) # POSTJoinTenantsRequest | 
}

begin
  # テナントショップ 作成（既存ユーザー参加）
  result = api_instance.create_tenant_with_existing_user(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->create_tenant_with_existing_user: #{e}"
end
```

#### Using the create_tenant_with_existing_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<POSTJoinTenantsResponse>, Integer, Hash)> create_tenant_with_existing_user_with_http_info(opts)

```ruby
begin
  # テナントショップ 作成（既存ユーザー参加）
  data, status_code, headers = api_instance.create_tenant_with_existing_user_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <POSTJoinTenantsResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->create_tenant_with_existing_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_join_tenants_request** | [**POSTJoinTenantsRequest**](POSTJoinTenantsRequest.md) |  | [optional] |

### Return type

[**POSTJoinTenantsResponse**](POSTJoinTenantsResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tenant_with_new_user

> <POSTTenantEntriesResponse> create_tenant_with_new_user(opts)

テナントショップ 作成（新規ユーザー登録）

新規ユーザーを作成し、作成されたユーザーをオーナーとして新規テナントショップを作成するAPIです。\\ このAPIでのテナント作成に成功すると、登録されたメールアドレス宛にメールアドレス認証メールが送信されます。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
opts = {
  post_tenant_entries_request: FincodeApiClient::POSTTenantEntriesRequest.new({email: 'new-fincode-user@example.com', password: 'password1234', name: 'Epsilon Taro', tenant_url_id: 'tu_**********************'}) # POSTTenantEntriesRequest | 
}

begin
  # テナントショップ 作成（新規ユーザー登録）
  result = api_instance.create_tenant_with_new_user(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->create_tenant_with_new_user: #{e}"
end
```

#### Using the create_tenant_with_new_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<POSTTenantEntriesResponse>, Integer, Hash)> create_tenant_with_new_user_with_http_info(opts)

```ruby
begin
  # テナントショップ 作成（新規ユーザー登録）
  data, status_code, headers = api_instance.create_tenant_with_new_user_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <POSTTenantEntriesResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->create_tenant_with_new_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_tenant_entries_request** | [**POSTTenantEntriesRequest**](POSTTenantEntriesRequest.md) |  | [optional] |

### Return type

[**POSTTenantEntriesResponse**](POSTTenantEntriesResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_customer

> <CustomerDeletingResponse> delete_customer(id, opts)

顧客 削除

IDで指定した顧客情報を削除します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | 顧客ID
opts = {
  tenant_shop_id: TODO # String | <span class=\"smallText color--red-400\">※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ このテナントショップに紐づく顧客のうち、指定したIDの顧客情報を削除します。 
}

begin
  # 顧客 削除
  result = api_instance.delete_customer(id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->delete_customer: #{e}"
end
```

#### Using the delete_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerDeletingResponse>, Integer, Hash)> delete_customer_with_http_info(id, opts)

```ruby
begin
  # 顧客 削除
  data, status_code, headers = api_instance.delete_customer_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerDeletingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->delete_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | 顧客ID |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ このテナントショップに紐づく顧客のうち、指定したIDの顧客情報を削除します。  | [optional] |

### Return type

[**CustomerDeletingResponse**](CustomerDeletingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_customer_card

> <CustomerCardDeletingResponse> delete_customer_card(customer_id, id, opts)

カード 削除

`customer_id`で指定した顧客に対し紐づくカードのうち`id`で指定したものを削除します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'

api_instance = FincodeApiClient::DefaultApi.new
customer_id = TODO # String | このカードが紐づく顧客のID
id = TODO # String | 削除するカードのID
opts = {
  tenant_shop_id: TODO # String | <span class=\"smallText color--red-400\">※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ このテナントショップに紐づく顧客のうち、指定したIDの顧客に対して登録されたカードを削除します。 
}

begin
  # カード 削除
  result = api_instance.delete_customer_card(customer_id, id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->delete_customer_card: #{e}"
end
```

#### Using the delete_customer_card_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerCardDeletingResponse>, Integer, Hash)> delete_customer_card_with_http_info(customer_id, id, opts)

```ruby
begin
  # カード 削除
  data, status_code, headers = api_instance.delete_customer_card_with_http_info(customer_id, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerCardDeletingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->delete_customer_card_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | [**String**](.md) | このカードが紐づく顧客のID |  |
| **id** | [**String**](.md) | 削除するカードのID |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ このテナントショップに紐づく顧客のうち、指定したIDの顧客に対して登録されたカードを削除します。  | [optional] |

### Return type

[**CustomerCardDeletingResponse**](CustomerCardDeletingResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_customer_payment_method

> <CustomerPaymentMethodDeletingResponse> delete_customer_payment_method(customer_id, id, pay_type, opts)

決済手段 削除

`customer_id`で指定した顧客に対し紐づく決済手段のうち、`id`で指定したものを削除します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure Bearer authorization: Public-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
customer_id = TODO # String | 顧客ID
id = TODO # String | 決済手段ID
pay_type = TODO # String | 
opts = {
  tenant_shop_id: TODO # String | <span class=\"smallText color--red-400\">※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ このテナントショップに紐づく顧客のうち、指定したIDの顧客に紐づく決済手段からIDで指定した決済手段を削除します。 
}

begin
  # 決済手段 削除
  result = api_instance.delete_customer_payment_method(customer_id, id, pay_type, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->delete_customer_payment_method: #{e}"
end
```

#### Using the delete_customer_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerPaymentMethodDeletingResponse>, Integer, Hash)> delete_customer_payment_method_with_http_info(customer_id, id, pay_type, opts)

```ruby
begin
  # 決済手段 削除
  data, status_code, headers = api_instance.delete_customer_payment_method_with_http_info(customer_id, id, pay_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerPaymentMethodDeletingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->delete_customer_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | [**String**](.md) | 顧客ID |  |
| **id** | [**String**](.md) | 決済手段ID |  |
| **pay_type** | [**String**](.md) |  |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ このテナントショップに紐づく顧客のうち、指定したIDの顧客に紐づく決済手段からIDで指定した決済手段を削除します。  | [optional] |

### Return type

[**CustomerPaymentMethodDeletingResponse**](CustomerPaymentMethodDeletingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Public-Bearer-Auth](../README.md#Public-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_invoices

> <InvoiceDetailDeletingResponse> delete_invoices(id, opts)

インボイス 削除

指定したIDを持つ、下書き状態のインボイス情報を削除します。\\ 発行済みのインボイス情報は削除できません。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = 'id_example' # String | インボイスID 
opts = {
  tenant_shop_id: TODO # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップを販売主とした請求書情報を削除します。 
}

begin
  # インボイス 削除
  result = api_instance.delete_invoices(id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->delete_invoices: #{e}"
end
```

#### Using the delete_invoices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvoiceDetailDeletingResponse>, Integer, Hash)> delete_invoices_with_http_info(id, opts)

```ruby
begin
  # インボイス 削除
  data, status_code, headers = api_instance.delete_invoices_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvoiceDetailDeletingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->delete_invoices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | インボイスID  |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップを販売主とした請求書情報を削除します。  | [optional] |

### Return type

[**InvoiceDetailDeletingResponse**](InvoiceDetailDeletingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_payment_bulk

> <PaymentBulkDeletingResponse> delete_payment_bulk(id, opts)

一括決済 削除

IDで指定した一括決済情報を削除します。\\ 一括決済処理がチェック済み（`status`が`CHECKED`）のものに限り削除できます。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = 'id_example' # String | 一括決済ID。\\ 削除対象の一括決済情報のIDを指定します。 
opts = {
  tenant_shop_id: TODO # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップを販売主とした一括決済情報を削除します。 
}

begin
  # 一括決済 削除
  result = api_instance.delete_payment_bulk(id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->delete_payment_bulk: #{e}"
end
```

#### Using the delete_payment_bulk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentBulkDeletingResponse>, Integer, Hash)> delete_payment_bulk_with_http_info(id, opts)

```ruby
begin
  # 一括決済 削除
  data, status_code, headers = api_instance.delete_payment_bulk_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentBulkDeletingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->delete_payment_bulk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | 一括決済ID。\\ 削除対象の一括決済情報のIDを指定します。  |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップを販売主とした一括決済情報を削除します。  | [optional] |

### Return type

[**PaymentBulkDeletingResponse**](PaymentBulkDeletingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_plan

> <PlanDeletingResponse> delete_plan(id)

プラン 削除

IDで指定したプラン情報を削除します。\\ プランが1つ以上のサブスクリプションで使用されているとき（`used_flag = 1`のとき）、プランは削除できません。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | プランID

begin
  # プラン 削除
  result = api_instance.delete_plan(id)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->delete_plan: #{e}"
end
```

#### Using the delete_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanDeletingResponse>, Integer, Hash)> delete_plan_with_http_info(id)

```ruby
begin
  # プラン 削除
  data, status_code, headers = api_instance.delete_plan_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanDeletingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->delete_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | プランID |  |

### Return type

[**PlanDeletingResponse**](PlanDeletingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## execute_payment

> <ExecutePayment200Response> execute_payment(id, opts)

決済 実行

fincodeに登録された決済情報を指定し、請求を実行します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure Bearer authorization: Public-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | オーダーID（決済情報のID）
opts = {
  tenant_shop_id: TODO, # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップを販売主とした決済のうち、`id`で指定した決済処理を実行します。 
  execute_payment_request: FincodeApiClient::PaymentApplePayExecutingRequest.new({pay_type: FincodeApiClient::PayType::CARD, access_id: 'a_**********************', token: 'eyJoZWFkZXIiOnsiZXBoZW1lcmFsUHVibGljS2V5IjoidGVzdFB1YmxpY0tleSIsInB1YmxpY0tleUhhc2giOiJ0ZXN0S2V5SGFzaCIsInRyYW5zYWN0aW9uSWQiOiJ0ZXN0VHJhbnNhY3Rpb24ifSwiZGF0YSI6ImV5SmhjSEJzYVdOaGRHbHZibEJ5YVcxaGNubEJZMk52ZFc1MFRuVnRZbVZ5SWpvaU5ERXhNVEV4TVRFeE1URXhNVEV4TVNJc0ltRndjR3hwWTJGMGFXOXVSWGh3YVhKaGRHbHZia1JoZEdVaU9pSXlOakV5TXpFaUxDSmpkWEp5Wlc1amVVTnZaR1VpT2lJek9USWlMQ0owY21GdWMyRmpkR2x2YmtGdGIzVnVkQ0k2SWpFeE1URWlMQ0pqWVhKa2FHOXNaR1Z5VG1GdFpTSTZJaUlzSW1SbGRtbGpaVTFoYm5WbVlXTjBkWEpsY2tsa1pXNTBhV1pwWlhJaU9pSWlMQ0p3WVhsdFpXNTBSR0YwWVZSNWNHVWlPaUl6UkZObFkzVnlaU0lzSW5CaGVXMWxiblJFWVhSaElqcDdJbTl1YkdsdVpWQmhlVzFsYm5SRGNubHdkRzluY21GdElqb2lSSFZ0YlhsRFFWWldRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRU0lzSW1WamFVbHVaR2xqWVhSdmNpSTZJalVpZlgwPSIsInNpZ25hdHVyZSI6InRlc3RTaWduYXR1cmUiLCJ2ZXJzaW9uIjoiTW9jayJ9'}) # ExecutePaymentRequest | 
}

begin
  # 決済 実行
  result = api_instance.execute_payment(id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->execute_payment: #{e}"
end
```

#### Using the execute_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExecutePayment200Response>, Integer, Hash)> execute_payment_with_http_info(id, opts)

```ruby
begin
  # 決済 実行
  data, status_code, headers = api_instance.execute_payment_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExecutePayment200Response>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->execute_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | オーダーID（決済情報のID） |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップを販売主とした決済のうち、&#x60;id&#x60;で指定した決済処理を実行します。  | [optional] |
| **execute_payment_request** | [**ExecutePaymentRequest**](ExecutePaymentRequest.md) |  | [optional] |

### Return type

[**ExecutePayment200Response**](ExecutePayment200Response.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Public-Bearer-Auth](../README.md#Public-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## execute_payment_after_three_d_secureecure

> <PaymentCardExecutingAfterThreeDSecureResponse> execute_payment_after_three_d_secureecure(id, opts)

認証後決済 実行

3Dセキュア認証後の決済を実行します。\\ \\ 3Dセキュア認証APIもしくは認証結果確定APIのレスポンスの3Dセキュア認証結果（`tds2_trans_result`）が`Y`または`A`のとき、このAPIを実行して3Dセキュア認証後の決済を実行します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure Bearer authorization: Public-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | オーダーID（決済情報のID）
opts = {
  tenant_shop_id: TODO, # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップを販売主とした決済のうち、`id`で指定した決済の3Dセキュア認証後決済を実行します。 
  payment_card_executing_after_three_d_secure_request: FincodeApiClient::PaymentCardExecutingAfterThreeDSecureRequest.new({pay_type: FincodeApiClient::PayType::CARD, access_id: 'a_**********************'}) # PaymentCardExecutingAfterThreeDSecureRequest | 
}

begin
  # 認証後決済 実行
  result = api_instance.execute_payment_after_three_d_secureecure(id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->execute_payment_after_three_d_secureecure: #{e}"
end
```

#### Using the execute_payment_after_three_d_secureecure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentCardExecutingAfterThreeDSecureResponse>, Integer, Hash)> execute_payment_after_three_d_secureecure_with_http_info(id, opts)

```ruby
begin
  # 認証後決済 実行
  data, status_code, headers = api_instance.execute_payment_after_three_d_secureecure_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentCardExecutingAfterThreeDSecureResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->execute_payment_after_three_d_secureecure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | オーダーID（決済情報のID） |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップを販売主とした決済のうち、&#x60;id&#x60;で指定した決済の3Dセキュア認証後決済を実行します。  | [optional] |
| **payment_card_executing_after_three_d_secure_request** | [**PaymentCardExecutingAfterThreeDSecureRequest**](PaymentCardExecutingAfterThreeDSecureRequest.md) |  | [optional] |

### Return type

[**PaymentCardExecutingAfterThreeDSecureResponse**](PaymentCardExecutingAfterThreeDSecureResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Public-Bearer-Auth](../README.md#Public-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## generate_barcode_of_payment

> <PaymentKonbiniGeneratingBarcodeResponse> generate_barcode_of_payment(id, opts)

バーコード発行

リクエストしたデバイスの情報に合わせてコンビニ決済のバーコードを再度発行します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | オーダーID（決済情報のID）
opts = {
  tenant_shop_id: TODO, # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップを販売主としたコンビニ決済のうち、`id`で指定した決済のバーコードを再度発行します。 
  payment_konbini_generating_barcode_request: FincodeApiClient::PaymentKonbiniGeneratingBarcodeRequest.new({pay_type: FincodeApiClient::PayType::CARD, access_id: 'a_**********************', device_name: 'iPhone', win_width: '375', win_height: '812', pixel_ratio: '2.00', win_size_type: FincodeApiClient::WinSizeType::N1}) # PaymentKonbiniGeneratingBarcodeRequest | 
}

begin
  # バーコード発行
  result = api_instance.generate_barcode_of_payment(id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->generate_barcode_of_payment: #{e}"
end
```

#### Using the generate_barcode_of_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentKonbiniGeneratingBarcodeResponse>, Integer, Hash)> generate_barcode_of_payment_with_http_info(id, opts)

```ruby
begin
  # バーコード発行
  data, status_code, headers = api_instance.generate_barcode_of_payment_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentKonbiniGeneratingBarcodeResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->generate_barcode_of_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | オーダーID（決済情報のID） |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップを販売主としたコンビニ決済のうち、&#x60;id&#x60;で指定した決済のバーコードを再度発行します。  | [optional] |
| **payment_konbini_generating_barcode_request** | [**PaymentKonbiniGeneratingBarcodeRequest**](PaymentKonbiniGeneratingBarcodeRequest.md) |  | [optional] |

### Return type

[**PaymentKonbiniGeneratingBarcodeResponse**](PaymentKonbiniGeneratingBarcodeResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_invoices

> <InvoiceDetailRetrievingResponse> get_invoices(id, opts)

インボイス 取得

指定したIDを持つインボイス情報を取得します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = 'id_example' # String | インボイスID 
opts = {
  tenant_shop_id: TODO # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定することで、指定したテナントショップのインボイス請求書情報を取得できます。 
}

begin
  # インボイス 取得
  result = api_instance.get_invoices(id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->get_invoices: #{e}"
end
```

#### Using the get_invoices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvoiceDetailRetrievingResponse>, Integer, Hash)> get_invoices_with_http_info(id, opts)

```ruby
begin
  # インボイス 取得
  data, status_code, headers = api_instance.get_invoices_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvoiceDetailRetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->get_invoices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | インボイスID  |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定することで、指定したテナントショップのインボイス請求書情報を取得できます。  | [optional] |

### Return type

[**InvoiceDetailRetrievingResponse**](InvoiceDetailRetrievingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_invoices_list

> <InvoiceListRetrievingResponse> get_invoices_list(opts)

インボイス 一覧取得

インボイス情報を一覧で取得します。クエリパラメータを指定して取得する条件を絞り込めます。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
opts = {
  tenant_shop_id: TODO, # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップを請求元とした請求書情報を一覧で取得します。 
  query: FincodeApiClient::GetInvoicesListQueryParameter.new # GetInvoicesListQueryParameter | 検索条件クエリパラメータ 
}

begin
  # インボイス 一覧取得
  result = api_instance.get_invoices_list(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->get_invoices_list: #{e}"
end
```

#### Using the get_invoices_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvoiceListRetrievingResponse>, Integer, Hash)> get_invoices_list_with_http_info(opts)

```ruby
begin
  # インボイス 一覧取得
  data, status_code, headers = api_instance.get_invoices_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvoiceListRetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->get_invoices_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップを請求元とした請求書情報を一覧で取得します。  | [optional] |
| **query** | [**GetInvoicesListQueryParameter**](.md) | 検索条件クエリパラメータ  | [optional] |

### Return type

[**InvoiceListRetrievingResponse**](InvoiceListRetrievingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## open_invoices

> <InvoiceDetailOpeningResponse> open_invoices(id, opts)

インボイス 発行

IDで指定したインボイス情報をもとに請求を開始します。請求書WebページのURL発行、請求先顧客へのメール送信などを行います。\\ このAPIの呼び出し以降はインボイス 更新APIでは 回収困難フラグ 、および 加盟店自由項目 のみ更新できます。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = 'id_example' # String | インボイスID 
opts = {
  tenant_shop_id: TODO, # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップを請求元としたインボイス請求書の請求を実施します。 
  invoice_detail_opening_request: FincodeApiClient::InvoiceDetailOpeningRequest.new # InvoiceDetailOpeningRequest | 
}

begin
  # インボイス 発行
  result = api_instance.open_invoices(id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->open_invoices: #{e}"
end
```

#### Using the open_invoices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvoiceDetailOpeningResponse>, Integer, Hash)> open_invoices_with_http_info(id, opts)

```ruby
begin
  # インボイス 発行
  data, status_code, headers = api_instance.open_invoices_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvoiceDetailOpeningResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->open_invoices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | インボイスID  |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップを請求元としたインボイス請求書の請求を実施します。  | [optional] |
| **invoice_detail_opening_request** | [**InvoiceDetailOpeningRequest**](InvoiceDetailOpeningRequest.md) |  | [optional] |

### Return type

[**InvoiceDetailOpeningResponse**](InvoiceDetailOpeningResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## paid_externally_invoices

> <InvoiceDetailMarkingResponse> paid_externally_invoices(id, opts)

インボイス 外部支払いマーク

指定したIDを持つ発行済みのインボイス情報を、fincodeによる決済機能でない方法で支払われたとしてマークします。\\ このインボイス情報のステータスは支払い完了（`PAID`）へ遷移し、fincode外支払フラグ（`is_paid_externally`）が`true` になります。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = 'id_example' # String | インボイスID 
opts = {
  tenant_shop_id: TODO, # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップを請求元としたインボイス請求書についての更新ができます。 
  paid_externally_invoices_request: FincodeApiClient::PaidExternallyInvoicesRequest.new # PaidExternallyInvoicesRequest | 
}

begin
  # インボイス 外部支払いマーク
  result = api_instance.paid_externally_invoices(id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->paid_externally_invoices: #{e}"
end
```

#### Using the paid_externally_invoices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvoiceDetailMarkingResponse>, Integer, Hash)> paid_externally_invoices_with_http_info(id, opts)

```ruby
begin
  # インボイス 外部支払いマーク
  data, status_code, headers = api_instance.paid_externally_invoices_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvoiceDetailMarkingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->paid_externally_invoices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | インボイスID  |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップを請求元としたインボイス請求書についての更新ができます。  | [optional] |
| **paid_externally_invoices_request** | [**PaidExternallyInvoicesRequest**](PaidExternallyInvoicesRequest.md) |  | [optional] |

### Return type

[**InvoiceDetailMarkingResponse**](InvoiceDetailMarkingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## refresh_invoices_virtualaccount

> <InvoiceDetailRefreshResponse> refresh_invoices_virtualaccount(id)

インボイス バーチャル口座再発行

指定したインボイスに割り当てられているバーチャル口座について、期限が切れていて口座がクローズされている場合、新たなバーチャル口座を割り当てます。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = 'id_example' # String | インボイスID

begin
  # インボイス バーチャル口座再発行
  result = api_instance.refresh_invoices_virtualaccount(id)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->refresh_invoices_virtualaccount: #{e}"
end
```

#### Using the refresh_invoices_virtualaccount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvoiceDetailRefreshResponse>, Integer, Hash)> refresh_invoices_virtualaccount_with_http_info(id)

```ruby
begin
  # インボイス バーチャル口座再発行
  data, status_code, headers = api_instance.refresh_invoices_virtualaccount_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvoiceDetailRefreshResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->refresh_invoices_virtualaccount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | インボイスID |  |

### Return type

[**InvoiceDetailRefreshResponse**](InvoiceDetailRefreshResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## register_invoices

> <InvoiceCreatingResponse> register_invoices(opts)

インボイス 作成

インボイス情報を作成します。\\ 取引内容やご利用の決済手段などの各種入力項目は、インボイス 更新APIを利用して後から入力することも可能です。\\ インボイス 発行APIを呼び出すまで請求は行われません。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
opts = {
  tenant_shop_id: TODO, # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップを請求元とした請求書情報を作成します。 
  invoice_creating_request: FincodeApiClient::InvoiceCreatingRequest.new # InvoiceCreatingRequest | 
}

begin
  # インボイス 作成
  result = api_instance.register_invoices(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->register_invoices: #{e}"
end
```

#### Using the register_invoices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvoiceCreatingResponse>, Integer, Hash)> register_invoices_with_http_info(opts)

```ruby
begin
  # インボイス 作成
  data, status_code, headers = api_instance.register_invoices_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvoiceCreatingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->register_invoices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップを請求元とした請求書情報を作成します。  | [optional] |
| **invoice_creating_request** | [**InvoiceCreatingRequest**](InvoiceCreatingRequest.md) |  | [optional] |

### Return type

[**InvoiceCreatingResponse**](InvoiceCreatingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## request_production_environment

> <POSTContractsExaminationsResponse> request_production_environment(tenant_shop_id, shop_id, enable_immediate_use)

テナントショップ 本番環境申請

`id`で指定したテナントショップの本番環境の利用申請を行います。このAPIを呼び出すまでにテナント本番環境申請情報 更新APIで申請情報を用意しておく必要があります。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
tenant_shop_id = TODO # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップのものとしてファイルをアップロードします。 
shop_id = TODO # String | ショップID 
enable_immediate_use = TODO # Boolean | VISA/Mastercard即時利用をリクエストするかどうか  - `true`： 即時利用をリクエストする - `false`： 即時利用をリクエストしない  即時利用は以下の場合リクエストできません。  - `本番環境申請情報.contract_info.site_published`が`true`でない（審査時点でWebサイトが用意されていない） - `本番環境申請情報.shop_info.deals_long_apply_content`が`true`である（審査に時間がかかる商材を取り扱うと表明している） 

begin
  # テナントショップ 本番環境申請
  result = api_instance.request_production_environment(tenant_shop_id, shop_id, enable_immediate_use)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->request_production_environment: #{e}"
end
```

#### Using the request_production_environment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<POSTContractsExaminationsResponse>, Integer, Hash)> request_production_environment_with_http_info(tenant_shop_id, shop_id, enable_immediate_use)

```ruby
begin
  # テナントショップ 本番環境申請
  data, status_code, headers = api_instance.request_production_environment_with_http_info(tenant_shop_id, shop_id, enable_immediate_use)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <POSTContractsExaminationsResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->request_production_environment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップのものとしてファイルをアップロードします。  |  |
| **shop_id** | [**String**](String.md) | ショップID  |  |
| **enable_immediate_use** | [**Boolean**](Boolean.md) | VISA/Mastercard即時利用をリクエストするかどうか  - &#x60;true&#x60;： 即時利用をリクエストする - &#x60;false&#x60;： 即時利用をリクエストしない  即時利用は以下の場合リクエストできません。  - &#x60;本番環境申請情報.contract_info.site_published&#x60;が&#x60;true&#x60;でない（審査時点でWebサイトが用意されていない） - &#x60;本番環境申請情報.shop_info.deals_long_apply_content&#x60;が&#x60;true&#x60;である（審査に時間がかかる商材を取り扱うと表明している）  |  |

### Return type

[**POSTContractsExaminationsResponse**](POSTContractsExaminationsResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## reserve_provider

> <POSTProviderReserveResponse> reserve_provider(id, tenant_shop_id, provider)

テナントショップ 決済手段追加申請

`id`で指定したテナントショップの決済手段の追加申請を行います。   ※ 申請状況の管理画面への反映には最大24時間程度のタイムラグがあります 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | 指定したテナントショップに対して決済手段を追加申請します。`Tenant-Shop-Id`ヘッダーも併せて指定してください。 
tenant_shop_id = TODO # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップに対して決済手段を追加申請します。 
provider = TODO # Array<PaymentProvider> | 追加対象決済手段\\\\ \\\\ 追加で申請する決済手段をリストで指定します。  - `PAYSLE`: コンビニ決済 - `PAYPAY`: PayPay - `APPLE_PAY_UC`: Apple Pay（VISA/Mastercard- UCカード） - `APPLE_PAY_JCB_AMEX`: Apple Pay（JCB/American Express） - `GOOGLE_PAY_UC`: Google Pay（VISA/Mastercard - UCカード） - `GOOGLE_PAY_TFC`: Google Pay（VISA/Mastercard - トヨタファイナンス） - `GOOGLE_PAY_JCB_AMEX`: Google Pay（JCB/American Express） - `GOOGLE_PAY_DINERS`: Google Pay（Diners Club） - `DIRECT_DEBIT`: 口座振替 - `VIRTUAL_ACCOUNT`: 銀行振込（バーチャル口座） 

begin
  # テナントショップ 決済手段追加申請
  result = api_instance.reserve_provider(id, tenant_shop_id, provider)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->reserve_provider: #{e}"
end
```

#### Using the reserve_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<POSTProviderReserveResponse>, Integer, Hash)> reserve_provider_with_http_info(id, tenant_shop_id, provider)

```ruby
begin
  # テナントショップ 決済手段追加申請
  data, status_code, headers = api_instance.reserve_provider_with_http_info(id, tenant_shop_id, provider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <POSTProviderReserveResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->reserve_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | 指定したテナントショップに対して決済手段を追加申請します。&#x60;Tenant-Shop-Id&#x60;ヘッダーも併せて指定してください。  |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップに対して決済手段を追加申請します。  |  |
| **provider** | [**Array&lt;PaymentProvider&gt;**](Array.md) | 追加対象決済手段\\\\ \\\\ 追加で申請する決済手段をリストで指定します。  - &#x60;PAYSLE&#x60;: コンビニ決済 - &#x60;PAYPAY&#x60;: PayPay - &#x60;APPLE_PAY_UC&#x60;: Apple Pay（VISA/Mastercard- UCカード） - &#x60;APPLE_PAY_JCB_AMEX&#x60;: Apple Pay（JCB/American Express） - &#x60;GOOGLE_PAY_UC&#x60;: Google Pay（VISA/Mastercard - UCカード） - &#x60;GOOGLE_PAY_TFC&#x60;: Google Pay（VISA/Mastercard - トヨタファイナンス） - &#x60;GOOGLE_PAY_JCB_AMEX&#x60;: Google Pay（JCB/American Express） - &#x60;GOOGLE_PAY_DINERS&#x60;: Google Pay（Diners Club） - &#x60;DIRECT_DEBIT&#x60;: 口座振替 - &#x60;VIRTUAL_ACCOUNT&#x60;: 銀行振込（バーチャル口座）  |  |

### Return type

[**POSTProviderReserveResponse**](POSTProviderReserveResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## retrieve_account

> <AccountRetrievingResponse> retrieve_account(id, opts)

売上入金 取得

IDで指定した売上入金を取得します。\\ `aggregate_term_start`から`aggregate_term_end`までの期間における売上の集計結果が含まれます。\\ \\ 集計された個々のレコードについては 売上入金明細 一覧取得API を利用することで取得できます。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | 売上入金ID
opts = {
  tenant_shop_id: TODO # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ このテナントショップの売上入金情報のうち、指定したIDの売上入金情報を取得します。 
}

begin
  # 売上入金 取得
  result = api_instance.retrieve_account(id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_account: #{e}"
end
```

#### Using the retrieve_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountRetrievingResponse>, Integer, Hash)> retrieve_account_with_http_info(id, opts)

```ruby
begin
  # 売上入金 取得
  data, status_code, headers = api_instance.retrieve_account_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountRetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | 売上入金ID |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ このテナントショップの売上入金情報のうち、指定したIDの売上入金情報を取得します。  | [optional] |

### Return type

[**AccountRetrievingResponse**](AccountRetrievingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_account_detail_list

> <AccountDetailListRetrievingResponse> retrieve_account_detail_list(id, opts)

売上入金詳細 一覧取得

IDで指定した売上入金に紐づく売上入金詳細を一覧で取得します。\\ 1つの売上入金明細は、1件の決済／キャンセル／チャージバック／チャージバック取消調整のいずれかに対応します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = 'id_example' # String | 売上入金ID
opts = {
  tenant_shop_id: TODO, # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ このテナントショップの売上入金情報のうち、指定したIDの売上入金情報の売上入金詳細を取得します。 
  query: FincodeApiClient::PaginationQueryParams.new # PaginationQueryParams | 売上入金詳細の一覧取得において検索条件となるクエリパラメータ 
}

begin
  # 売上入金詳細 一覧取得
  result = api_instance.retrieve_account_detail_list(id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_account_detail_list: #{e}"
end
```

#### Using the retrieve_account_detail_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountDetailListRetrievingResponse>, Integer, Hash)> retrieve_account_detail_list_with_http_info(id, opts)

```ruby
begin
  # 売上入金詳細 一覧取得
  data, status_code, headers = api_instance.retrieve_account_detail_list_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountDetailListRetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_account_detail_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | 売上入金ID |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ このテナントショップの売上入金情報のうち、指定したIDの売上入金情報の売上入金詳細を取得します。  | [optional] |
| **query** | [**PaginationQueryParams**](.md) | 売上入金詳細の一覧取得において検索条件となるクエリパラメータ  | [optional] |

### Return type

[**AccountDetailListRetrievingResponse**](AccountDetailListRetrievingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_account_list

> <AccountListRetrievingResponse> retrieve_account_list(opts)

売上入金 一覧取得

売上入金情報を一覧で取得します。クエリパラメータを指定して取得する条件を絞り込めます。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
opts = {
  tenant_shop_id: TODO, # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ このテナントショップの売上入金情報から一覧で取得します。 
  query: FincodeApiClient::RetrieveAccountListQueryParameter.new # RetrieveAccountListQueryParameter | 売上入金情報の一覧取得において検索条件となるクエリパラメータ 
}

begin
  # 売上入金 一覧取得
  result = api_instance.retrieve_account_list(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_account_list: #{e}"
end
```

#### Using the retrieve_account_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountListRetrievingResponse>, Integer, Hash)> retrieve_account_list_with_http_info(opts)

```ruby
begin
  # 売上入金 一覧取得
  data, status_code, headers = api_instance.retrieve_account_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountListRetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_account_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ このテナントショップの売上入金情報から一覧で取得します。  | [optional] |
| **query** | [**RetrieveAccountListQueryParameter**](.md) | 売上入金情報の一覧取得において検索条件となるクエリパラメータ  | [optional] |

### Return type

[**AccountListRetrievingResponse**](AccountListRetrievingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_customer

> <CustomerRetrievingResponse> retrieve_customer(id, opts)

顧客 取得

IDで指定した顧客情報を取得します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure Bearer authorization: Public-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | 顧客ID
opts = {
  tenant_shop_id: TODO # String | <span class=\"smallText color--red-400\">※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ このテナントショップに紐づく顧客のうち、指定したIDの顧客情報を取得します。 
}

begin
  # 顧客 取得
  result = api_instance.retrieve_customer(id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_customer: #{e}"
end
```

#### Using the retrieve_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerRetrievingResponse>, Integer, Hash)> retrieve_customer_with_http_info(id, opts)

```ruby
begin
  # 顧客 取得
  data, status_code, headers = api_instance.retrieve_customer_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerRetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | 顧客ID |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ このテナントショップに紐づく顧客のうち、指定したIDの顧客情報を取得します。  | [optional] |

### Return type

[**CustomerRetrievingResponse**](CustomerRetrievingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Public-Bearer-Auth](../README.md#Public-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_customer_card

> <CustomerCardRetrievingResponse> retrieve_customer_card(customer_id, id, opts)

カード 取得

`customer_id`で指定した顧客に対し紐づくカードのうち`id`で指定したものを取得します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure Bearer authorization: Public-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
customer_id = TODO # String | このカードが紐づく顧客のID
id = TODO # String | 取得するカードのID
opts = {
  tenant_shop_id: TODO # String | <span class=\"smallText color--red-400\">※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ このテナントショップに紐づく顧客のうち、指定したIDの顧客に対して登録されたカードから取得します。 
}

begin
  # カード 取得
  result = api_instance.retrieve_customer_card(customer_id, id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_customer_card: #{e}"
end
```

#### Using the retrieve_customer_card_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerCardRetrievingResponse>, Integer, Hash)> retrieve_customer_card_with_http_info(customer_id, id, opts)

```ruby
begin
  # カード 取得
  data, status_code, headers = api_instance.retrieve_customer_card_with_http_info(customer_id, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerCardRetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_customer_card_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | [**String**](.md) | このカードが紐づく顧客のID |  |
| **id** | [**String**](.md) | 取得するカードのID |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ このテナントショップに紐づく顧客のうち、指定したIDの顧客に対して登録されたカードから取得します。  | [optional] |

### Return type

[**CustomerCardRetrievingResponse**](CustomerCardRetrievingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Public-Bearer-Auth](../README.md#Public-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_customer_card_list

> <CustomerCardListRetrievingResponse> retrieve_customer_card_list(customer_id, opts)

カード 一覧取得

`customer_id`で指定した顧客に対し紐づくカードを一覧で取得します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure Bearer authorization: Public-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
customer_id = TODO # String | 顧客ID。 \\ この顧客に紐づくカードを一覧で取得します。 
opts = {
  tenant_shop_id: TODO # String | <span class=\"smallText color--red-400\">※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ このテナントショップに紐づく顧客のうち、指定したIDの顧客に対して登録されたカードの一覧を取得します。 
}

begin
  # カード 一覧取得
  result = api_instance.retrieve_customer_card_list(customer_id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_customer_card_list: #{e}"
end
```

#### Using the retrieve_customer_card_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerCardListRetrievingResponse>, Integer, Hash)> retrieve_customer_card_list_with_http_info(customer_id, opts)

```ruby
begin
  # カード 一覧取得
  data, status_code, headers = api_instance.retrieve_customer_card_list_with_http_info(customer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerCardListRetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_customer_card_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | [**String**](.md) | 顧客ID。 \\ この顧客に紐づくカードを一覧で取得します。  |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ このテナントショップに紐づく顧客のうち、指定したIDの顧客に対して登録されたカードの一覧を取得します。  | [optional] |

### Return type

[**CustomerCardListRetrievingResponse**](CustomerCardListRetrievingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Public-Bearer-Auth](../README.md#Public-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_customer_list

> <CustomerListRetrievingResponse> retrieve_customer_list(opts)

顧客 一覧取得

顧客情報を一覧で取得します。クエリパラメータを指定して取得する条件を絞り込めます。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
opts = {
  query: FincodeApiClient::RetrieveCustomerListQueryParameter.new, # RetrieveCustomerListQueryParameter | 顧客情報の一覧取得において検索条件となるクエリパラメータ 
  tenant_shop_id: TODO # String | <span class=\"smallText color--red-400\">※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ このテナントショップに紐づく顧客から一覧で取得します。 
}

begin
  # 顧客 一覧取得
  result = api_instance.retrieve_customer_list(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_customer_list: #{e}"
end
```

#### Using the retrieve_customer_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerListRetrievingResponse>, Integer, Hash)> retrieve_customer_list_with_http_info(opts)

```ruby
begin
  # 顧客 一覧取得
  data, status_code, headers = api_instance.retrieve_customer_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerListRetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_customer_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | [**RetrieveCustomerListQueryParameter**](.md) | 顧客情報の一覧取得において検索条件となるクエリパラメータ  | [optional] |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ このテナントショップに紐づく顧客から一覧で取得します。  | [optional] |

### Return type

[**CustomerListRetrievingResponse**](CustomerListRetrievingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_customer_payment_method

> <CustomerPaymentMethodRetrievingResponse> retrieve_customer_payment_method(customer_id, id, query, opts)

決済手段 取得

`customer_id`で指定した顧客に対し紐づく決済手段のうち、`id`で指定したものを取得します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure Bearer authorization: Public-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
customer_id = TODO # String | 顧客ID
id = TODO # String | 決済手段ID
query = FincodeApiClient::CustomerPaymentMethodRetrievingQueryParams.new({pay_type: FincodeApiClient::PaymentMethodPayType::CARD}) # CustomerPaymentMethodRetrievingQueryParams | 決済手段の取得において検索条件となるクエリパラメータ 
opts = {
  tenant_shop_id: TODO # String | <span class=\"smallText color--red-400\">※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ このテナントショップに紐づく顧客のうち、指定したIDの顧客に紐づく決済手段からIDで指定した決済手段を取得します。 
}

begin
  # 決済手段 取得
  result = api_instance.retrieve_customer_payment_method(customer_id, id, query, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_customer_payment_method: #{e}"
end
```

#### Using the retrieve_customer_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerPaymentMethodRetrievingResponse>, Integer, Hash)> retrieve_customer_payment_method_with_http_info(customer_id, id, query, opts)

```ruby
begin
  # 決済手段 取得
  data, status_code, headers = api_instance.retrieve_customer_payment_method_with_http_info(customer_id, id, query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerPaymentMethodRetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_customer_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | [**String**](.md) | 顧客ID |  |
| **id** | [**String**](.md) | 決済手段ID |  |
| **query** | [**CustomerPaymentMethodRetrievingQueryParams**](.md) | 決済手段の取得において検索条件となるクエリパラメータ  |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ このテナントショップに紐づく顧客のうち、指定したIDの顧客に紐づく決済手段からIDで指定した決済手段を取得します。  | [optional] |

### Return type

[**CustomerPaymentMethodRetrievingResponse**](CustomerPaymentMethodRetrievingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Public-Bearer-Auth](../README.md#Public-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_customer_payment_method_list

> <CustomerPaymentMethodListRetrievingResponse> retrieve_customer_payment_method_list(customer_id, query, opts)

決済手段 一覧取得

`customer_id`で指定した顧客に対し紐づく決済手段を一覧で取得します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure Bearer authorization: Public-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
customer_id = TODO # String | 顧客ID
query = FincodeApiClient::CustomerPaymentMethodListRetrievingQueryParams.new({pay_type: FincodeApiClient::PaymentMethodPayType::CARD}) # CustomerPaymentMethodListRetrievingQueryParams | 決済手段の一覧取得において検索条件となるクエリパラメータ 
opts = {
  tenant_shop_id: TODO # String | <span class=\"smallText color--red-400\">※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ このテナントショップに紐づく顧客のうち、指定したIDの顧客に紐づく決済手段から一覧で取得します。 
}

begin
  # 決済手段 一覧取得
  result = api_instance.retrieve_customer_payment_method_list(customer_id, query, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_customer_payment_method_list: #{e}"
end
```

#### Using the retrieve_customer_payment_method_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerPaymentMethodListRetrievingResponse>, Integer, Hash)> retrieve_customer_payment_method_list_with_http_info(customer_id, query, opts)

```ruby
begin
  # 決済手段 一覧取得
  data, status_code, headers = api_instance.retrieve_customer_payment_method_list_with_http_info(customer_id, query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerPaymentMethodListRetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_customer_payment_method_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | [**String**](.md) | 顧客ID |  |
| **query** | [**CustomerPaymentMethodListRetrievingQueryParams**](.md) | 決済手段の一覧取得において検索条件となるクエリパラメータ  |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ このテナントショップに紐づく顧客のうち、指定したIDの顧客に紐づく決済手段から一覧で取得します。  | [optional] |

### Return type

[**CustomerPaymentMethodListRetrievingResponse**](CustomerPaymentMethodListRetrievingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Public-Bearer-Auth](../README.md#Public-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_payment

> <RetrievePayment200Response> retrieve_payment(id, query, opts)

決済 取得

指定した決済情報を取得します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | オーダーID（決済情報のID）
query = FincodeApiClient::PaymentRetrievingQueryParams.new({pay_type: FincodeApiClient::PayType::CARD}) # PaymentRetrievingQueryParams | 決済の取得において検索条件となるクエリパラメータ 
opts = {
  tenant_shop_id: TODO # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップを販売主とした決済のうち、`id`で指定した決済情報を取得します。 
}

begin
  # 決済 取得
  result = api_instance.retrieve_payment(id, query, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_payment: #{e}"
end
```

#### Using the retrieve_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrievePayment200Response>, Integer, Hash)> retrieve_payment_with_http_info(id, query, opts)

```ruby
begin
  # 決済 取得
  data, status_code, headers = api_instance.retrieve_payment_with_http_info(id, query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrievePayment200Response>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | オーダーID（決済情報のID） |  |
| **query** | [**PaymentRetrievingQueryParams**](.md) | 決済の取得において検索条件となるクエリパラメータ  |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップを販売主とした決済のうち、&#x60;id&#x60;で指定した決済情報を取得します。  | [optional] |

### Return type

[**RetrievePayment200Response**](RetrievePayment200Response.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_payment_bulk_detail_list

> <PaymentBulkDetailListRetrievingResponse> retrieve_payment_bulk_detail_list(id, query, opts)

一括決済詳細 一覧取得

IDで指定した一括決済情報の詳細（決済1件ごとの情報）と各決済で発生したエラーの情報を一覧で取得します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = 'id_example' # String | 一括決済ID。\\ 詳細を取得する一括決済情報のIDを指定します。 
query = FincodeApiClient::RetrievePaymentBulkDetailListQueryParameter.new({pay_type: FincodeApiClient::PaymentBulkPayType::CARD}) # RetrievePaymentBulkDetailListQueryParameter | 一括決済情報の一覧取得において検索条件となるクエリパラメータ 
opts = {
  tenant_shop_id: TODO # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップを販売主とした一括決済の詳細を一覧で取得します。 
}

begin
  # 一括決済詳細 一覧取得
  result = api_instance.retrieve_payment_bulk_detail_list(id, query, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_payment_bulk_detail_list: #{e}"
end
```

#### Using the retrieve_payment_bulk_detail_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentBulkDetailListRetrievingResponse>, Integer, Hash)> retrieve_payment_bulk_detail_list_with_http_info(id, query, opts)

```ruby
begin
  # 一括決済詳細 一覧取得
  data, status_code, headers = api_instance.retrieve_payment_bulk_detail_list_with_http_info(id, query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentBulkDetailListRetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_payment_bulk_detail_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | 一括決済ID。\\ 詳細を取得する一括決済情報のIDを指定します。  |  |
| **query** | [**RetrievePaymentBulkDetailListQueryParameter**](.md) | 一括決済情報の一覧取得において検索条件となるクエリパラメータ  |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップを販売主とした一括決済の詳細を一覧で取得します。  | [optional] |

### Return type

[**PaymentBulkDetailListRetrievingResponse**](PaymentBulkDetailListRetrievingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_payment_bulk_list

> <PaymentBulkListRetrievingResponse> retrieve_payment_bulk_list(opts)

一括決済 一覧取得

fincodeに登録した一括決済の情報を一覧で取得します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
opts = {
  tenant_shop_id: TODO, # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップを販売主とした一括決済情報を一覧で取得します。 
  query: FincodeApiClient::RetrievePaymentBulkListQueryParameter.new # RetrievePaymentBulkListQueryParameter | 一括決済情報の一覧取得において検索条件となるクエリパラメータ 
}

begin
  # 一括決済 一覧取得
  result = api_instance.retrieve_payment_bulk_list(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_payment_bulk_list: #{e}"
end
```

#### Using the retrieve_payment_bulk_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentBulkListRetrievingResponse>, Integer, Hash)> retrieve_payment_bulk_list_with_http_info(opts)

```ruby
begin
  # 一括決済 一覧取得
  data, status_code, headers = api_instance.retrieve_payment_bulk_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentBulkListRetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_payment_bulk_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップを販売主とした一括決済情報を一覧で取得します。  | [optional] |
| **query** | [**RetrievePaymentBulkListQueryParameter**](.md) | 一括決済情報の一覧取得において検索条件となるクエリパラメータ  | [optional] |

### Return type

[**PaymentBulkListRetrievingResponse**](PaymentBulkListRetrievingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_payment_list

> <RetrievePaymentList200Response> retrieve_payment_list(query, opts)

決済 一覧取得

決済情報の一覧を取得します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
query = FincodeApiClient::ApplePay.new({pay_type: FincodeApiClient::PayType::CARD}) # RetrievePaymentListQueryParameter | 決済の一覧取得において検索条件となるクエリパラメータ 
opts = {
  tenant_shop_id: TODO # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ このテナントショップに紐づく決済から一覧で取得します。 
}

begin
  # 決済 一覧取得
  result = api_instance.retrieve_payment_list(query, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_payment_list: #{e}"
end
```

#### Using the retrieve_payment_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrievePaymentList200Response>, Integer, Hash)> retrieve_payment_list_with_http_info(query, opts)

```ruby
begin
  # 決済 一覧取得
  data, status_code, headers = api_instance.retrieve_payment_list_with_http_info(query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrievePaymentList200Response>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_payment_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | [**RetrievePaymentListQueryParameter**](.md) | 決済の一覧取得において検索条件となるクエリパラメータ  |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ このテナントショップに紐づく決済から一覧で取得します。  | [optional] |

### Return type

[**RetrievePaymentList200Response**](RetrievePaymentList200Response.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_plan

> <PlanRetrievingResponse> retrieve_plan(id)

プラン 取得

IDで指定したプラン情報を取得します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | プランID

begin
  # プラン 取得
  result = api_instance.retrieve_plan(id)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_plan: #{e}"
end
```

#### Using the retrieve_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanRetrievingResponse>, Integer, Hash)> retrieve_plan_with_http_info(id)

```ruby
begin
  # プラン 取得
  data, status_code, headers = api_instance.retrieve_plan_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanRetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | プランID |  |

### Return type

[**PlanRetrievingResponse**](PlanRetrievingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_plan_list

> <PlanListRetrievingResponse> retrieve_plan_list(opts)

プラン 一覧取得

プラン情報を一覧で取得します。クエリパラメータを指定して取得する条件を絞り込めます。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
opts = {
  query: FincodeApiClient::RetrievePlanListQueryParameter.new # RetrievePlanListQueryParameter | プラン情報の一覧取得において検索条件となるクエリパラメータ 
}

begin
  # プラン 一覧取得
  result = api_instance.retrieve_plan_list(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_plan_list: #{e}"
end
```

#### Using the retrieve_plan_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanListRetrievingResponse>, Integer, Hash)> retrieve_plan_list_with_http_info(opts)

```ruby
begin
  # プラン 一覧取得
  data, status_code, headers = api_instance.retrieve_plan_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanListRetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_plan_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | [**RetrievePlanListQueryParameter**](.md) | プラン情報の一覧取得において検索条件となるクエリパラメータ  | [optional] |

### Return type

[**PlanListRetrievingResponse**](PlanListRetrievingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_platform_account

> <PlatformAccountRetrievingResponse> retrieve_platform_account(id)

プラットフォーム利用料収入 取得

IDで指定したプラットフォーム利用料による売上入金情報を取得します。\\ `aggregate_term_start`から`aggregate_term_end`までの期間におけるプラットフォーム利用料による売上の集計結果が含まれます。\\ \\ テナントショップごとの利用料収入については プラットフォーム利用料収入サマリー 一覧取得API を利用することで取得できます。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | プラットフォーム利用料収入ID

begin
  # プラットフォーム利用料収入 取得
  result = api_instance.retrieve_platform_account(id)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_platform_account: #{e}"
end
```

#### Using the retrieve_platform_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlatformAccountRetrievingResponse>, Integer, Hash)> retrieve_platform_account_with_http_info(id)

```ruby
begin
  # プラットフォーム利用料収入 取得
  data, status_code, headers = api_instance.retrieve_platform_account_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlatformAccountRetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_platform_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | プラットフォーム利用料収入ID |  |

### Return type

[**PlatformAccountRetrievingResponse**](PlatformAccountRetrievingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_platform_account_list

> <PlatformAccountListRetrievingResponse> retrieve_platform_account_list(opts)

プラットフォーム利用料収入 一覧取得

プラットフォーム利用料による売上入金情報を一覧で取得します。クエリパラメータを指定して取得する条件を絞り込めます。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
opts = {
  query: FincodeApiClient::RetrievePlatformAccountListQueryParameter.new # RetrievePlatformAccountListQueryParameter | プラットフォーム利用料による売上入金情報の一覧取得において検索条件となるクエリパラメータ 
}

begin
  # プラットフォーム利用料収入 一覧取得
  result = api_instance.retrieve_platform_account_list(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_platform_account_list: #{e}"
end
```

#### Using the retrieve_platform_account_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlatformAccountListRetrievingResponse>, Integer, Hash)> retrieve_platform_account_list_with_http_info(opts)

```ruby
begin
  # プラットフォーム利用料収入 一覧取得
  data, status_code, headers = api_instance.retrieve_platform_account_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlatformAccountListRetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_platform_account_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | [**RetrievePlatformAccountListQueryParameter**](.md) | プラットフォーム利用料による売上入金情報の一覧取得において検索条件となるクエリパラメータ  | [optional] |

### Return type

[**PlatformAccountListRetrievingResponse**](PlatformAccountListRetrievingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_platform_account_summary_list

> <PlatformAccountSummaryListRetrievingResponse> retrieve_platform_account_summary_list(id, opts)

プラットフォーム利用料収入サマリー 一覧取得

IDで指定したプラットフォーム利用料収入のサマリーを一覧で取得します。クエリパラメータを指定して取得する条件を絞り込めます。\\ サマリー情報の中にはテナントショップごとの利用料収入についての情報が含まれます。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | プラットフォーム利用料収入ID
opts = {
  query: FincodeApiClient::RetrievePlatformAccountSummaryListQueryParameter.new # RetrievePlatformAccountSummaryListQueryParameter | プラットフォーム利用料による売上入金情報の一覧取得において検索条件となるクエリパラメータ 
}

begin
  # プラットフォーム利用料収入サマリー 一覧取得
  result = api_instance.retrieve_platform_account_summary_list(id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_platform_account_summary_list: #{e}"
end
```

#### Using the retrieve_platform_account_summary_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlatformAccountSummaryListRetrievingResponse>, Integer, Hash)> retrieve_platform_account_summary_list_with_http_info(id, opts)

```ruby
begin
  # プラットフォーム利用料収入サマリー 一覧取得
  data, status_code, headers = api_instance.retrieve_platform_account_summary_list_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlatformAccountSummaryListRetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_platform_account_summary_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | プラットフォーム利用料収入ID |  |
| **query** | [**RetrievePlatformAccountSummaryListQueryParameter**](.md) | プラットフォーム利用料による売上入金情報の一覧取得において検索条件となるクエリパラメータ  | [optional] |

### Return type

[**PlatformAccountSummaryListRetrievingResponse**](PlatformAccountSummaryListRetrievingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_platform_shop

> <PlatformShopRetrievingResponse> retrieve_platform_shop(id)

プラットフォームショップ 取得

`id`で指定したプラットフォームショップ（メインショップ・サブショップ）を取得します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | ショップID

begin
  # プラットフォームショップ 取得
  result = api_instance.retrieve_platform_shop(id)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_platform_shop: #{e}"
end
```

#### Using the retrieve_platform_shop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlatformShopRetrievingResponse>, Integer, Hash)> retrieve_platform_shop_with_http_info(id)

```ruby
begin
  # プラットフォームショップ 取得
  data, status_code, headers = api_instance.retrieve_platform_shop_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlatformShopRetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_platform_shop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | ショップID |  |

### Return type

[**PlatformShopRetrievingResponse**](PlatformShopRetrievingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_platform_shop_list

> <PlatformShopListRetrievingResponse> retrieve_platform_shop_list(opts)

プラットフォームショップ 一覧取得

プラットフォームショップ（メインショップ・サブショップ）を一覧で取得します。\\ クエリパラメータを指定して取得する条件を絞り込めます。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'

api_instance = FincodeApiClient::DefaultApi.new
opts = {
  query: FincodeApiClient::RetrievePlatformShopListQueryParameter.new # RetrievePlatformShopListQueryParameter | プラットフォーム情報の一覧取得において検索条件となるクエリパラメータ 
}

begin
  # プラットフォームショップ 一覧取得
  result = api_instance.retrieve_platform_shop_list(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_platform_shop_list: #{e}"
end
```

#### Using the retrieve_platform_shop_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlatformShopListRetrievingResponse>, Integer, Hash)> retrieve_platform_shop_list_with_http_info(opts)

```ruby
begin
  # プラットフォームショップ 一覧取得
  data, status_code, headers = api_instance.retrieve_platform_shop_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlatformShopListRetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_platform_shop_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | [**RetrievePlatformShopListQueryParameter**](.md) | プラットフォーム情報の一覧取得において検索条件となるクエリパラメータ  | [optional] |

### Return type

[**PlatformShopListRetrievingResponse**](PlatformShopListRetrievingResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_subscription

> <SubscriptionRetrievingResponse> retrieve_subscription(id)

サブスクリプション 取得

IDで指定したサブスクリプション情報を取得します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | サブスクリプションID

begin
  # サブスクリプション 取得
  result = api_instance.retrieve_subscription(id)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_subscription: #{e}"
end
```

#### Using the retrieve_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionRetrievingResponse>, Integer, Hash)> retrieve_subscription_with_http_info(id)

```ruby
begin
  # サブスクリプション 取得
  data, status_code, headers = api_instance.retrieve_subscription_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionRetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | サブスクリプションID |  |

### Return type

[**SubscriptionRetrievingResponse**](SubscriptionRetrievingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_subscription_list

> <SubscriptionListRetrievingResponse> retrieve_subscription_list(query)

サブスクリプション 一覧取得

サブスクリプション情報を一覧で取得します。クエリパラメータを指定して取得する条件を絞り込めます。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
query = FincodeApiClient::RetrieveSubscriptionListQueryParameter.new({pay_type: FincodeApiClient::SubscriptionPayType::CARD}) # RetrieveSubscriptionListQueryParameter | サブスクリプション情報の一覧取得において検索条件となるクエリパラメータ 

begin
  # サブスクリプション 一覧取得
  result = api_instance.retrieve_subscription_list(query)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_subscription_list: #{e}"
end
```

#### Using the retrieve_subscription_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionListRetrievingResponse>, Integer, Hash)> retrieve_subscription_list_with_http_info(query)

```ruby
begin
  # サブスクリプション 一覧取得
  data, status_code, headers = api_instance.retrieve_subscription_list_with_http_info(query)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionListRetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_subscription_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | [**RetrieveSubscriptionListQueryParameter**](.md) | サブスクリプション情報の一覧取得において検索条件となるクエリパラメータ  |  |

### Return type

[**SubscriptionListRetrievingResponse**](SubscriptionListRetrievingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_subscription_result_list

> <SubscriptionResultListRetrievingResponse> retrieve_subscription_result_list(query, id)

サブスクリプション結果 一覧取得

サブスクリプションにより発生した課金の結果を一覧で取得します。クエリパラメータを指定して取得する条件を絞り込めます。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
query = FincodeApiClient::RetrieveSubscriptionResultListQueryParameter.new({pay_type: FincodeApiClient::PropertiesPayType.new}) # RetrieveSubscriptionResultListQueryParameter | サブスクリプション結果の一覧取得において検索条件となるクエリパラメータ 
id = TODO # String | サブスクリプションID

begin
  # サブスクリプション結果 一覧取得
  result = api_instance.retrieve_subscription_result_list(query, id)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_subscription_result_list: #{e}"
end
```

#### Using the retrieve_subscription_result_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionResultListRetrievingResponse>, Integer, Hash)> retrieve_subscription_result_list_with_http_info(query, id)

```ruby
begin
  # サブスクリプション結果 一覧取得
  data, status_code, headers = api_instance.retrieve_subscription_result_list_with_http_info(query, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionResultListRetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_subscription_result_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | [**RetrieveSubscriptionResultListQueryParameter**](.md) | サブスクリプション結果の一覧取得において検索条件となるクエリパラメータ  |  |
| **id** | [**String**](.md) | サブスクリプションID |  |

### Return type

[**SubscriptionResultListRetrievingResponse**](SubscriptionResultListRetrievingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_tenant_contract

> <ContractsRetrievingResponse> retrieve_tenant_contract(id, tenant_shop_id)

テナントショップ契約情報 取得

`id`で指定したテナントショップの契約情報を取得します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | 指定したテナントショップの契約情報を取得します。`Tenant-Shop-Id`ヘッダーも併せて指定してください。 
tenant_shop_id = TODO # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップの契約情報を取得します。 

begin
  # テナントショップ契約情報 取得
  result = api_instance.retrieve_tenant_contract(id, tenant_shop_id)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_tenant_contract: #{e}"
end
```

#### Using the retrieve_tenant_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContractsRetrievingResponse>, Integer, Hash)> retrieve_tenant_contract_with_http_info(id, tenant_shop_id)

```ruby
begin
  # テナントショップ契約情報 取得
  data, status_code, headers = api_instance.retrieve_tenant_contract_with_http_info(id, tenant_shop_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContractsRetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_tenant_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | 指定したテナントショップの契約情報を取得します。&#x60;Tenant-Shop-Id&#x60;ヘッダーも併せて指定してください。  |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップの契約情報を取得します。  |  |

### Return type

[**ContractsRetrievingResponse**](ContractsRetrievingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_tenant_examination_info

> <ExaminationInfoRetrievingResponse> retrieve_tenant_examination_info(id, tenant_shop_id)

（旧）テナントショップ本番環境申請情報 取得

※ このAPIの使用は現在非推奨です。新しいテナントショップ本番環境申請情報 取得APIをご利用ください。\\ `id`で指定したテナントショップの本番環境申請情報を取得します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | 指定したテナントショップの本番環境申請情報を取得します。`Tenant-Shop-Id`ヘッダーも併せて指定してください。 
tenant_shop_id = TODO # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップの本番環境申請情報を取得します。 

begin
  # （旧）テナントショップ本番環境申請情報 取得
  result = api_instance.retrieve_tenant_examination_info(id, tenant_shop_id)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_tenant_examination_info: #{e}"
end
```

#### Using the retrieve_tenant_examination_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExaminationInfoRetrievingResponse>, Integer, Hash)> retrieve_tenant_examination_info_with_http_info(id, tenant_shop_id)

```ruby
begin
  # （旧）テナントショップ本番環境申請情報 取得
  data, status_code, headers = api_instance.retrieve_tenant_examination_info_with_http_info(id, tenant_shop_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExaminationInfoRetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_tenant_examination_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | 指定したテナントショップの本番環境申請情報を取得します。&#x60;Tenant-Shop-Id&#x60;ヘッダーも併せて指定してください。  |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップの本番環境申請情報を取得します。  |  |

### Return type

[**ExaminationInfoRetrievingResponse**](ExaminationInfoRetrievingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_tenant_examination_info_v2

> <ExaminationInfoV2RetrievingResponse> retrieve_tenant_examination_info_v2(id, tenant_shop_id)

テナントショップ本番環境申請情報 取得

`id`で指定したテナントショップの本番環境申請情報を取得します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | 指定したテナントショップの本番環境申請情報を取得します。`Tenant-Shop-Id`ヘッダーも併せて指定してください。 
tenant_shop_id = TODO # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップの本番環境申請情報を取得します。 

begin
  # テナントショップ本番環境申請情報 取得
  result = api_instance.retrieve_tenant_examination_info_v2(id, tenant_shop_id)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_tenant_examination_info_v2: #{e}"
end
```

#### Using the retrieve_tenant_examination_info_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExaminationInfoV2RetrievingResponse>, Integer, Hash)> retrieve_tenant_examination_info_v2_with_http_info(id, tenant_shop_id)

```ruby
begin
  # テナントショップ本番環境申請情報 取得
  data, status_code, headers = api_instance.retrieve_tenant_examination_info_v2_with_http_info(id, tenant_shop_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExaminationInfoV2RetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_tenant_examination_info_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | 指定したテナントショップの本番環境申請情報を取得します。&#x60;Tenant-Shop-Id&#x60;ヘッダーも併せて指定してください。  |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップの本番環境申請情報を取得します。  |  |

### Return type

[**ExaminationInfoV2RetrievingResponse**](ExaminationInfoV2RetrievingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_tenant_shop

> <TenantShopRetrievingResponse> retrieve_tenant_shop(id)

テナントショップ 取得

`id`で指定したテナント情報を取得します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | ショップID 

begin
  # テナントショップ 取得
  result = api_instance.retrieve_tenant_shop(id)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_tenant_shop: #{e}"
end
```

#### Using the retrieve_tenant_shop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantShopRetrievingResponse>, Integer, Hash)> retrieve_tenant_shop_with_http_info(id)

```ruby
begin
  # テナントショップ 取得
  data, status_code, headers = api_instance.retrieve_tenant_shop_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantShopRetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_tenant_shop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | ショップID  |  |

### Return type

[**TenantShopRetrievingResponse**](TenantShopRetrievingResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_tenant_shop_list

> <TenantShopListRetrievingResponse> retrieve_tenant_shop_list(opts)

テナントショップ 一覧取得

テナントショップを一覧で取得します。\\ クエリパラメータを指定して取得する条件を絞り込めます。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'

api_instance = FincodeApiClient::DefaultApi.new
opts = {
  query: FincodeApiClient::RetrieveTenantShopListQueryParameter.new # RetrieveTenantShopListQueryParameter | テナント情報の一覧取得において検索条件となるクエリパラメータ 
}

begin
  # テナントショップ 一覧取得
  result = api_instance.retrieve_tenant_shop_list(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_tenant_shop_list: #{e}"
end
```

#### Using the retrieve_tenant_shop_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantShopListRetrievingResponse>, Integer, Hash)> retrieve_tenant_shop_list_with_http_info(opts)

```ruby
begin
  # テナントショップ 一覧取得
  data, status_code, headers = api_instance.retrieve_tenant_shop_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantShopListRetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->retrieve_tenant_shop_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | [**RetrieveTenantShopListQueryParameter**](.md) | テナント情報の一覧取得において検索条件となるクエリパラメータ  | [optional] |

### Return type

[**TenantShopListRetrievingResponse**](TenantShopListRetrievingResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## unsubscripbe_subscription

> <SubscriptionUnsubscribingResponse> unsubscripbe_subscription(id)

サブスクリプション 解約

IDで指定したサブスクリプションを解約し、請求を停止します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | サブスクリプションID

begin
  # サブスクリプション 解約
  result = api_instance.unsubscripbe_subscription(id)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->unsubscripbe_subscription: #{e}"
end
```

#### Using the unsubscripbe_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionUnsubscribingResponse>, Integer, Hash)> unsubscripbe_subscription_with_http_info(id)

```ruby
begin
  # サブスクリプション 解約
  data, status_code, headers = api_instance.unsubscripbe_subscription_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionUnsubscribingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->unsubscripbe_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | サブスクリプションID |  |

### Return type

[**SubscriptionUnsubscribingResponse**](SubscriptionUnsubscribingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_customer

> <CustomerUpdatingResponse> update_customer(id, opts)

顧客 更新

IDで指定した顧客情報を更新します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | 顧客ID
opts = {
  tenant_shop_id: TODO, # String | <span class=\"smallText color--red-400\">※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ このテナントショップに紐づく顧客のうち、指定したIDの顧客情報を更新します。 
  customer_updating_request: FincodeApiClient::CustomerUpdatingRequest.new # CustomerUpdatingRequest | 
}

begin
  # 顧客 更新
  result = api_instance.update_customer(id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->update_customer: #{e}"
end
```

#### Using the update_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerUpdatingResponse>, Integer, Hash)> update_customer_with_http_info(id, opts)

```ruby
begin
  # 顧客 更新
  data, status_code, headers = api_instance.update_customer_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerUpdatingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->update_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | 顧客ID |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ このテナントショップに紐づく顧客のうち、指定したIDの顧客情報を更新します。  | [optional] |
| **customer_updating_request** | [**CustomerUpdatingRequest**](CustomerUpdatingRequest.md) |  | [optional] |

### Return type

[**CustomerUpdatingResponse**](CustomerUpdatingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_customer_card

> <CustomerCardUpdatingResponse> update_customer_card(customer_id, id, opts)

カード 更新

`customer_id`で指定した顧客に対し紐づくカードのうち`id`で指定したものを更新します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
customer_id = TODO # String | このカードが紐づく顧客のID
id = TODO # String | 更新するカードのID
opts = {
  tenant_shop_id: TODO, # String | <span class=\"smallText color--red-400\">※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ このテナントショップに紐づく顧客のうち、指定したIDの顧客に対して登録されたカードの情報を更新します。 
  customer_card_updating_request: FincodeApiClient::CustomerCardUpdatingRequest.new # CustomerCardUpdatingRequest | 
}

begin
  # カード 更新
  result = api_instance.update_customer_card(customer_id, id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->update_customer_card: #{e}"
end
```

#### Using the update_customer_card_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerCardUpdatingResponse>, Integer, Hash)> update_customer_card_with_http_info(customer_id, id, opts)

```ruby
begin
  # カード 更新
  data, status_code, headers = api_instance.update_customer_card_with_http_info(customer_id, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerCardUpdatingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->update_customer_card_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | [**String**](.md) | このカードが紐づく顧客のID |  |
| **id** | [**String**](.md) | 更新するカードのID |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ 顧客情報を共有しないプラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ このテナントショップに紐づく顧客のうち、指定したIDの顧客に対して登録されたカードの情報を更新します。  | [optional] |
| **customer_card_updating_request** | [**CustomerCardUpdatingRequest**](CustomerCardUpdatingRequest.md) |  | [optional] |

### Return type

[**CustomerCardUpdatingResponse**](CustomerCardUpdatingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_invoices

> <InvoiceDetailUpdatingResponse> update_invoices(id, opts)

インボイス 更新

指定したIDを持つインボイス情報を更新します。\\ インボイス 発行APIを呼び出すまで請求は行われません。発行後は 回収困難フラグ、および 加盟店自由項目 のみが更新可能です。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = 'id_example' # String | インボイスID 
opts = {
  tenant_shop_id: TODO, # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップを販売主とした請求書情報を更新します。 
  invoice_detail_updating_request: FincodeApiClient::InvoiceDetailUpdatingRequest.new # InvoiceDetailUpdatingRequest | 
}

begin
  # インボイス 更新
  result = api_instance.update_invoices(id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->update_invoices: #{e}"
end
```

#### Using the update_invoices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvoiceDetailUpdatingResponse>, Integer, Hash)> update_invoices_with_http_info(id, opts)

```ruby
begin
  # インボイス 更新
  data, status_code, headers = api_instance.update_invoices_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvoiceDetailUpdatingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->update_invoices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | インボイスID  |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップを販売主とした請求書情報を更新します。  | [optional] |
| **invoice_detail_updating_request** | [**InvoiceDetailUpdatingRequest**](InvoiceDetailUpdatingRequest.md) |  | [optional] |

### Return type

[**InvoiceDetailUpdatingResponse**](InvoiceDetailUpdatingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_plan

> <PlanUpdatingResponse> update_plan(id, opts)

プラン 更新

IDで指定したプラン情報を更新します。\\ プランが1つ以上のサブスクリプションで使用されているとき（`used_flag = 1`のとき）、プランは更新できません。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | プランID
opts = {
  plan_updating_request: FincodeApiClient::PlanUpdatingRequest.new # PlanUpdatingRequest | 
}

begin
  # プラン 更新
  result = api_instance.update_plan(id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->update_plan: #{e}"
end
```

#### Using the update_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanUpdatingResponse>, Integer, Hash)> update_plan_with_http_info(id, opts)

```ruby
begin
  # プラン 更新
  data, status_code, headers = api_instance.update_plan_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanUpdatingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->update_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | プランID |  |
| **plan_updating_request** | [**PlanUpdatingRequest**](PlanUpdatingRequest.md) |  | [optional] |

### Return type

[**PlanUpdatingResponse**](PlanUpdatingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_platform_shop

> <PlatformShopUpdatingResponse> update_platform_shop(id, opts)

プラットフォームショップ 更新

`examination_master_id`で指定した決済手段に関してプラットフォーム利用料を更新します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | ショップID
opts = {
  platform_shop_updating_request: FincodeApiClient::PlatformShopUpdatingRequest.new({examination_master_id: FincodeApiClient::ExaminationMasterId::VM}) # PlatformShopUpdatingRequest | 
}

begin
  # プラットフォームショップ 更新
  result = api_instance.update_platform_shop(id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->update_platform_shop: #{e}"
end
```

#### Using the update_platform_shop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlatformShopUpdatingResponse>, Integer, Hash)> update_platform_shop_with_http_info(id, opts)

```ruby
begin
  # プラットフォームショップ 更新
  data, status_code, headers = api_instance.update_platform_shop_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlatformShopUpdatingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->update_platform_shop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | ショップID |  |
| **platform_shop_updating_request** | [**PlatformShopUpdatingRequest**](PlatformShopUpdatingRequest.md) |  | [optional] |

### Return type

[**PlatformShopUpdatingResponse**](PlatformShopUpdatingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_subscription

> <SubscriptionUpdatingResponse> update_subscription(id, opts)

サブスクリプション 更新

IDで指定したサブスクリプション情報を更新します。\\ 指定されたパラメータのみ更新します。\\ サブスクリプションの初回課金がすでに行われているとき（`start_date ≤ {{現在時刻}}`のとき）、サブスクリプションは更新できません。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | サブスクリプションID
opts = {
  subscription_updating_request: FincodeApiClient::SubscriptionUpdatingRequest.new({pay_type: FincodeApiClient::SubscriptionPayType::CARD}) # SubscriptionUpdatingRequest | 
}

begin
  # サブスクリプション 更新
  result = api_instance.update_subscription(id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->update_subscription: #{e}"
end
```

#### Using the update_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionUpdatingResponse>, Integer, Hash)> update_subscription_with_http_info(id, opts)

```ruby
begin
  # サブスクリプション 更新
  data, status_code, headers = api_instance.update_subscription_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionUpdatingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->update_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | サブスクリプションID |  |
| **subscription_updating_request** | [**SubscriptionUpdatingRequest**](SubscriptionUpdatingRequest.md) |  | [optional] |

### Return type

[**SubscriptionUpdatingResponse**](SubscriptionUpdatingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_tenant_examination_info

> <ExaminationInfoUpdatingResponse> update_tenant_examination_info(id, tenant_shop_id, opts)

（旧）テナントショップ本番環境申請情報 更新

※ このAPIの使用は現在非推奨です。新しいテナントショップ本番環境申請情報 更新APIをご利用ください。\\ `id`で指定したテナントショップの本番環境申請情報を更新します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | 指定したテナントショップの本番環境申請情報を更新します。`Tenant-Shop-Id`ヘッダーも併せて指定してください。 
tenant_shop_id = TODO # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップの本番環境申請情報を更新します。 
opts = {
  examination_info_updating_request: FincodeApiClient::ExaminationInfoUpdatingRequest.new # ExaminationInfoUpdatingRequest | 
}

begin
  # （旧）テナントショップ本番環境申請情報 更新
  result = api_instance.update_tenant_examination_info(id, tenant_shop_id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->update_tenant_examination_info: #{e}"
end
```

#### Using the update_tenant_examination_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExaminationInfoUpdatingResponse>, Integer, Hash)> update_tenant_examination_info_with_http_info(id, tenant_shop_id, opts)

```ruby
begin
  # （旧）テナントショップ本番環境申請情報 更新
  data, status_code, headers = api_instance.update_tenant_examination_info_with_http_info(id, tenant_shop_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExaminationInfoUpdatingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->update_tenant_examination_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | 指定したテナントショップの本番環境申請情報を更新します。&#x60;Tenant-Shop-Id&#x60;ヘッダーも併せて指定してください。  |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップの本番環境申請情報を更新します。  |  |
| **examination_info_updating_request** | [**ExaminationInfoUpdatingRequest**](ExaminationInfoUpdatingRequest.md) |  | [optional] |

### Return type

[**ExaminationInfoUpdatingResponse**](ExaminationInfoUpdatingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_tenant_examination_info_v2

> <ExaminationInfoV2UpdatingResponse> update_tenant_examination_info_v2(id, tenant_shop_id, opts)

テナントショップ本番環境申請情報 更新

`id`で指定したテナントショップの本番環境申請情報を更新します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | 指定したテナントショップの本番環境申請情報を更新します。`Tenant-Shop-Id`ヘッダーも併せて指定してください。 
tenant_shop_id = TODO # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップの本番環境申請情報を更新します。 
opts = {
  examination_info_v2_updating_request: FincodeApiClient::ExaminationInfoV2UpdatingRequest.new # ExaminationInfoV2UpdatingRequest | 
}

begin
  # テナントショップ本番環境申請情報 更新
  result = api_instance.update_tenant_examination_info_v2(id, tenant_shop_id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->update_tenant_examination_info_v2: #{e}"
end
```

#### Using the update_tenant_examination_info_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExaminationInfoV2UpdatingResponse>, Integer, Hash)> update_tenant_examination_info_v2_with_http_info(id, tenant_shop_id, opts)

```ruby
begin
  # テナントショップ本番環境申請情報 更新
  data, status_code, headers = api_instance.update_tenant_examination_info_v2_with_http_info(id, tenant_shop_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExaminationInfoV2UpdatingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->update_tenant_examination_info_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | 指定したテナントショップの本番環境申請情報を更新します。&#x60;Tenant-Shop-Id&#x60;ヘッダーも併せて指定してください。  |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップの本番環境申請情報を更新します。  |  |
| **examination_info_v2_updating_request** | [**ExaminationInfoV2UpdatingRequest**](ExaminationInfoV2UpdatingRequest.md) |  | [optional] |

### Return type

[**ExaminationInfoV2UpdatingResponse**](ExaminationInfoV2UpdatingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_tenant_shop

> <TenantShopUpdatingResponse> update_tenant_shop(id, opts)

テナントショップ 更新

`examination_master_id`で指定した決済手段におけるプラットフォーム利用料などの設定の変更を`id`で指定したテナントに対して実行します。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | ショップID 
opts = {
  tenant_shop_updating_request: FincodeApiClient::TenantShopUpdatingRequest.new # TenantShopUpdatingRequest | 
}

begin
  # テナントショップ 更新
  result = api_instance.update_tenant_shop(id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->update_tenant_shop: #{e}"
end
```

#### Using the update_tenant_shop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantShopUpdatingResponse>, Integer, Hash)> update_tenant_shop_with_http_info(id, opts)

```ruby
begin
  # テナントショップ 更新
  data, status_code, headers = api_instance.update_tenant_shop_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantShopUpdatingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->update_tenant_shop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | ショップID  |  |
| **tenant_shop_updating_request** | [**TenantShopUpdatingRequest**](TenantShopUpdatingRequest.md) |  | [optional] |

### Return type

[**TenantShopUpdatingResponse**](TenantShopUpdatingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_examination_file

> <ExaminationFileUploadingResponse> upload_examination_file(id, tenant_shop_id, type, data)

テナントショップ 審査ファイルアップロード

`id`で指定したテナントショップの審査に必要なファイルのアップロードを行います。 

### Examples

```ruby
require 'time'
require 'fincode_api_client'
# setup authorization
FincodeApiClient.configure do |config|
  # Configure Bearer authorization: Secret-Bearer-Auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure HTTP basic authorization: Secret-Basic-Auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FincodeApiClient::DefaultApi.new
id = TODO # String | 指定したテナントショップのものとしてファイルをアップロードします。`Tenant-Shop-Id`ヘッダーも併せて指定してください。 
tenant_shop_id = TODO # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップのものとしてファイルをアップロードします。 
type = FincodeApiClient::ExaminationFileType::DRIVER_LICENSE_FRONT # ExaminationFileType | 
data = TODO # Object | 審査ファイルデータ\\\\ \\\\ 画像ファイルをマルチパートアップロードするときはこの`data`フィールドに画像データを設定します。 

begin
  # テナントショップ 審査ファイルアップロード
  result = api_instance.upload_examination_file(id, tenant_shop_id, type, data)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->upload_examination_file: #{e}"
end
```

#### Using the upload_examination_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExaminationFileUploadingResponse>, Integer, Hash)> upload_examination_file_with_http_info(id, tenant_shop_id, type, data)

```ruby
begin
  # テナントショップ 審査ファイルアップロード
  data, status_code, headers = api_instance.upload_examination_file_with_http_info(id, tenant_shop_id, type, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExaminationFileUploadingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling DefaultApi->upload_examination_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | 指定したテナントショップのものとしてファイルをアップロードします。&#x60;Tenant-Shop-Id&#x60;ヘッダーも併せて指定してください。  |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップのものとしてファイルをアップロードします。  |  |
| **type** | [**ExaminationFileType**](ExaminationFileType.md) |  |  |
| **data** | [**Object**](Object.md) | 審査ファイルデータ\\\\ \\\\ 画像ファイルをマルチパートアップロードするときはこの&#x60;data&#x60;フィールドに画像データを設定します。  |  |

### Return type

[**ExaminationFileUploadingResponse**](ExaminationFileUploadingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

