=begin
#fincode API

#fincodeのAPIリファレンスです。\\ fincodeは決済情報のほか様々なリソースを管理できるため、リソース指向なREST APIをベースとしたインターフェイス設計のもとでAPIを提供しています。\\ APIの呼び出しにはAPIキーによる認証が必要であり、リクエストの際に`Authorization`ヘッダーに有効なAPIキーをセットすることで認証できます。 

The version of the OpenAPI document: 1.4.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'date'
require 'time'

module FincodeApiClient
  class FincodeEvent
    PAYMENTS_CARD_REGIST = "payments.card.regist".freeze
    PAYMENTS_CARD_EXEC = "payments.card.exec".freeze
    PAYMENTS_CARD_CAPTURE = "payments.card.capture".freeze
    PAYMENTS_CARD_CANCEL = "payments.card.cancel".freeze
    PAYMENTS_CARD_AUTH = "payments.card.auth".freeze
    PAYMENTS_CARD_CHANGE = "payments.card.change".freeze
    PAYMENTS_CARD_SECURE2_AUTHENTICATE = "payments.card.secure2.authenticate".freeze
    PAYMENTS_CARD_SECURE2_RESULT = "payments.card.secure2.result".freeze
    PAYMENTS_CARD_SECURE = "payments.card.secure".freeze
    PAYMENTS_APPLEPAY_REGIST = "payments.applepay.regist".freeze
    PAYMENTS_APPLEPAY_EXEC = "payments.applepay.exec".freeze
    PAYMENTS_APPLEPAY_CAPTURE = "payments.applepay.capture".freeze
    PAYMENTS_APPLEPAY_CANCEL = "payments.applepay.cancel".freeze
    PAYMENTS_GOOGLEPAY_REGIST = "payments.googlepay.regist".freeze
    PAYMENTS_GOOGLEPAY_EXEC = "payments.googlepay.exec".freeze
    PAYMENTS_GOOGLEPAY_CAPTURE = "payments.googlepay.capture".freeze
    PAYMENTS_GOOGLEPAY_CANCEL = "payments.googlepay.cancel".freeze
    PAYMENTS_GOOGLEPAY_AUTH = "payments.googlepay.auth".freeze
    PAYMENTS_GOOGLEPAY_CHANGE = "payments.googlepay.change".freeze
    PAYMENTS_GOOGLEPAY_SECURE2_AUTHENTICATE = "payments.googlepay.secure2.authenticate".freeze
    PAYMENTS_GOOGLEPAY_SECURE2_RESULT = "payments.googlepay.secure2.result".freeze
    PAYMENTS_GOOGLEPAY_SECURE = "payments.googlepay.secure".freeze
    PAYMENTS_KONBINI_REGIST = "payments.konbini.regist".freeze
    PAYMENTS_KONBINI_EXEC = "payments.konbini.exec".freeze
    PAYMENTS_KONBINI_CANCEL = "payments.konbini.cancel".freeze
    PAYMENTS_KONBINI_COMPLETE = "payments.konbini.complete".freeze
    PAYMENTS_KONBINI_COMPLETE_STUB = "payments.konbini.complete.stub".freeze
    PAYMENTS_KONBINI_EXPIRED_UPDATE_BATCH = "payments.konbini.expired.update.batch".freeze
    PAYMENTS_PAYPAY_REGIST = "payments.paypay.regist".freeze
    PAYMENTS_PAYPAY_EXEC = "payments.paypay.exec".freeze
    PAYMENTS_PAYPAY_CAPTURE = "payments.paypay.capture".freeze
    PAYMENTS_PAYPAY_CANCEL = "payments.paypay.cancel".freeze
    PAYMENTS_PAYPAY_CHANGE = "payments.paypay.change".freeze
    PAYMENTS_PAYPAY_COMPLETE = "payments.paypay.complete".freeze
    PAYMENTS_DIRECTDEBIT_REGIST = "payments.directdebit.regist".freeze
    PAYMENTS_DIRECTDEBIT_EXEC = "payments.directdebit.exec".freeze
    PAYMENTS_DIRECTDEBIT_CANCEL = "payments.directdebit.cancel".freeze
    PAYMENTS_DIRECTDEBIT_CHANGE = "payments.directdebit.change".freeze
    PAYMENTS_DIRECTDEBIT_COMPLETE = "payments.directdebit.complete".freeze
    PAYMENTS_DIRECTDEBIT_COMPLETE_STUB = "payments.directdebit.complete.stub".freeze
    CUSTOMERS_PAYMENT_METHODS_UPDATED = "customers.payment_methods.updated".freeze
    CARD_REGIST = "card.regist".freeze
    CARD_UPDATE = "card.update".freeze
    SUBSCRIPTION_CARD_REGIST = "subscription.card.regist".freeze
    SUBSCRIPTION_CARD_DELETE = "subscription.card.delete".freeze
    SUBSCRIPTION_CARD_UPDATE = "subscription.card.update".freeze
    RECURRING_CARD_BATCH = "recurring.card.batch".freeze
    SUBSCRIPTION_DIRECTDEBIT_REGIST = "subscription.directdebit.regist".freeze
    SUBSCRIPTION_DIRECTDEBIT_DELETE = "subscription.directdebit.delete".freeze
    SUBSCRIPTION_DIRECTDEBIT_UPDATE = "subscription.directdebit.update".freeze
    RECURRING_DIRECTDEBIT_BATCH = "recurring.directdebit.batch".freeze
    PAYMENTS_BULK_CARD_REGIST = "payments.bulk.card.regist".freeze
    PAYMENTS_BULK_CARD_BATCH = "payments.bulk.card.batch".freeze
    CONTRACTS_STATUS_CODE_UPDATED = "contracts.status_code.updated".freeze

    def self.all_vars
      @all_vars ||= [PAYMENTS_CARD_REGIST, PAYMENTS_CARD_EXEC, PAYMENTS_CARD_CAPTURE, PAYMENTS_CARD_CANCEL, PAYMENTS_CARD_AUTH, PAYMENTS_CARD_CHANGE, PAYMENTS_CARD_SECURE2_AUTHENTICATE, PAYMENTS_CARD_SECURE2_RESULT, PAYMENTS_CARD_SECURE, PAYMENTS_APPLEPAY_REGIST, PAYMENTS_APPLEPAY_EXEC, PAYMENTS_APPLEPAY_CAPTURE, PAYMENTS_APPLEPAY_CANCEL, PAYMENTS_GOOGLEPAY_REGIST, PAYMENTS_GOOGLEPAY_EXEC, PAYMENTS_GOOGLEPAY_CAPTURE, PAYMENTS_GOOGLEPAY_CANCEL, PAYMENTS_GOOGLEPAY_AUTH, PAYMENTS_GOOGLEPAY_CHANGE, PAYMENTS_GOOGLEPAY_SECURE2_AUTHENTICATE, PAYMENTS_GOOGLEPAY_SECURE2_RESULT, PAYMENTS_GOOGLEPAY_SECURE, PAYMENTS_KONBINI_REGIST, PAYMENTS_KONBINI_EXEC, PAYMENTS_KONBINI_CANCEL, PAYMENTS_KONBINI_COMPLETE, PAYMENTS_KONBINI_COMPLETE_STUB, PAYMENTS_KONBINI_EXPIRED_UPDATE_BATCH, PAYMENTS_PAYPAY_REGIST, PAYMENTS_PAYPAY_EXEC, PAYMENTS_PAYPAY_CAPTURE, PAYMENTS_PAYPAY_CANCEL, PAYMENTS_PAYPAY_CHANGE, PAYMENTS_PAYPAY_COMPLETE, PAYMENTS_DIRECTDEBIT_REGIST, PAYMENTS_DIRECTDEBIT_EXEC, PAYMENTS_DIRECTDEBIT_CANCEL, PAYMENTS_DIRECTDEBIT_CHANGE, PAYMENTS_DIRECTDEBIT_COMPLETE, PAYMENTS_DIRECTDEBIT_COMPLETE_STUB, CUSTOMERS_PAYMENT_METHODS_UPDATED, CARD_REGIST, CARD_UPDATE, SUBSCRIPTION_CARD_REGIST, SUBSCRIPTION_CARD_DELETE, SUBSCRIPTION_CARD_UPDATE, RECURRING_CARD_BATCH, SUBSCRIPTION_DIRECTDEBIT_REGIST, SUBSCRIPTION_DIRECTDEBIT_DELETE, SUBSCRIPTION_DIRECTDEBIT_UPDATE, RECURRING_DIRECTDEBIT_BATCH, PAYMENTS_BULK_CARD_REGIST, PAYMENTS_BULK_CARD_BATCH, CONTRACTS_STATUS_CODE_UPDATED].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if FincodeEvent.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #FincodeEvent"
    end
  end
end
