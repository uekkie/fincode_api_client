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
  class PaymentGooglePay
    # 決済種別\\ この決済で利用する決済手段です。  - `Googlepay`: Google Pay 
    attr_accessor :pay_type

    attr_accessor :job_code

    # 決済ステータス  - `UNPROCESSED`: 未処理<br /><span class=\"smallText\">請求はまだ実行されていません。</span> - `AUTHORIZED`: 仮売上<br /><span class=\"smallText\">仮売上として与信枠の確保が完了しており、売上確定により請求を完了できます。</span> - `CAPTURED`: 売上確定<br /><span class=\"smallText\">請求が完了し、売上が確定しています。</span> - `CANCELED`: キャンセル<br /><span class=\"smallText\">この決済はキャンセルされました。</span> - `AUTHENTICATED`: 未処理（3Dセキュア認証待ち）<br /><span class=\"smallText\">3Dセキュア認証を使用する決済を実行した直後の状態です。認証後決済実行を行うまで請求や仮売上はされません。</span> 
    attr_accessor :status

    attr_accessor :brand

    # マスク済みカード番号。\\ <span class=\"smallText\"> 下4桁以外をマスクしたカード番号です。\\ </span> 形式：`************1234` 
    attr_accessor :card_no

    # カード有効期限。\\ 形式：`YYMM` 
    attr_accessor :expire

    # カード番号をもとに生成されたハッシュ値。\\ <span class=\"smallText\"> おなじカード番号に対しては常に同じ値が返されます。\\ カード情報非保持の原則に基づき、fincodeユーザーはマスクされていないカード番号の代わりにこの値を保持することができます。 </span> 
    attr_accessor :card_no_hash

    attr_accessor :method

    attr_accessor :pay_times

    attr_accessor :tds_type

    attr_accessor :tds2_type

    # 3Dセキュア認証における戻りURL   3Dセキュア認証に必要なAPIの呼び出しやコールバック処理をすべて加盟店で実装する場合のみ使用します。   fincodeは3Dセキュア認証処理の過程において、このURLにPOSTメソッド、`Content-Type:application/x-www-form-urlencoded`で値を返します。    - `MD`: クエリパラメータとして返されます。 `access_id`と等しい値です。 - `event`: フォームデータとして返されます。この値を判定し後続の処理を分岐します。 - `param`: フォームデータとして返されます。[3Dセキュア認証API](https://docs.fincode.jp/api#tag/ThreeDSecureecure/executeThreeDSecureecureAuth)で使用します。 - `requestorTransId`: フォームデータとして返されます。（後続処理では使用しません。）  返却されるそれぞれの値についての[詳細はDocsで確認](https://docs.fincode.jp/payment/fraud_protection/3d_secure_2)できます。 
    attr_accessor :tds2_ret_url

    attr_accessor :tds2_status

    # <span class=\"smallText color--blue-400\">[3Dセキュア認証パラメータ]</span>\\ 加盟店名。\\ 3Dセキュア認証の際に表示されるショップ名や加盟店名を指定できます。\\ 使用可能な文字は以下の通りです。 - 半角英数 - 半角記号： !\"#$%&'()*+,-./:;<=>?@[\\]`^_{|}~ - 半角スペース  未指定の場合、 カード決済の契約時にfincodeが下記の形式に従って設定した値が自動的に使用されます。\\ \\ 形式：`{{ショップID}}-{{英数字からなる固定値}}` 
    attr_accessor :merchant_name

    # 仕向け先 
    attr_accessor :forward

    # イシュア 
    attr_accessor :issuer

    # トランザクションID 
    attr_accessor :transaction_id

    # 承認番号 
    attr_accessor :approve

    # 仮売上有効期限\\ `job_code`に`AUTH（仮売上）`を指定した場合値が設定されます。 
    attr_accessor :auth_max_date

    attr_accessor :acs

    # 商品コード 
    attr_accessor :item_code

    # 加盟店戻りURL（成功時）   購入者のブラウザとfincode間で3Dセキュア認証を自動で行う場合に、 3Dセキュア認証処理後、決済に成功した際にリダイレクトされるURLです。   POSTメソッドでリダイレクトされます。  リクエストで指定しない場合はデフォルトの成功ページのURLが設定されます。   また、`tds2_ret_url`を指定していない場合のみ返却されます。   
    attr_accessor :return_url

    # 加盟店戻りURL（失敗時）   購入者のブラウザとfincode間で3Dセキュア認証を自動で行う場合に、 3Dセキュア認証に失敗、または決済に失敗した際にリダイレクトされるURLです。   POSTメソッドでリダイレクトされます。  リクエストで指定しない場合はデフォルトの失敗ページのURLが設定されます。   また、`tds2_ret_url`を指定していない場合のみ返却されます。   
    attr_accessor :return_url_on_failure

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'pay_type' => :'pay_type',
        :'job_code' => :'job_code',
        :'status' => :'status',
        :'brand' => :'brand',
        :'card_no' => :'card_no',
        :'expire' => :'expire',
        :'card_no_hash' => :'card_no_hash',
        :'method' => :'method',
        :'pay_times' => :'pay_times',
        :'tds_type' => :'tds_type',
        :'tds2_type' => :'tds2_type',
        :'tds2_ret_url' => :'tds2_ret_url',
        :'tds2_status' => :'tds2_status',
        :'merchant_name' => :'merchant_name',
        :'forward' => :'forward',
        :'issuer' => :'issuer',
        :'transaction_id' => :'transaction_id',
        :'approve' => :'approve',
        :'auth_max_date' => :'auth_max_date',
        :'acs' => :'acs',
        :'item_code' => :'item_code',
        :'return_url' => :'return_url',
        :'return_url_on_failure' => :'return_url_on_failure'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'pay_type' => :'PayType',
        :'job_code' => :'GooglePayPaymentJobCode',
        :'status' => :'PaymentStatus',
        :'brand' => :'GooglePayCardBrand',
        :'card_no' => :'String',
        :'expire' => :'String',
        :'card_no_hash' => :'String',
        :'method' => :'CardPayMethod',
        :'pay_times' => :'CardPayTimesResponse',
        :'tds_type' => :'TdsType',
        :'tds2_type' => :'Tds2Type',
        :'tds2_ret_url' => :'String',
        :'tds2_status' => :'ThreeDSecure2Status',
        :'merchant_name' => :'String',
        :'forward' => :'String',
        :'issuer' => :'String',
        :'transaction_id' => :'String',
        :'approve' => :'String',
        :'auth_max_date' => :'String',
        :'acs' => :'String',
        :'item_code' => :'String',
        :'return_url' => :'String',
        :'return_url_on_failure' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'brand',
        :'card_no',
        :'expire',
        :'card_no_hash',
        :'pay_times',
        :'tds_type',
        :'tds2_type',
        :'tds2_ret_url',
        :'tds2_status',
        :'merchant_name',
        :'forward',
        :'issuer',
        :'transaction_id',
        :'approve',
        :'auth_max_date',
        :'acs',
        :'item_code',
        :'return_url',
        :'return_url_on_failure'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FincodeApiClient::PaymentGooglePay` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FincodeApiClient::PaymentGooglePay`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'pay_type')
        self.pay_type = attributes[:'pay_type']
      end

      if attributes.key?(:'job_code')
        self.job_code = attributes[:'job_code']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'brand')
        self.brand = attributes[:'brand']
      end

      if attributes.key?(:'card_no')
        self.card_no = attributes[:'card_no']
      end

      if attributes.key?(:'expire')
        self.expire = attributes[:'expire']
      end

      if attributes.key?(:'card_no_hash')
        self.card_no_hash = attributes[:'card_no_hash']
      end

      if attributes.key?(:'method')
        self.method = attributes[:'method']
      end

      if attributes.key?(:'pay_times')
        self.pay_times = attributes[:'pay_times']
      end

      if attributes.key?(:'tds_type')
        self.tds_type = attributes[:'tds_type']
      end

      if attributes.key?(:'tds2_type')
        self.tds2_type = attributes[:'tds2_type']
      end

      if attributes.key?(:'tds2_ret_url')
        self.tds2_ret_url = attributes[:'tds2_ret_url']
      end

      if attributes.key?(:'tds2_status')
        self.tds2_status = attributes[:'tds2_status']
      end

      if attributes.key?(:'merchant_name')
        self.merchant_name = attributes[:'merchant_name']
      end

      if attributes.key?(:'forward')
        self.forward = attributes[:'forward']
      end

      if attributes.key?(:'issuer')
        self.issuer = attributes[:'issuer']
      end

      if attributes.key?(:'transaction_id')
        self.transaction_id = attributes[:'transaction_id']
      end

      if attributes.key?(:'approve')
        self.approve = attributes[:'approve']
      end

      if attributes.key?(:'auth_max_date')
        self.auth_max_date = attributes[:'auth_max_date']
      end

      if attributes.key?(:'acs')
        self.acs = attributes[:'acs']
      end

      if attributes.key?(:'item_code')
        self.item_code = attributes[:'item_code']
      end

      if attributes.key?(:'return_url')
        self.return_url = attributes[:'return_url']
      end

      if attributes.key?(:'return_url_on_failure')
        self.return_url_on_failure = attributes[:'return_url_on_failure']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@card_no.nil? && @card_no.to_s.length > 16
        invalid_properties.push('invalid value for "card_no", the character length must be smaller than or equal to 16.')
      end

      if !@expire.nil? && @expire.to_s.length > 4
        invalid_properties.push('invalid value for "expire", the character length must be smaller than or equal to 4.')
      end

      if !@expire.nil? && @expire.to_s.length < 4
        invalid_properties.push('invalid value for "expire", the character length must be great than or equal to 4.')
      end

      pattern = Regexp.new(/^\d{2}\d{2}$/)
      if !@expire.nil? && @expire !~ pattern
        invalid_properties.push("invalid value for \"expire\", must conform to the pattern #{pattern}.")
      end

      if !@card_no_hash.nil? && @card_no_hash.to_s.length > 64
        invalid_properties.push('invalid value for "card_no_hash", the character length must be smaller than or equal to 64.')
      end

      if !@card_no_hash.nil? && @card_no_hash.to_s.length < 1
        invalid_properties.push('invalid value for "card_no_hash", the character length must be great than or equal to 1.')
      end

      if !@tds2_ret_url.nil? && @tds2_ret_url.to_s.length > 256
        invalid_properties.push('invalid value for "tds2_ret_url", the character length must be smaller than or equal to 256.')
      end

      if !@merchant_name.nil? && @merchant_name.to_s.length > 25
        invalid_properties.push('invalid value for "merchant_name", the character length must be smaller than or equal to 25.')
      end

      if !@forward.nil? && @forward.to_s.length > 7
        invalid_properties.push('invalid value for "forward", the character length must be smaller than or equal to 7.')
      end

      if !@forward.nil? && @forward.to_s.length < 1
        invalid_properties.push('invalid value for "forward", the character length must be great than or equal to 1.')
      end

      if !@issuer.nil? && @issuer.to_s.length > 7
        invalid_properties.push('invalid value for "issuer", the character length must be smaller than or equal to 7.')
      end

      if !@issuer.nil? && @issuer.to_s.length < 1
        invalid_properties.push('invalid value for "issuer", the character length must be great than or equal to 1.')
      end

      if !@transaction_id.nil? && @transaction_id.to_s.length > 28
        invalid_properties.push('invalid value for "transaction_id", the character length must be smaller than or equal to 28.')
      end

      if !@transaction_id.nil? && @transaction_id.to_s.length < 28
        invalid_properties.push('invalid value for "transaction_id", the character length must be great than or equal to 28.')
      end

      if !@approve.nil? && @approve.to_s.length > 7
        invalid_properties.push('invalid value for "approve", the character length must be smaller than or equal to 7.')
      end

      if !@approve.nil? && @approve.to_s.length < 1
        invalid_properties.push('invalid value for "approve", the character length must be great than or equal to 1.')
      end

      if !@acs.nil? && @acs.to_s.length > 1
        invalid_properties.push('invalid value for "acs", the character length must be smaller than or equal to 1.')
      end

      if !@acs.nil? && @acs.to_s.length < 1
        invalid_properties.push('invalid value for "acs", the character length must be great than or equal to 1.')
      end

      if !@item_code.nil? && @item_code.to_s.length > 7
        invalid_properties.push('invalid value for "item_code", the character length must be smaller than or equal to 7.')
      end

      if !@item_code.nil? && @item_code.to_s.length < 7
        invalid_properties.push('invalid value for "item_code", the character length must be great than or equal to 7.')
      end

      if !@return_url.nil? && @return_url.to_s.length > 256
        invalid_properties.push('invalid value for "return_url", the character length must be smaller than or equal to 256.')
      end

      if !@return_url_on_failure.nil? && @return_url_on_failure.to_s.length > 256
        invalid_properties.push('invalid value for "return_url_on_failure", the character length must be smaller than or equal to 256.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@card_no.nil? && @card_no.to_s.length > 16
      return false if !@expire.nil? && @expire.to_s.length > 4
      return false if !@expire.nil? && @expire.to_s.length < 4
      return false if !@expire.nil? && @expire !~ Regexp.new(/^\d{2}\d{2}$/)
      return false if !@card_no_hash.nil? && @card_no_hash.to_s.length > 64
      return false if !@card_no_hash.nil? && @card_no_hash.to_s.length < 1
      return false if !@tds2_ret_url.nil? && @tds2_ret_url.to_s.length > 256
      return false if !@merchant_name.nil? && @merchant_name.to_s.length > 25
      return false if !@forward.nil? && @forward.to_s.length > 7
      return false if !@forward.nil? && @forward.to_s.length < 1
      return false if !@issuer.nil? && @issuer.to_s.length > 7
      return false if !@issuer.nil? && @issuer.to_s.length < 1
      return false if !@transaction_id.nil? && @transaction_id.to_s.length > 28
      return false if !@transaction_id.nil? && @transaction_id.to_s.length < 28
      return false if !@approve.nil? && @approve.to_s.length > 7
      return false if !@approve.nil? && @approve.to_s.length < 1
      return false if !@acs.nil? && @acs.to_s.length > 1
      return false if !@acs.nil? && @acs.to_s.length < 1
      return false if !@item_code.nil? && @item_code.to_s.length > 7
      return false if !@item_code.nil? && @item_code.to_s.length < 7
      return false if !@return_url.nil? && @return_url.to_s.length > 256
      return false if !@return_url_on_failure.nil? && @return_url_on_failure.to_s.length > 256
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] card_no Value to be assigned
    def card_no=(card_no)
      if !card_no.nil? && card_no.to_s.length > 16
        fail ArgumentError, 'invalid value for "card_no", the character length must be smaller than or equal to 16.'
      end

      @card_no = card_no
    end

    # Custom attribute writer method with validation
    # @param [Object] expire Value to be assigned
    def expire=(expire)
      if !expire.nil? && expire.to_s.length > 4
        fail ArgumentError, 'invalid value for "expire", the character length must be smaller than or equal to 4.'
      end

      if !expire.nil? && expire.to_s.length < 4
        fail ArgumentError, 'invalid value for "expire", the character length must be great than or equal to 4.'
      end

      pattern = Regexp.new(/^\d{2}\d{2}$/)
      if !expire.nil? && expire !~ pattern
        fail ArgumentError, "invalid value for \"expire\", must conform to the pattern #{pattern}."
      end

      @expire = expire
    end

    # Custom attribute writer method with validation
    # @param [Object] card_no_hash Value to be assigned
    def card_no_hash=(card_no_hash)
      if !card_no_hash.nil? && card_no_hash.to_s.length > 64
        fail ArgumentError, 'invalid value for "card_no_hash", the character length must be smaller than or equal to 64.'
      end

      if !card_no_hash.nil? && card_no_hash.to_s.length < 1
        fail ArgumentError, 'invalid value for "card_no_hash", the character length must be great than or equal to 1.'
      end

      @card_no_hash = card_no_hash
    end

    # Custom attribute writer method with validation
    # @param [Object] tds2_ret_url Value to be assigned
    def tds2_ret_url=(tds2_ret_url)
      if !tds2_ret_url.nil? && tds2_ret_url.to_s.length > 256
        fail ArgumentError, 'invalid value for "tds2_ret_url", the character length must be smaller than or equal to 256.'
      end

      @tds2_ret_url = tds2_ret_url
    end

    # Custom attribute writer method with validation
    # @param [Object] merchant_name Value to be assigned
    def merchant_name=(merchant_name)
      if !merchant_name.nil? && merchant_name.to_s.length > 25
        fail ArgumentError, 'invalid value for "merchant_name", the character length must be smaller than or equal to 25.'
      end

      @merchant_name = merchant_name
    end

    # Custom attribute writer method with validation
    # @param [Object] forward Value to be assigned
    def forward=(forward)
      if !forward.nil? && forward.to_s.length > 7
        fail ArgumentError, 'invalid value for "forward", the character length must be smaller than or equal to 7.'
      end

      if !forward.nil? && forward.to_s.length < 1
        fail ArgumentError, 'invalid value for "forward", the character length must be great than or equal to 1.'
      end

      @forward = forward
    end

    # Custom attribute writer method with validation
    # @param [Object] issuer Value to be assigned
    def issuer=(issuer)
      if !issuer.nil? && issuer.to_s.length > 7
        fail ArgumentError, 'invalid value for "issuer", the character length must be smaller than or equal to 7.'
      end

      if !issuer.nil? && issuer.to_s.length < 1
        fail ArgumentError, 'invalid value for "issuer", the character length must be great than or equal to 1.'
      end

      @issuer = issuer
    end

    # Custom attribute writer method with validation
    # @param [Object] transaction_id Value to be assigned
    def transaction_id=(transaction_id)
      if !transaction_id.nil? && transaction_id.to_s.length > 28
        fail ArgumentError, 'invalid value for "transaction_id", the character length must be smaller than or equal to 28.'
      end

      if !transaction_id.nil? && transaction_id.to_s.length < 28
        fail ArgumentError, 'invalid value for "transaction_id", the character length must be great than or equal to 28.'
      end

      @transaction_id = transaction_id
    end

    # Custom attribute writer method with validation
    # @param [Object] approve Value to be assigned
    def approve=(approve)
      if !approve.nil? && approve.to_s.length > 7
        fail ArgumentError, 'invalid value for "approve", the character length must be smaller than or equal to 7.'
      end

      if !approve.nil? && approve.to_s.length < 1
        fail ArgumentError, 'invalid value for "approve", the character length must be great than or equal to 1.'
      end

      @approve = approve
    end

    # Custom attribute writer method with validation
    # @param [Object] acs Value to be assigned
    def acs=(acs)
      if !acs.nil? && acs.to_s.length > 1
        fail ArgumentError, 'invalid value for "acs", the character length must be smaller than or equal to 1.'
      end

      if !acs.nil? && acs.to_s.length < 1
        fail ArgumentError, 'invalid value for "acs", the character length must be great than or equal to 1.'
      end

      @acs = acs
    end

    # Custom attribute writer method with validation
    # @param [Object] item_code Value to be assigned
    def item_code=(item_code)
      if !item_code.nil? && item_code.to_s.length > 7
        fail ArgumentError, 'invalid value for "item_code", the character length must be smaller than or equal to 7.'
      end

      if !item_code.nil? && item_code.to_s.length < 7
        fail ArgumentError, 'invalid value for "item_code", the character length must be great than or equal to 7.'
      end

      @item_code = item_code
    end

    # Custom attribute writer method with validation
    # @param [Object] return_url Value to be assigned
    def return_url=(return_url)
      if !return_url.nil? && return_url.to_s.length > 256
        fail ArgumentError, 'invalid value for "return_url", the character length must be smaller than or equal to 256.'
      end

      @return_url = return_url
    end

    # Custom attribute writer method with validation
    # @param [Object] return_url_on_failure Value to be assigned
    def return_url_on_failure=(return_url_on_failure)
      if !return_url_on_failure.nil? && return_url_on_failure.to_s.length > 256
        fail ArgumentError, 'invalid value for "return_url_on_failure", the character length must be smaller than or equal to 256.'
      end

      @return_url_on_failure = return_url_on_failure
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          pay_type == o.pay_type &&
          job_code == o.job_code &&
          status == o.status &&
          brand == o.brand &&
          card_no == o.card_no &&
          expire == o.expire &&
          card_no_hash == o.card_no_hash &&
          method == o.method &&
          pay_times == o.pay_times &&
          tds_type == o.tds_type &&
          tds2_type == o.tds2_type &&
          tds2_ret_url == o.tds2_ret_url &&
          tds2_status == o.tds2_status &&
          merchant_name == o.merchant_name &&
          forward == o.forward &&
          issuer == o.issuer &&
          transaction_id == o.transaction_id &&
          approve == o.approve &&
          auth_max_date == o.auth_max_date &&
          acs == o.acs &&
          item_code == o.item_code &&
          return_url == o.return_url &&
          return_url_on_failure == o.return_url_on_failure
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [pay_type, job_code, status, brand, card_no, expire, card_no_hash, method, pay_times, tds_type, tds2_type, tds2_ret_url, tds2_status, merchant_name, forward, issuer, transaction_id, approve, auth_max_date, acs, item_code, return_url, return_url_on_failure].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = FincodeApiClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
