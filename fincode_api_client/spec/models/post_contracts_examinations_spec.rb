=begin
#fincode API

#fincodeのAPIリファレンスです。\\ fincodeは決済情報のほか様々なリソースを管理できるため、リソース指向なREST APIをベースとしたインターフェイス設計のもとでAPIを提供しています。\\ APIの呼び出しにはAPIキーによる認証が必要であり、リクエストの際に`Authorization`ヘッダーに有効なAPIキーをセットすることで認証できます。 

The version of the OpenAPI document: 1.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.6.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for FincodeApiClient::POSTContractsExaminations
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FincodeApiClient::POSTContractsExaminations do
  let(:instance) { FincodeApiClient::POSTContractsExaminations.new }

  describe 'test an instance of POSTContractsExaminations' do
    it 'should create an instance of POSTContractsExaminations' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(FincodeApiClient::POSTContractsExaminations)
    end
  end

  describe 'test attribute "shop_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "enable_immediate_use"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Float', [1, 2, 3])
      # validator.allowable_values.each do |value|
      #   expect { instance.enable_immediate_use = value }.not_to raise_error
      # end
    end
  end

end
