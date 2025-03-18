=begin
#fincode API

#fincodeのAPIリファレンスです。\\ fincodeは決済情報のほか様々なリソースを管理できるため、リソース指向なREST APIをベースとしたインターフェイス設計のもとでAPIを提供しています。\\ APIの呼び出しにはAPIキーによる認証が必要であり、リクエストの際に`Authorization`ヘッダーに有効なAPIキーをセットすることで認証できます。 

The version of the OpenAPI document: 1.4.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for FincodeApiClient::VirtualaccountReceptionMailSendFlag
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FincodeApiClient::VirtualaccountReceptionMailSendFlag do
  let(:instance) { FincodeApiClient::VirtualaccountReceptionMailSendFlag.new }

  describe 'test an instance of VirtualaccountReceptionMailSendFlag' do
    it 'should create an instance of VirtualaccountReceptionMailSendFlag' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(FincodeApiClient::VirtualaccountReceptionMailSendFlag)
    end
  end

end
