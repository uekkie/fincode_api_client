# FincodeApiClient::WebhookApi

All URIs are relative to *https://api.fincode.jp*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_webhook_setting**](WebhookApi.md#create_webhook_setting) | **POST** /v1/webhook_settings | Webhook設定 登録 |
| [**delete_webhook_setting**](WebhookApi.md#delete_webhook_setting) | **DELETE** /v1/webhook_settings/{id} | Webhook設定 削除 |
| [**receive_webhook_of_apple_pay_payment**](WebhookApi.md#receive_webhook_of_apple_pay_payment) | **POST** /your-endpoint-on-applepay-payment | Apple Pay |
| [**receive_webhook_of_card**](WebhookApi.md#receive_webhook_of_card) | **POST** /your-endpoint-on-card | カード |
| [**receive_webhook_of_card_payment**](WebhookApi.md#receive_webhook_of_card_payment) | **POST** /your-endpoint-on-card-payment | カード決済 |
| [**receive_webhook_of_card_payment_bulk_batch**](WebhookApi.md#receive_webhook_of_card_payment_bulk_batch) | **POST** /your-endpoint-on-card-payment-bulk-batch | 一括決済課金（カード決済） |
| [**receive_webhook_of_card_recurring_batch**](WebhookApi.md#receive_webhook_of_card_recurring_batch) | **POST** /your-endpoint-on-card-recurring-batch | サブスクリプション課金（カード決済） |
| [**receive_webhook_of_card_subscription**](WebhookApi.md#receive_webhook_of_card_subscription) | **POST** /your-endpoint-on-card-subscription | サブスクリプション（カード決済） |
| [**receive_webhook_of_contract**](WebhookApi.md#receive_webhook_of_contract) | **POST** /your-endpoint-on-contract | 決済手段 契約状況 |
| [**receive_webhook_of_customer_payment_method**](WebhookApi.md#receive_webhook_of_customer_payment_method) | **POST** /your-endpoint-on-customer-payment_method | 決済手段 |
| [**receive_webhook_of_direct_debit_payment**](WebhookApi.md#receive_webhook_of_direct_debit_payment) | **POST** /your-endpoint-on-directdebit-payment | 口座振替 |
| [**receive_webhook_of_direct_debit_recurring_batch**](WebhookApi.md#receive_webhook_of_direct_debit_recurring_batch) | **POST** /your-endpoint-on-directdebit-recurring-batch | サブスクリプション課金（口座振替） |
| [**receive_webhook_of_direct_debit_subscription**](WebhookApi.md#receive_webhook_of_direct_debit_subscription) | **POST** /your-endpoint-on-directdebit-subscription | サブスクリプション（口座振替） |
| [**receive_webhook_of_google_pay_payment**](WebhookApi.md#receive_webhook_of_google_pay_payment) | **POST** /your-endpoint-on-googlepay-payment | GooglePay |
| [**receive_webhook_of_konbini_payment**](WebhookApi.md#receive_webhook_of_konbini_payment) | **POST** /your-endpoint-on-konbini-payment | コンビニ決済 |
| [**receive_webhook_of_pay_pay_payment**](WebhookApi.md#receive_webhook_of_pay_pay_payment) | **POST** /your-endpoint-on-paypay-payment | PayPay |
| [**receive_webhook_of_registering_card_payment_bulk**](WebhookApi.md#receive_webhook_of_registering_card_payment_bulk) | **POST** /your-endpoint-on-card-payment-bulk-regist | 一括決済（カード決済） |
| [**receive_webhook_of_virtual_account_payment**](WebhookApi.md#receive_webhook_of_virtual_account_payment) | **POST** /your-endpoint-on-virtualaccount-payment | 銀行振込（バーチャル口座） |
| [**retrieve_webhook_setting**](WebhookApi.md#retrieve_webhook_setting) | **GET** /v1/webhook_settings/{id} | Webhook設定 取得 |
| [**retrieve_webhook_setting_list**](WebhookApi.md#retrieve_webhook_setting_list) | **GET** /v1/webhook_settings | Webhook設定 一覧取得 |
| [**update_webhook_setting**](WebhookApi.md#update_webhook_setting) | **PUT** /v1/webhook_settings/{id} | Webhook設定 更新 |


## create_webhook_setting

> <WebhookSettingCreatingResponse> create_webhook_setting(opts)

Webhook設定 登録

Webhook設定を登録します。 

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

api_instance = FincodeApiClient::WebhookApi.new
opts = {
  tenant_shop_id: TODO, # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ 指定したテナントショップ上で発生したイベントを購読するWebhook設定を登録します。 
  webhook_setting_creating_request: FincodeApiClient::WebhookSettingCreatingRequest.new({event: FincodeApiClient::FincodeEvent::PAYMENTS_CARD_REGIST}) # WebhookSettingCreatingRequest | 
}

begin
  # Webhook設定 登録
  result = api_instance.create_webhook_setting(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->create_webhook_setting: #{e}"
end
```

#### Using the create_webhook_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookSettingCreatingResponse>, Integer, Hash)> create_webhook_setting_with_http_info(opts)

```ruby
begin
  # Webhook設定 登録
  data, status_code, headers = api_instance.create_webhook_setting_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookSettingCreatingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->create_webhook_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップ上で発生したイベントを購読するWebhook設定を登録します。  | [optional] |
| **webhook_setting_creating_request** | [**WebhookSettingCreatingRequest**](WebhookSettingCreatingRequest.md) |  | [optional] |

### Return type

[**WebhookSettingCreatingResponse**](WebhookSettingCreatingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_webhook_setting

> <WebhookSettingDeletingResponse> delete_webhook_setting(id, opts)

Webhook設定 削除

IDで指定したWebhook設定を削除します。 

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

api_instance = FincodeApiClient::WebhookApi.new
id = TODO # String | Webhook設定のID
opts = {
  tenant_shop_id: TODO # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ このテナントショップに紐づくWebhook設定のうち、指定したIDのWebhook設定を削除します。 
}

begin
  # Webhook設定 削除
  result = api_instance.delete_webhook_setting(id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->delete_webhook_setting: #{e}"
end
```

#### Using the delete_webhook_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookSettingDeletingResponse>, Integer, Hash)> delete_webhook_setting_with_http_info(id, opts)

```ruby
begin
  # Webhook設定 削除
  data, status_code, headers = api_instance.delete_webhook_setting_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookSettingDeletingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->delete_webhook_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | Webhook設定のID |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ このテナントショップに紐づくWebhook設定のうち、指定したIDのWebhook設定を削除します。  | [optional] |

### Return type

[**WebhookSettingDeletingResponse**](WebhookSettingDeletingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## receive_webhook_of_apple_pay_payment

> <WebhookResponse> receive_webhook_of_apple_pay_payment(opts)

Apple Pay

Apple Payによる決済に関するイベント（`payments.applepay.*`）で通知されるリクエストのボディの仕様です。 

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

api_instance = FincodeApiClient::WebhookApi.new
opts = {
  webhook_event_payment_apple_pay: FincodeApiClient::WebhookEventPaymentApplePay.new # WebhookEventPaymentApplePay | 
}

begin
  # Apple Pay
  result = api_instance.receive_webhook_of_apple_pay_payment(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_apple_pay_payment: #{e}"
end
```

#### Using the receive_webhook_of_apple_pay_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse>, Integer, Hash)> receive_webhook_of_apple_pay_payment_with_http_info(opts)

```ruby
begin
  # Apple Pay
  data, status_code, headers = api_instance.receive_webhook_of_apple_pay_payment_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_apple_pay_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_event_payment_apple_pay** | [**WebhookEventPaymentApplePay**](WebhookEventPaymentApplePay.md) |  | [optional] |

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, text/plain


## receive_webhook_of_card

> <WebhookResponse> receive_webhook_of_card(opts)

カード

カードに関するイベント（`card.*`）で通知されるリクエストのボディの仕様です。 

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

api_instance = FincodeApiClient::WebhookApi.new
opts = {
  webhook_event_card: FincodeApiClient::WebhookEventCard.new # WebhookEventCard | 
}

begin
  # カード
  result = api_instance.receive_webhook_of_card(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_card: #{e}"
end
```

#### Using the receive_webhook_of_card_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse>, Integer, Hash)> receive_webhook_of_card_with_http_info(opts)

```ruby
begin
  # カード
  data, status_code, headers = api_instance.receive_webhook_of_card_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_card_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_event_card** | [**WebhookEventCard**](WebhookEventCard.md) |  | [optional] |

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, text/plain


## receive_webhook_of_card_payment

> <WebhookResponse> receive_webhook_of_card_payment(opts)

カード決済

カード決済に関するイベント（`payments.card.*`）で通知されるリクエストのボディの仕様です。 

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

api_instance = FincodeApiClient::WebhookApi.new
opts = {
  webhook_event_payment_card: FincodeApiClient::WebhookEventPaymentCard.new # WebhookEventPaymentCard | 
}

begin
  # カード決済
  result = api_instance.receive_webhook_of_card_payment(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_card_payment: #{e}"
end
```

#### Using the receive_webhook_of_card_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse>, Integer, Hash)> receive_webhook_of_card_payment_with_http_info(opts)

```ruby
begin
  # カード決済
  data, status_code, headers = api_instance.receive_webhook_of_card_payment_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_card_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_event_payment_card** | [**WebhookEventPaymentCard**](WebhookEventPaymentCard.md) |  | [optional] |

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, text/plain


## receive_webhook_of_card_payment_bulk_batch

> <WebhookResponse> receive_webhook_of_card_payment_bulk_batch(opts)

一括決済課金（カード決済）

カード決済による一括決済 課金イベント（`payments.bulk.card.batch`）で通知されるリクエストのボディの仕様です。 

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

api_instance = FincodeApiClient::WebhookApi.new
opts = {
  webhook_event_payment_bulk_batch_card: FincodeApiClient::WebhookEventPaymentBulkBatchCard.new # WebhookEventPaymentBulkBatchCard | 
}

begin
  # 一括決済課金（カード決済）
  result = api_instance.receive_webhook_of_card_payment_bulk_batch(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_card_payment_bulk_batch: #{e}"
end
```

#### Using the receive_webhook_of_card_payment_bulk_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse>, Integer, Hash)> receive_webhook_of_card_payment_bulk_batch_with_http_info(opts)

```ruby
begin
  # 一括決済課金（カード決済）
  data, status_code, headers = api_instance.receive_webhook_of_card_payment_bulk_batch_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_card_payment_bulk_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_event_payment_bulk_batch_card** | [**WebhookEventPaymentBulkBatchCard**](WebhookEventPaymentBulkBatchCard.md) |  | [optional] |

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, text/plain


## receive_webhook_of_card_recurring_batch

> <WebhookResponse> receive_webhook_of_card_recurring_batch(opts)

サブスクリプション課金（カード決済）

カード決済によるサブスクリプション課金のイベント（`recurring.card.batch`）で通知されるリクエストのボディの仕様です。 

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

api_instance = FincodeApiClient::WebhookApi.new
opts = {
  webhook_event_recurring_batch_card: FincodeApiClient::WebhookEventRecurringBatchCard.new # WebhookEventRecurringBatchCard | 
}

begin
  # サブスクリプション課金（カード決済）
  result = api_instance.receive_webhook_of_card_recurring_batch(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_card_recurring_batch: #{e}"
end
```

#### Using the receive_webhook_of_card_recurring_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse>, Integer, Hash)> receive_webhook_of_card_recurring_batch_with_http_info(opts)

```ruby
begin
  # サブスクリプション課金（カード決済）
  data, status_code, headers = api_instance.receive_webhook_of_card_recurring_batch_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_card_recurring_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_event_recurring_batch_card** | [**WebhookEventRecurringBatchCard**](WebhookEventRecurringBatchCard.md) |  | [optional] |

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, text/plain


## receive_webhook_of_card_subscription

> <WebhookResponse> receive_webhook_of_card_subscription(opts)

サブスクリプション（カード決済）

カード決済によるサブスクリプションに関するイベント（`subscription.card.*`）で通知されるリクエストのボディの仕様です。 

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

api_instance = FincodeApiClient::WebhookApi.new
opts = {
  webhook_event_subscription_card: FincodeApiClient::WebhookEventSubscriptionCard.new # WebhookEventSubscriptionCard | 
}

begin
  # サブスクリプション（カード決済）
  result = api_instance.receive_webhook_of_card_subscription(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_card_subscription: #{e}"
end
```

#### Using the receive_webhook_of_card_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse>, Integer, Hash)> receive_webhook_of_card_subscription_with_http_info(opts)

```ruby
begin
  # サブスクリプション（カード決済）
  data, status_code, headers = api_instance.receive_webhook_of_card_subscription_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_card_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_event_subscription_card** | [**WebhookEventSubscriptionCard**](WebhookEventSubscriptionCard.md) |  | [optional] |

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, text/plain


## receive_webhook_of_contract

> <WebhookResponse> receive_webhook_of_contract(opts)

決済手段 契約状況

決済手段 契約状況 更新イベント（`contracts.status_code.updated`）で通知されるリクエストのボディの仕様です。 

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

api_instance = FincodeApiClient::WebhookApi.new
opts = {
  webhook_event_contract: FincodeApiClient::WebhookEventContract.new # WebhookEventContract | 
}

begin
  # 決済手段 契約状況
  result = api_instance.receive_webhook_of_contract(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_contract: #{e}"
end
```

#### Using the receive_webhook_of_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse>, Integer, Hash)> receive_webhook_of_contract_with_http_info(opts)

```ruby
begin
  # 決済手段 契約状況
  data, status_code, headers = api_instance.receive_webhook_of_contract_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_event_contract** | [**WebhookEventContract**](WebhookEventContract.md) |  | [optional] |

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, text/plain


## receive_webhook_of_customer_payment_method

> <WebhookResponse> receive_webhook_of_customer_payment_method(opts)

決済手段

顧客の決済手段に関するイベント（`customers.payment_methods.*`）で通知されるリクエストのボディの仕様です。 

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

api_instance = FincodeApiClient::WebhookApi.new
opts = {
  webhook_event_customer_payment_method: FincodeApiClient::WebhookEventCustomerPaymentMethod.new # WebhookEventCustomerPaymentMethod | 
}

begin
  # 決済手段
  result = api_instance.receive_webhook_of_customer_payment_method(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_customer_payment_method: #{e}"
end
```

#### Using the receive_webhook_of_customer_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse>, Integer, Hash)> receive_webhook_of_customer_payment_method_with_http_info(opts)

```ruby
begin
  # 決済手段
  data, status_code, headers = api_instance.receive_webhook_of_customer_payment_method_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_customer_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_event_customer_payment_method** | [**WebhookEventCustomerPaymentMethod**](WebhookEventCustomerPaymentMethod.md) |  | [optional] |

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, text/plain


## receive_webhook_of_direct_debit_payment

> <WebhookResponse> receive_webhook_of_direct_debit_payment(opts)

口座振替

口座振替に関するイベント（`payments.directdebit.*`）で通知されるリクエストのボディの仕様です。 

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

api_instance = FincodeApiClient::WebhookApi.new
opts = {
  webhook_event_payment_direct_debit: FincodeApiClient::WebhookEventPaymentDirectDebit.new # WebhookEventPaymentDirectDebit | 
}

begin
  # 口座振替
  result = api_instance.receive_webhook_of_direct_debit_payment(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_direct_debit_payment: #{e}"
end
```

#### Using the receive_webhook_of_direct_debit_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse>, Integer, Hash)> receive_webhook_of_direct_debit_payment_with_http_info(opts)

```ruby
begin
  # 口座振替
  data, status_code, headers = api_instance.receive_webhook_of_direct_debit_payment_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_direct_debit_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_event_payment_direct_debit** | [**WebhookEventPaymentDirectDebit**](WebhookEventPaymentDirectDebit.md) |  | [optional] |

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, text/plain


## receive_webhook_of_direct_debit_recurring_batch

> <WebhookResponse> receive_webhook_of_direct_debit_recurring_batch(opts)

サブスクリプション課金（口座振替）

口座振替によるサブスクリプション課金に関するイベント（`recurring.directdebit.batch`）で通知されるリクエストのボディの仕様です。 

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

api_instance = FincodeApiClient::WebhookApi.new
opts = {
  webhook_event_recurring_batch_direct_debit: FincodeApiClient::WebhookEventRecurringBatchDirectDebit.new # WebhookEventRecurringBatchDirectDebit | 
}

begin
  # サブスクリプション課金（口座振替）
  result = api_instance.receive_webhook_of_direct_debit_recurring_batch(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_direct_debit_recurring_batch: #{e}"
end
```

#### Using the receive_webhook_of_direct_debit_recurring_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse>, Integer, Hash)> receive_webhook_of_direct_debit_recurring_batch_with_http_info(opts)

```ruby
begin
  # サブスクリプション課金（口座振替）
  data, status_code, headers = api_instance.receive_webhook_of_direct_debit_recurring_batch_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_direct_debit_recurring_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_event_recurring_batch_direct_debit** | [**WebhookEventRecurringBatchDirectDebit**](WebhookEventRecurringBatchDirectDebit.md) |  | [optional] |

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, text/plain


## receive_webhook_of_direct_debit_subscription

> <WebhookResponse> receive_webhook_of_direct_debit_subscription(opts)

サブスクリプション（口座振替）

口座振替によるサブスクリプションに関するイベント（`subscription.directdebit.*`）で通知されるリクエストのボディの仕様です。 

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

api_instance = FincodeApiClient::WebhookApi.new
opts = {
  webhook_event_subscription_direct_debit: FincodeApiClient::WebhookEventSubscriptionDirectDebit.new # WebhookEventSubscriptionDirectDebit | 
}

begin
  # サブスクリプション（口座振替）
  result = api_instance.receive_webhook_of_direct_debit_subscription(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_direct_debit_subscription: #{e}"
end
```

#### Using the receive_webhook_of_direct_debit_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse>, Integer, Hash)> receive_webhook_of_direct_debit_subscription_with_http_info(opts)

```ruby
begin
  # サブスクリプション（口座振替）
  data, status_code, headers = api_instance.receive_webhook_of_direct_debit_subscription_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_direct_debit_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_event_subscription_direct_debit** | [**WebhookEventSubscriptionDirectDebit**](WebhookEventSubscriptionDirectDebit.md) |  | [optional] |

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, text/plain


## receive_webhook_of_google_pay_payment

> <WebhookResponse> receive_webhook_of_google_pay_payment(opts)

GooglePay

GooglePayに関するイベント（`payments.googlepay.*`）で通知されるリクエストのボディの仕様です。 

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

api_instance = FincodeApiClient::WebhookApi.new
opts = {
  webhook_event_payment_google_pay: FincodeApiClient::WebhookEventPaymentGooglePay.new # WebhookEventPaymentGooglePay | 
}

begin
  # GooglePay
  result = api_instance.receive_webhook_of_google_pay_payment(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_google_pay_payment: #{e}"
end
```

#### Using the receive_webhook_of_google_pay_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse>, Integer, Hash)> receive_webhook_of_google_pay_payment_with_http_info(opts)

```ruby
begin
  # GooglePay
  data, status_code, headers = api_instance.receive_webhook_of_google_pay_payment_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_google_pay_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_event_payment_google_pay** | [**WebhookEventPaymentGooglePay**](WebhookEventPaymentGooglePay.md) |  | [optional] |

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, text/plain


## receive_webhook_of_konbini_payment

> <WebhookResponse> receive_webhook_of_konbini_payment(opts)

コンビニ決済

コンビニ決済に関するイベント（`payments.konbini.*`）で通知されるリクエストのボディの仕様です。 

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

api_instance = FincodeApiClient::WebhookApi.new
opts = {
  webhook_event_payment_konbini: FincodeApiClient::WebhookEventPaymentKonbini.new # WebhookEventPaymentKonbini | 
}

begin
  # コンビニ決済
  result = api_instance.receive_webhook_of_konbini_payment(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_konbini_payment: #{e}"
end
```

#### Using the receive_webhook_of_konbini_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse>, Integer, Hash)> receive_webhook_of_konbini_payment_with_http_info(opts)

```ruby
begin
  # コンビニ決済
  data, status_code, headers = api_instance.receive_webhook_of_konbini_payment_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_konbini_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_event_payment_konbini** | [**WebhookEventPaymentKonbini**](WebhookEventPaymentKonbini.md) |  | [optional] |

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, text/plain


## receive_webhook_of_pay_pay_payment

> <WebhookResponse> receive_webhook_of_pay_pay_payment(opts)

PayPay

PayPayによる決済に関するイベント（`payments.paypay.*`）で通知されるリクエストのボディの仕様です。 

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

api_instance = FincodeApiClient::WebhookApi.new
opts = {
  webhook_event_payment_pay_pay: FincodeApiClient::WebhookEventPaymentPayPay.new # WebhookEventPaymentPayPay | 
}

begin
  # PayPay
  result = api_instance.receive_webhook_of_pay_pay_payment(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_pay_pay_payment: #{e}"
end
```

#### Using the receive_webhook_of_pay_pay_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse>, Integer, Hash)> receive_webhook_of_pay_pay_payment_with_http_info(opts)

```ruby
begin
  # PayPay
  data, status_code, headers = api_instance.receive_webhook_of_pay_pay_payment_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_pay_pay_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_event_payment_pay_pay** | [**WebhookEventPaymentPayPay**](WebhookEventPaymentPayPay.md) |  | [optional] |

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, text/plain


## receive_webhook_of_registering_card_payment_bulk

> <WebhookResponse> receive_webhook_of_registering_card_payment_bulk(opts)

一括決済（カード決済）

カード決済による一括決済 登録イベント（`payments.bulk.card.regist`）で通知されるリクエストのボディの仕様です。 

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

api_instance = FincodeApiClient::WebhookApi.new
opts = {
  webhook_event_payment_bulk_regist_card: FincodeApiClient::WebhookEventPaymentBulkRegistCard.new # WebhookEventPaymentBulkRegistCard | 
}

begin
  # 一括決済（カード決済）
  result = api_instance.receive_webhook_of_registering_card_payment_bulk(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_registering_card_payment_bulk: #{e}"
end
```

#### Using the receive_webhook_of_registering_card_payment_bulk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse>, Integer, Hash)> receive_webhook_of_registering_card_payment_bulk_with_http_info(opts)

```ruby
begin
  # 一括決済（カード決済）
  data, status_code, headers = api_instance.receive_webhook_of_registering_card_payment_bulk_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_registering_card_payment_bulk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_event_payment_bulk_regist_card** | [**WebhookEventPaymentBulkRegistCard**](WebhookEventPaymentBulkRegistCard.md) |  | [optional] |

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, text/plain


## receive_webhook_of_virtual_account_payment

> <WebhookResponse> receive_webhook_of_virtual_account_payment(opts)

銀行振込（バーチャル口座）

銀行振込（バーチャル口座）による決済に関するイベント（`payments.virtualaccount.*`）で通知されるリクエストのボディの仕様です。 

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

api_instance = FincodeApiClient::WebhookApi.new
opts = {
  webhook_event_payment_virtual_account: FincodeApiClient::WebhookEventPaymentVirtualAccount.new # WebhookEventPaymentVirtualAccount | 
}

begin
  # 銀行振込（バーチャル口座）
  result = api_instance.receive_webhook_of_virtual_account_payment(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_virtual_account_payment: #{e}"
end
```

#### Using the receive_webhook_of_virtual_account_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse>, Integer, Hash)> receive_webhook_of_virtual_account_payment_with_http_info(opts)

```ruby
begin
  # 銀行振込（バーチャル口座）
  data, status_code, headers = api_instance.receive_webhook_of_virtual_account_payment_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->receive_webhook_of_virtual_account_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_event_payment_virtual_account** | [**WebhookEventPaymentVirtualAccount**](WebhookEventPaymentVirtualAccount.md) |  | [optional] |

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, text/plain


## retrieve_webhook_setting

> <WebhookSettingRetrievingResponse> retrieve_webhook_setting(id, opts)

Webhook設定 取得

IDで指定したWebhook設定を取得します。 

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

api_instance = FincodeApiClient::WebhookApi.new
id = TODO # String | Webhook設定のID
opts = {
  tenant_shop_id: TODO # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ このテナントショップに紐づくWebhook設定のうち、指定したIDのWebhook設定を取得します。 
}

begin
  # Webhook設定 取得
  result = api_instance.retrieve_webhook_setting(id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->retrieve_webhook_setting: #{e}"
end
```

#### Using the retrieve_webhook_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookSettingRetrievingResponse>, Integer, Hash)> retrieve_webhook_setting_with_http_info(id, opts)

```ruby
begin
  # Webhook設定 取得
  data, status_code, headers = api_instance.retrieve_webhook_setting_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookSettingRetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->retrieve_webhook_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | Webhook設定のID |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ このテナントショップに紐づくWebhook設定のうち、指定したIDのWebhook設定を取得します。  | [optional] |

### Return type

[**WebhookSettingRetrievingResponse**](WebhookSettingRetrievingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_webhook_setting_list

> <WebhookSettingListRetrievingResponse> retrieve_webhook_setting_list(opts)

Webhook設定 一覧取得

Webhook設定を一覧で取得します。 

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

api_instance = FincodeApiClient::WebhookApi.new
opts = {
  tenant_shop_id: TODO # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ このテナントショップに紐づくWebhook設定から一覧で取得します。 
}

begin
  # Webhook設定 一覧取得
  result = api_instance.retrieve_webhook_setting_list(opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->retrieve_webhook_setting_list: #{e}"
end
```

#### Using the retrieve_webhook_setting_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookSettingListRetrievingResponse>, Integer, Hash)> retrieve_webhook_setting_list_with_http_info(opts)

```ruby
begin
  # Webhook設定 一覧取得
  data, status_code, headers = api_instance.retrieve_webhook_setting_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookSettingListRetrievingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->retrieve_webhook_setting_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ このテナントショップに紐づくWebhook設定から一覧で取得します。  | [optional] |

### Return type

[**WebhookSettingListRetrievingResponse**](WebhookSettingListRetrievingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_webhook_setting

> <WebhookSettingUpdatingResponse> update_webhook_setting(id, opts)

Webhook設定 更新

IDで指定したWebhook設定を更新します。 

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

api_instance = FincodeApiClient::WebhookApi.new
id = TODO # String | Webhook設定のID
opts = {
  tenant_shop_id: TODO, # String | <span class=\"smallText color--red-400\">※ プラットフォームのメインショップのみ指定可</span>\\ テナントショップID。\\ このテナントショップに紐づくWebhook設定のうち、指定したIDのWebhook設定を更新します。 
  webhook_setting_updating_request: FincodeApiClient::WebhookSettingUpdatingRequest.new # WebhookSettingUpdatingRequest | 
}

begin
  # Webhook設定 更新
  result = api_instance.update_webhook_setting(id, opts)
  p result
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->update_webhook_setting: #{e}"
end
```

#### Using the update_webhook_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookSettingUpdatingResponse>, Integer, Hash)> update_webhook_setting_with_http_info(id, opts)

```ruby
begin
  # Webhook設定 更新
  data, status_code, headers = api_instance.update_webhook_setting_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookSettingUpdatingResponse>
rescue FincodeApiClient::ApiError => e
  puts "Error when calling WebhookApi->update_webhook_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | Webhook設定のID |  |
| **tenant_shop_id** | [**String**](.md) | &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ このテナントショップに紐づくWebhook設定のうち、指定したIDのWebhook設定を更新します。  | [optional] |
| **webhook_setting_updating_request** | [**WebhookSettingUpdatingRequest**](WebhookSettingUpdatingRequest.md) |  | [optional] |

### Return type

[**WebhookSettingUpdatingResponse**](WebhookSettingUpdatingResponse.md)

### Authorization

[Secret-Bearer-Auth](../README.md#Secret-Bearer-Auth), [Secret-Basic-Auth](../README.md#Secret-Basic-Auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

