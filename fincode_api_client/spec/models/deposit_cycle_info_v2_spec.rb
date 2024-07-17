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

# Unit tests for FincodeApiClient::DepositCycleInfoV2
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FincodeApiClient::DepositCycleInfoV2 do
  let(:instance) { FincodeApiClient::DepositCycleInfoV2.new }

  describe 'test an instance of DepositCycleInfoV2' do
    it 'should create an instance of DepositCycleInfoV2' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(FincodeApiClient::DepositCycleInfoV2)
    end
  end

  describe 'test attribute "deposit_cycle_master_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
