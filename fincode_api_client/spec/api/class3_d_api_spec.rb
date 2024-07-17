=begin
#fincode API

#fincodeのAPIリファレンスです。\\ fincodeは決済情報のほか様々なリソースを管理できるため、リソース指向なREST APIをベースとしたインターフェイス設計のもとでAPIを提供しています。\\ APIの呼び出しにはAPIキーによる認証が必要であり、リクエストの際に`Authorization`ヘッダーに有効なAPIキーをセットすることで認証できます。 

The version of the OpenAPI document: 1.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.6.0

=end

require 'spec_helper'
require 'json'

# Unit tests for FincodeApiClient::Class3DApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Class3DApi' do
  before do
    # run before each test
    @api_instance = FincodeApiClient::Class3DApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Class3DApi' do
    it 'should create an instance of Class3DApi' do
      expect(@api_instance).to be_instance_of(FincodeApiClient::Class3DApi)
    end
  end

  # unit tests for confirm_three_d_secureecure_authentication
  # 3Dセキュア 認証結果確定
  # &#x60;access_id&#x60;で指定したカード決済取引の3Dセキュア認証の結果を確定します。\\ \\ &#x60;challenge_url&#x60;上で購入者がチャレンジ認証実施後、&#x60;tds2_ret_url&#x60;に対し&#x60;event&#x60;パラメータで&#x60;AuthResultReady&#x60;イベントが通知されたとき、このAPIを呼び出します。  - レスポンスの&#x60;tds2_trans_result&#x60;が&#x60;Y&#x60;または&#x60;A&#x60;のとき、認証後決済 実行APIを呼び出し3Dセキュア認証された決済を完了させます。 - レスポンスの&#x60;tds2_trans_result&#x60;が上記以外の場合、3Dセキュア認証で決済が拒否されたことを示します。 
  # @param access_id 取引ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :tenant_shop_id &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ このテナントショップの決済情報のうち、指定した&#x60;access_id&#x60;のカード決済の3Dセキュア認証の結果を確定します。 
  # @return [ThreeDSecureConfirmingResponse]
  describe 'confirm_three_d_secureecure_authentication test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for execute_three_d_secureecure_authentication
  # 3Dセキュア 認証実行
  # &#x60;access_id&#x60;で指定したカード決済取引の3Dセキュア2.0認証を開始します。\\ \\ 用意した&#x60;tds2_ret_url&#x60;に対し&#x60;event&#x60;パラメータで&#x60;ThreeDSecureMethodFinished&#x60;もしくは&#x60;ThreeDSecureMethodSkipped&#x60;イベントが通知されたとき、このAPIを呼び出します。  - レスポンスの&#x60;tds2_trans_result&#x60;が&#x60;Y&#x60;または&#x60;A&#x60;のとき、認証後決済 実行APIを呼び出し3Dセキュア認証された決済を完了させます。 - レスポンスの&#x60;tds2_trans_result&#x60;が&#x60;C&#x60;のとき、&#x60;challenge_url&#x60;にリダイレクトし購入者にチャレンジ認証を実施させ、結果を3Dセキュア認証 結果確定APIで確定します。 - レスポンスの&#x60;tds2_trans_result&#x60;が上記以外の場合、3Dセキュア認証で決済が拒否されたことを示します。 
  # @param access_id 取引ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :tenant_shop_id &lt;span class&#x3D;\&quot;smallText color--red-400\&quot;&gt;※ プラットフォームのメインショップのみ指定可&lt;/span&gt;\\ テナントショップID。\\ このテナントショップの決済情報のうち、指定した&#x60;access_id&#x60;のカード決済の3Dセキュア認証を開始します。 
  # @option opts [ThreeDSecureAuthorizingRequest] :three_d_secure_authorizing_request 
  # @return [ThreeDSecureAuthorizingResponse]
  describe 'execute_three_d_secureecure_authentication test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end