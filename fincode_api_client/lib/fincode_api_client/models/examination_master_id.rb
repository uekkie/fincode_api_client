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
  class ExaminationMasterId
    VM = "vm".freeze
    JAD = "jad".freeze
    APPLEPAY_VM = "applepay_vm".freeze
    APPLEPAY_JAD = "applepay_jad".freeze
    GOOGLEPAY_VM = "googlepay_vm".freeze
    GOOGLEPAY_JAD = "googlepay_jad".freeze
    KONBINI = "konbini".freeze
    PAYPAY = "paypay".freeze
    DIRECTDEBIT = "directdebit".freeze
    VIRTUALACCOUNT = "virtualaccount".freeze

    def self.all_vars
      @all_vars ||= [VM, JAD, APPLEPAY_VM, APPLEPAY_JAD, GOOGLEPAY_VM, GOOGLEPAY_JAD, KONBINI, PAYPAY, DIRECTDEBIT, VIRTUALACCOUNT].freeze
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
      return value if ExaminationMasterId.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #ExaminationMasterId"
    end
  end
end
