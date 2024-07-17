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

# Unit tests for FincodeApiClient::ExaminationFileUpload
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FincodeApiClient::ExaminationFileUpload do
  let(:instance) { FincodeApiClient::ExaminationFileUpload.new }

  describe 'test an instance of ExaminationFileUpload' do
    it 'should create an instance of ExaminationFileUpload' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(FincodeApiClient::ExaminationFileUpload)
    end
  end

  describe 'test attribute "examination_files"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
