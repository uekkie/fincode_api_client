=begin
#fincode API

#fincodeのAPIリファレンスです。\\ fincodeは決済情報のほか様々なリソースを管理できるため、リソース指向なREST APIをベースとしたインターフェイス設計のもとでAPIを提供しています。\\ APIの呼び出しにはAPIキーによる認証が必要であり、リクエストの際に`Authorization`ヘッダーに有効なAPIキーをセットすることで認証できます。 

The version of the OpenAPI document: 1.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.6.0

=end

require 'spec_helper'
require 'json'

# Unit tests for FincodeApiClient::WebhookApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WebhookApi' do
  before do
    # run before each test
    @api_instance = FincodeApiClient::WebhookApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WebhookApi' do
    it 'should create an instance of WebhookApi' do
      expect(@api_instance).to be_instance_of(FincodeApiClient::WebhookApi)
    end
  end

  # unit tests for create_webhook_setting
  # Webhook設定 登録
  # Webhook設定を登録します。 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :tenant_shop_id &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ 指定したテナントショップ上で発生したイベントを購読するWebhook設定を登録します。 
  # @option opts [WebhookSettingCreatingRequest] :webhook_setting_creating_request 
  # @return [WebhookSettingCreatingResponse]
  describe 'create_webhook_setting test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_webhook_setting
  # Webhook設定 削除
  # IDで指定したWebhook設定を削除します。 
  # @param id Webhook設定のID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :tenant_shop_id &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ このテナントショップに紐づくWebhook設定のうち、指定したIDのWebhook設定を削除します。 
  # @return [WebhookSettingDeletingResponse]
  describe 'delete_webhook_setting test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for receive_webhook_of_apple_pay_payment
  # Apple Pay
  # Apple Payによる決済に関するイベント（&#x60;payments.applepay.*&#x60;）で通知されるリクエストのボディの仕様です。 
  # @param [Hash] opts the optional parameters
  # @option opts [WebhookEventPaymentApplePay] :webhook_event_payment_apple_pay 
  # @return [WebhookResponse]
  describe 'receive_webhook_of_apple_pay_payment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for receive_webhook_of_card
  # カード
  # カードに関するイベント（&#x60;card.*&#x60;）で通知されるリクエストのボディの仕様です。 
  # @param [Hash] opts the optional parameters
  # @option opts [WebhookEventCard] :webhook_event_card 
  # @return [WebhookResponse]
  describe 'receive_webhook_of_card test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for receive_webhook_of_card_payment
  # カード決済
  # カード決済に関するイベント（&#x60;payments.card.*&#x60;）で通知されるリクエストのボディの仕様です。 
  # @param [Hash] opts the optional parameters
  # @option opts [WebhookEventPaymentCard] :webhook_event_payment_card 
  # @return [WebhookResponse]
  describe 'receive_webhook_of_card_payment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for receive_webhook_of_card_payment_bulk_batch
  # 一括決済課金（カード決済）
  # カード決済による一括決済 課金イベント（&#x60;payments.bulk.card.batch&#x60;）で通知されるリクエストのボディの仕様です。 
  # @param [Hash] opts the optional parameters
  # @option opts [WebhookEventPaymentBulkBatchCard] :webhook_event_payment_bulk_batch_card 
  # @return [WebhookResponse]
  describe 'receive_webhook_of_card_payment_bulk_batch test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for receive_webhook_of_card_recurring_batch
  # サブスクリプション課金（カード決済）
  # カード決済によるサブスクリプション課金のイベント（&#x60;recurring.card.batch&#x60;）で通知されるリクエストのボディの仕様です。 
  # @param [Hash] opts the optional parameters
  # @option opts [WebhookEventRecurringBatchCard] :webhook_event_recurring_batch_card 
  # @return [WebhookResponse]
  describe 'receive_webhook_of_card_recurring_batch test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for receive_webhook_of_card_subscription
  # サブスクリプション（カード決済）
  # カード決済によるサブスクリプションに関するイベント（&#x60;subscription.card.*&#x60;）で通知されるリクエストのボディの仕様です。 
  # @param [Hash] opts the optional parameters
  # @option opts [WebhookEventSubscriptionCard] :webhook_event_subscription_card 
  # @return [WebhookResponse]
  describe 'receive_webhook_of_card_subscription test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for receive_webhook_of_contract
  # 決済手段 契約状況
  # 決済手段 契約状況 更新イベント（&#x60;contracts.status_code.updated&#x60;）で通知されるリクエストのボディの仕様です。 
  # @param [Hash] opts the optional parameters
  # @option opts [WebhookEventContract] :webhook_event_contract 
  # @return [WebhookResponse]
  describe 'receive_webhook_of_contract test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for receive_webhook_of_customer_payment_method
  # 決済手段
  # 顧客の決済手段に関するイベント（&#x60;customers.payment_methods.*&#x60;）で通知されるリクエストのボディの仕様です。 
  # @param [Hash] opts the optional parameters
  # @option opts [WebhookEventCustomerPaymentMethod] :webhook_event_customer_payment_method 
  # @return [WebhookResponse]
  describe 'receive_webhook_of_customer_payment_method test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for receive_webhook_of_direct_debit_payment
  # 口座振替
  # 口座振替に関するイベント（&#x60;payments.directdebit.*&#x60;）で通知されるリクエストのボディの仕様です。 
  # @param [Hash] opts the optional parameters
  # @option opts [WebhookEventPaymentDirectDebit] :webhook_event_payment_direct_debit 
  # @return [WebhookResponse]
  describe 'receive_webhook_of_direct_debit_payment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for receive_webhook_of_direct_debit_recurring_batch
  # サブスクリプション課金（口座振替）
  # 口座振替によるサブスクリプション課金に関するイベント（&#x60;recurring.directdebit.batch&#x60;）で通知されるリクエストのボディの仕様です。 
  # @param [Hash] opts the optional parameters
  # @option opts [WebhookEventRecurringBatchDirectDebit] :webhook_event_recurring_batch_direct_debit 
  # @return [WebhookResponse]
  describe 'receive_webhook_of_direct_debit_recurring_batch test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for receive_webhook_of_direct_debit_subscription
  # サブスクリプション（口座振替）
  # 口座振替によるサブスクリプションに関するイベント（&#x60;subscription.directdebit.*&#x60;）で通知されるリクエストのボディの仕様です。 
  # @param [Hash] opts the optional parameters
  # @option opts [WebhookEventSubscriptionDirectDebit] :webhook_event_subscription_direct_debit 
  # @return [WebhookResponse]
  describe 'receive_webhook_of_direct_debit_subscription test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for receive_webhook_of_konbini_payment
  # コンビニ決済
  # コンビニ決済に関するイベント（&#x60;payments.konbini.*&#x60;）で通知されるリクエストのボディの仕様です。 
  # @param [Hash] opts the optional parameters
  # @option opts [WebhookEventPaymentKonbini] :webhook_event_payment_konbini 
  # @return [WebhookResponse]
  describe 'receive_webhook_of_konbini_payment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for receive_webhook_of_pay_pay_payment
  # PayPay
  # PayPayによる決済に関するイベント（&#x60;payments.paypay.*&#x60;）で通知されるリクエストのボディの仕様です。 
  # @param [Hash] opts the optional parameters
  # @option opts [WebhookEventPaymentPayPay] :webhook_event_payment_pay_pay 
  # @return [WebhookResponse]
  describe 'receive_webhook_of_pay_pay_payment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for receive_webhook_of_registering_card_payment_bulk
  # 一括決済（カード決済）
  # カード決済による一括決済 登録イベント（&#x60;payments.bulk.card.regist&#x60;）で通知されるリクエストのボディの仕様です。 
  # @param [Hash] opts the optional parameters
  # @option opts [WebhookEventPaymentBulkRegistCard] :webhook_event_payment_bulk_regist_card 
  # @return [WebhookResponse]
  describe 'receive_webhook_of_registering_card_payment_bulk test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for receive_webhook_of_virtual_account_payment
  # 銀行振込（バーチャル口座）
  # 銀行振込（バーチャル口座）による決済に関するイベント（&#x60;payments.virtualaccount.*&#x60;）で通知されるリクエストのボディの仕様です。 
  # @param [Hash] opts the optional parameters
  # @option opts [WebhookEventPaymentVirtualAccount] :webhook_event_payment_virtual_account 
  # @return [WebhookResponse]
  describe 'receive_webhook_of_virtual_account_payment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for retrieve_webhook_setting
  # Webhook設定 取得
  # IDで指定したWebhook設定を取得します。 
  # @param id Webhook設定のID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :tenant_shop_id &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ このテナントショップに紐づくWebhook設定のうち、指定したIDのWebhook設定を取得します。 
  # @return [WebhookSettingRetrievingResponse]
  describe 'retrieve_webhook_setting test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for retrieve_webhook_setting_list
  # Webhook設定 一覧取得
  # Webhook設定を一覧で取得します。 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :tenant_shop_id &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ このテナントショップに紐づくWebhook設定から一覧で取得します。 
  # @return [WebhookSettingListRetrievingResponse]
  describe 'retrieve_webhook_setting_list test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_webhook_setting
  # Webhook設定 更新
  # IDで指定したWebhook設定を更新します。 
  # @param id Webhook設定のID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :tenant_shop_id &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ このテナントショップに紐づくWebhook設定のうち、指定したIDのWebhook設定を更新します。 
  # @option opts [WebhookSettingUpdatingRequest] :webhook_setting_updating_request 
  # @return [WebhookSettingUpdatingResponse]
  describe 'update_webhook_setting test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
