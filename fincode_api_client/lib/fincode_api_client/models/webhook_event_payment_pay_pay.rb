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
  class WebhookEventPaymentPayPay
    # ショップID 
    attr_accessor :shop_id

    # オーダーID\\ 決済情報のIDです。 
    attr_accessor :order_id

    # 取引ID 
    attr_accessor :access_id

    # 決済種別\\ この決済で利用する決済手段です。  - `Paypay`: PayPay 
    attr_accessor :pay_type

    # 決済ステータス  - `UNPROCESSED`: 未処理<br /><span class=\"smallText\">請求はまだ実行されていません。</span> - `AWAITING_CUSTOMER_PAYMENT`: 購入者の支払い待ち<br /><span class=\"smallText\">購入者によるPayPay上での取引承認を待っている状態。</span> - `AUTHORIZED`: 仮売上<br /><span class=\"smallText\">仮売上としてPayPay残高の確保が完了しており、売上確定により請求を完了できます。</span> - `CAPTURED`: 売上確定<br /><span class=\"smallText\">請求が完了し、売上が確定しています。</span> - `CANCELED`: キャンセル<br /><span class=\"smallText\">この決済はキャンセルされました。</span> - `EXPIRED`: 決済の期限切れ<br /><span class=\"smallText\">この決済は期限が切れています。</span> 
    attr_accessor :status

    # 顧客ID 
    attr_accessor :customer_id

    # 決済 処理日時\\ 決済の各種処理（決済実行、キャンセルなど）が行われた日時です。 
    attr_accessor :process_date

    attr_accessor :job_code

    # 加盟店自由項目 1 
    attr_accessor :client_field_1

    # 加盟店自由項目 2 
    attr_accessor :client_field_2

    # 加盟店自由項目 3 
    attr_accessor :client_field_3

    # 利用金額 
    attr_accessor :amount

    # 税送料 
    attr_accessor :tax

    # 支払期限\\ 形式： `yyyy/MM/dd HH:mm:ss.SSS` 
    attr_accessor :code_expiry_date

    # 仮売上期限\\ 形式： `yyyy/MM/dd` 
    attr_accessor :auth_max_date

    # 注文内容の説明\\ 購入者のPayPayアプリ上で表示される注文内容の説明。 
    attr_accessor :order_description

    # PayPayの支払いコードID 
    attr_accessor :code_id

    # PayPay 決済ID 
    attr_accessor :payment_id

    # 支払日時\\ 形式： `yyyy/MM/dd HH:mm:ss.SSS` 
    attr_accessor :payment_date

    # PayPay トランザクションID 
    attr_accessor :merchant_payment_id

    # PayPay 金額変更ID 
    attr_accessor :merchant_update_id

    # PayPay キャンセルID 
    attr_accessor :merchant_revert_id

    # PayPay 返金ID 
    attr_accessor :merchant_refund_id

    # この決済において発生したエラーのうち、一番最新のエラーのエラーコードです。\\ [各エラーコードの定義はこちらを参照](https://docs.fincode.jp/develop_support/error)して確認できます。 
    attr_accessor :error_code

    attr_accessor :event

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
        :'shop_id' => :'shop_id',
        :'order_id' => :'order_id',
        :'access_id' => :'access_id',
        :'pay_type' => :'pay_type',
        :'status' => :'status',
        :'customer_id' => :'customer_id',
        :'process_date' => :'process_date',
        :'job_code' => :'job_code',
        :'client_field_1' => :'client_field_1',
        :'client_field_2' => :'client_field_2',
        :'client_field_3' => :'client_field_3',
        :'amount' => :'amount',
        :'tax' => :'tax',
        :'code_expiry_date' => :'code_expiry_date',
        :'auth_max_date' => :'auth_max_date',
        :'order_description' => :'order_description',
        :'code_id' => :'code_id',
        :'payment_id' => :'payment_id',
        :'payment_date' => :'payment_date',
        :'merchant_payment_id' => :'merchant_payment_id',
        :'merchant_update_id' => :'merchant_update_id',
        :'merchant_revert_id' => :'merchant_revert_id',
        :'merchant_refund_id' => :'merchant_refund_id',
        :'error_code' => :'error_code',
        :'event' => :'event'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'shop_id' => :'String',
        :'order_id' => :'String',
        :'access_id' => :'String',
        :'pay_type' => :'PayType',
        :'status' => :'PaymentStatus',
        :'customer_id' => :'String',
        :'process_date' => :'String',
        :'job_code' => :'PayPayPaymentJobCode',
        :'client_field_1' => :'String',
        :'client_field_2' => :'String',
        :'client_field_3' => :'String',
        :'amount' => :'String',
        :'tax' => :'String',
        :'code_expiry_date' => :'String',
        :'auth_max_date' => :'String',
        :'order_description' => :'String',
        :'code_id' => :'String',
        :'payment_id' => :'String',
        :'payment_date' => :'String',
        :'merchant_payment_id' => :'String',
        :'merchant_update_id' => :'String',
        :'merchant_revert_id' => :'String',
        :'merchant_refund_id' => :'String',
        :'error_code' => :'String',
        :'event' => :'FincodeEvent'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'customer_id',
        :'process_date',
        :'job_code',
        :'client_field_1',
        :'client_field_2',
        :'client_field_3',
        :'code_expiry_date',
        :'auth_max_date',
        :'order_description',
        :'code_id',
        :'payment_id',
        :'payment_date',
        :'merchant_payment_id',
        :'merchant_update_id',
        :'merchant_revert_id',
        :'merchant_refund_id',
        :'error_code',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FincodeApiClient::WebhookEventPaymentPayPay` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FincodeApiClient::WebhookEventPaymentPayPay`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'shop_id')
        self.shop_id = attributes[:'shop_id']
      end

      if attributes.key?(:'order_id')
        self.order_id = attributes[:'order_id']
      end

      if attributes.key?(:'access_id')
        self.access_id = attributes[:'access_id']
      end

      if attributes.key?(:'pay_type')
        self.pay_type = attributes[:'pay_type']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'process_date')
        self.process_date = attributes[:'process_date']
      end

      if attributes.key?(:'job_code')
        self.job_code = attributes[:'job_code']
      end

      if attributes.key?(:'client_field_1')
        self.client_field_1 = attributes[:'client_field_1']
      end

      if attributes.key?(:'client_field_2')
        self.client_field_2 = attributes[:'client_field_2']
      end

      if attributes.key?(:'client_field_3')
        self.client_field_3 = attributes[:'client_field_3']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'tax')
        self.tax = attributes[:'tax']
      end

      if attributes.key?(:'code_expiry_date')
        self.code_expiry_date = attributes[:'code_expiry_date']
      end

      if attributes.key?(:'auth_max_date')
        self.auth_max_date = attributes[:'auth_max_date']
      end

      if attributes.key?(:'order_description')
        self.order_description = attributes[:'order_description']
      end

      if attributes.key?(:'code_id')
        self.code_id = attributes[:'code_id']
      end

      if attributes.key?(:'payment_id')
        self.payment_id = attributes[:'payment_id']
      end

      if attributes.key?(:'payment_date')
        self.payment_date = attributes[:'payment_date']
      end

      if attributes.key?(:'merchant_payment_id')
        self.merchant_payment_id = attributes[:'merchant_payment_id']
      end

      if attributes.key?(:'merchant_update_id')
        self.merchant_update_id = attributes[:'merchant_update_id']
      end

      if attributes.key?(:'merchant_revert_id')
        self.merchant_revert_id = attributes[:'merchant_revert_id']
      end

      if attributes.key?(:'merchant_refund_id')
        self.merchant_refund_id = attributes[:'merchant_refund_id']
      end

      if attributes.key?(:'error_code')
        self.error_code = attributes[:'error_code']
      end

      if attributes.key?(:'event')
        self.event = attributes[:'event']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@shop_id.nil? && @shop_id.to_s.length > 13
        invalid_properties.push('invalid value for "shop_id", the character length must be smaller than or equal to 13.')
      end

      if !@shop_id.nil? && @shop_id.to_s.length < 13
        invalid_properties.push('invalid value for "shop_id", the character length must be great than or equal to 13.')
      end

      if !@order_id.nil? && @order_id.to_s.length > 30
        invalid_properties.push('invalid value for "order_id", the character length must be smaller than or equal to 30.')
      end

      if !@order_id.nil? && @order_id.to_s.length < 1
        invalid_properties.push('invalid value for "order_id", the character length must be great than or equal to 1.')
      end

      if !@access_id.nil? && @access_id.to_s.length > 24
        invalid_properties.push('invalid value for "access_id", the character length must be smaller than or equal to 24.')
      end

      if !@access_id.nil? && @access_id.to_s.length < 24
        invalid_properties.push('invalid value for "access_id", the character length must be great than or equal to 24.')
      end

      if !@customer_id.nil? && @customer_id.to_s.length > 60
        invalid_properties.push('invalid value for "customer_id", the character length must be smaller than or equal to 60.')
      end

      if !@customer_id.nil? && @customer_id.to_s.length < 1
        invalid_properties.push('invalid value for "customer_id", the character length must be great than or equal to 1.')
      end

      if !@client_field_1.nil? && @client_field_1.to_s.length > 100
        invalid_properties.push('invalid value for "client_field_1", the character length must be smaller than or equal to 100.')
      end

      if !@client_field_1.nil? && @client_field_1.to_s.length < 1
        invalid_properties.push('invalid value for "client_field_1", the character length must be great than or equal to 1.')
      end

      if !@client_field_2.nil? && @client_field_2.to_s.length > 100
        invalid_properties.push('invalid value for "client_field_2", the character length must be smaller than or equal to 100.')
      end

      if !@client_field_2.nil? && @client_field_2.to_s.length < 1
        invalid_properties.push('invalid value for "client_field_2", the character length must be great than or equal to 1.')
      end

      if !@client_field_3.nil? && @client_field_3.to_s.length > 100
        invalid_properties.push('invalid value for "client_field_3", the character length must be smaller than or equal to 100.')
      end

      if !@client_field_3.nil? && @client_field_3.to_s.length < 1
        invalid_properties.push('invalid value for "client_field_3", the character length must be great than or equal to 1.')
      end

      if !@amount.nil? && @amount.to_s.length > 9
        invalid_properties.push('invalid value for "amount", the character length must be smaller than or equal to 9.')
      end

      if !@amount.nil? && @amount.to_s.length < 1
        invalid_properties.push('invalid value for "amount", the character length must be great than or equal to 1.')
      end

      if !@tax.nil? && @tax.to_s.length > 9
        invalid_properties.push('invalid value for "tax", the character length must be smaller than or equal to 9.')
      end

      if !@tax.nil? && @tax.to_s.length < 1
        invalid_properties.push('invalid value for "tax", the character length must be great than or equal to 1.')
      end

      if !@order_description.nil? && @order_description.to_s.length > 100
        invalid_properties.push('invalid value for "order_description", the character length must be smaller than or equal to 100.')
      end

      if !@code_id.nil? && @code_id.to_s.length > 64
        invalid_properties.push('invalid value for "code_id", the character length must be smaller than or equal to 64.')
      end

      if !@code_id.nil? && @code_id.to_s.length < 1
        invalid_properties.push('invalid value for "code_id", the character length must be great than or equal to 1.')
      end

      if !@payment_id.nil? && @payment_id.to_s.length > 64
        invalid_properties.push('invalid value for "payment_id", the character length must be smaller than or equal to 64.')
      end

      if !@payment_id.nil? && @payment_id.to_s.length < 1
        invalid_properties.push('invalid value for "payment_id", the character length must be great than or equal to 1.')
      end

      if !@merchant_payment_id.nil? && @merchant_payment_id.to_s.length > 64
        invalid_properties.push('invalid value for "merchant_payment_id", the character length must be smaller than or equal to 64.')
      end

      if !@merchant_payment_id.nil? && @merchant_payment_id.to_s.length < 1
        invalid_properties.push('invalid value for "merchant_payment_id", the character length must be great than or equal to 1.')
      end

      if !@merchant_update_id.nil? && @merchant_update_id.to_s.length > 64
        invalid_properties.push('invalid value for "merchant_update_id", the character length must be smaller than or equal to 64.')
      end

      if !@merchant_update_id.nil? && @merchant_update_id.to_s.length < 1
        invalid_properties.push('invalid value for "merchant_update_id", the character length must be great than or equal to 1.')
      end

      if !@merchant_revert_id.nil? && @merchant_revert_id.to_s.length > 64
        invalid_properties.push('invalid value for "merchant_revert_id", the character length must be smaller than or equal to 64.')
      end

      if !@merchant_revert_id.nil? && @merchant_revert_id.to_s.length < 1
        invalid_properties.push('invalid value for "merchant_revert_id", the character length must be great than or equal to 1.')
      end

      if !@merchant_refund_id.nil? && @merchant_refund_id.to_s.length > 64
        invalid_properties.push('invalid value for "merchant_refund_id", the character length must be smaller than or equal to 64.')
      end

      if !@merchant_refund_id.nil? && @merchant_refund_id.to_s.length < 1
        invalid_properties.push('invalid value for "merchant_refund_id", the character length must be great than or equal to 1.')
      end

      if !@error_code.nil? && @error_code.to_s.length > 11
        invalid_properties.push('invalid value for "error_code", the character length must be smaller than or equal to 11.')
      end

      if !@error_code.nil? && @error_code.to_s.length < 11
        invalid_properties.push('invalid value for "error_code", the character length must be great than or equal to 11.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@shop_id.nil? && @shop_id.to_s.length > 13
      return false if !@shop_id.nil? && @shop_id.to_s.length < 13
      return false if !@order_id.nil? && @order_id.to_s.length > 30
      return false if !@order_id.nil? && @order_id.to_s.length < 1
      return false if !@access_id.nil? && @access_id.to_s.length > 24
      return false if !@access_id.nil? && @access_id.to_s.length < 24
      return false if !@customer_id.nil? && @customer_id.to_s.length > 60
      return false if !@customer_id.nil? && @customer_id.to_s.length < 1
      return false if !@client_field_1.nil? && @client_field_1.to_s.length > 100
      return false if !@client_field_1.nil? && @client_field_1.to_s.length < 1
      return false if !@client_field_2.nil? && @client_field_2.to_s.length > 100
      return false if !@client_field_2.nil? && @client_field_2.to_s.length < 1
      return false if !@client_field_3.nil? && @client_field_3.to_s.length > 100
      return false if !@client_field_3.nil? && @client_field_3.to_s.length < 1
      return false if !@amount.nil? && @amount.to_s.length > 9
      return false if !@amount.nil? && @amount.to_s.length < 1
      return false if !@tax.nil? && @tax.to_s.length > 9
      return false if !@tax.nil? && @tax.to_s.length < 1
      return false if !@order_description.nil? && @order_description.to_s.length > 100
      return false if !@code_id.nil? && @code_id.to_s.length > 64
      return false if !@code_id.nil? && @code_id.to_s.length < 1
      return false if !@payment_id.nil? && @payment_id.to_s.length > 64
      return false if !@payment_id.nil? && @payment_id.to_s.length < 1
      return false if !@merchant_payment_id.nil? && @merchant_payment_id.to_s.length > 64
      return false if !@merchant_payment_id.nil? && @merchant_payment_id.to_s.length < 1
      return false if !@merchant_update_id.nil? && @merchant_update_id.to_s.length > 64
      return false if !@merchant_update_id.nil? && @merchant_update_id.to_s.length < 1
      return false if !@merchant_revert_id.nil? && @merchant_revert_id.to_s.length > 64
      return false if !@merchant_revert_id.nil? && @merchant_revert_id.to_s.length < 1
      return false if !@merchant_refund_id.nil? && @merchant_refund_id.to_s.length > 64
      return false if !@merchant_refund_id.nil? && @merchant_refund_id.to_s.length < 1
      return false if !@error_code.nil? && @error_code.to_s.length > 11
      return false if !@error_code.nil? && @error_code.to_s.length < 11
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] shop_id Value to be assigned
    def shop_id=(shop_id)
      if shop_id.nil?
        fail ArgumentError, 'shop_id cannot be nil'
      end

      if shop_id.to_s.length > 13
        fail ArgumentError, 'invalid value for "shop_id", the character length must be smaller than or equal to 13.'
      end

      if shop_id.to_s.length < 13
        fail ArgumentError, 'invalid value for "shop_id", the character length must be great than or equal to 13.'
      end

      @shop_id = shop_id
    end

    # Custom attribute writer method with validation
    # @param [Object] order_id Value to be assigned
    def order_id=(order_id)
      if order_id.nil?
        fail ArgumentError, 'order_id cannot be nil'
      end

      if order_id.to_s.length > 30
        fail ArgumentError, 'invalid value for "order_id", the character length must be smaller than or equal to 30.'
      end

      if order_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "order_id", the character length must be great than or equal to 1.'
      end

      @order_id = order_id
    end

    # Custom attribute writer method with validation
    # @param [Object] access_id Value to be assigned
    def access_id=(access_id)
      if access_id.nil?
        fail ArgumentError, 'access_id cannot be nil'
      end

      if access_id.to_s.length > 24
        fail ArgumentError, 'invalid value for "access_id", the character length must be smaller than or equal to 24.'
      end

      if access_id.to_s.length < 24
        fail ArgumentError, 'invalid value for "access_id", the character length must be great than or equal to 24.'
      end

      @access_id = access_id
    end

    # Custom attribute writer method with validation
    # @param [Object] customer_id Value to be assigned
    def customer_id=(customer_id)
      if !customer_id.nil? && customer_id.to_s.length > 60
        fail ArgumentError, 'invalid value for "customer_id", the character length must be smaller than or equal to 60.'
      end

      if !customer_id.nil? && customer_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "customer_id", the character length must be great than or equal to 1.'
      end

      @customer_id = customer_id
    end

    # Custom attribute writer method with validation
    # @param [Object] client_field_1 Value to be assigned
    def client_field_1=(client_field_1)
      if !client_field_1.nil? && client_field_1.to_s.length > 100
        fail ArgumentError, 'invalid value for "client_field_1", the character length must be smaller than or equal to 100.'
      end

      if !client_field_1.nil? && client_field_1.to_s.length < 1
        fail ArgumentError, 'invalid value for "client_field_1", the character length must be great than or equal to 1.'
      end

      @client_field_1 = client_field_1
    end

    # Custom attribute writer method with validation
    # @param [Object] client_field_2 Value to be assigned
    def client_field_2=(client_field_2)
      if !client_field_2.nil? && client_field_2.to_s.length > 100
        fail ArgumentError, 'invalid value for "client_field_2", the character length must be smaller than or equal to 100.'
      end

      if !client_field_2.nil? && client_field_2.to_s.length < 1
        fail ArgumentError, 'invalid value for "client_field_2", the character length must be great than or equal to 1.'
      end

      @client_field_2 = client_field_2
    end

    # Custom attribute writer method with validation
    # @param [Object] client_field_3 Value to be assigned
    def client_field_3=(client_field_3)
      if !client_field_3.nil? && client_field_3.to_s.length > 100
        fail ArgumentError, 'invalid value for "client_field_3", the character length must be smaller than or equal to 100.'
      end

      if !client_field_3.nil? && client_field_3.to_s.length < 1
        fail ArgumentError, 'invalid value for "client_field_3", the character length must be great than or equal to 1.'
      end

      @client_field_3 = client_field_3
    end

    # Custom attribute writer method with validation
    # @param [Object] amount Value to be assigned
    def amount=(amount)
      if amount.nil?
        fail ArgumentError, 'amount cannot be nil'
      end

      if amount.to_s.length > 9
        fail ArgumentError, 'invalid value for "amount", the character length must be smaller than or equal to 9.'
      end

      if amount.to_s.length < 1
        fail ArgumentError, 'invalid value for "amount", the character length must be great than or equal to 1.'
      end

      @amount = amount
    end

    # Custom attribute writer method with validation
    # @param [Object] tax Value to be assigned
    def tax=(tax)
      if tax.nil?
        fail ArgumentError, 'tax cannot be nil'
      end

      if tax.to_s.length > 9
        fail ArgumentError, 'invalid value for "tax", the character length must be smaller than or equal to 9.'
      end

      if tax.to_s.length < 1
        fail ArgumentError, 'invalid value for "tax", the character length must be great than or equal to 1.'
      end

      @tax = tax
    end

    # Custom attribute writer method with validation
    # @param [Object] order_description Value to be assigned
    def order_description=(order_description)
      if !order_description.nil? && order_description.to_s.length > 100
        fail ArgumentError, 'invalid value for "order_description", the character length must be smaller than or equal to 100.'
      end

      @order_description = order_description
    end

    # Custom attribute writer method with validation
    # @param [Object] code_id Value to be assigned
    def code_id=(code_id)
      if !code_id.nil? && code_id.to_s.length > 64
        fail ArgumentError, 'invalid value for "code_id", the character length must be smaller than or equal to 64.'
      end

      if !code_id.nil? && code_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "code_id", the character length must be great than or equal to 1.'
      end

      @code_id = code_id
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_id Value to be assigned
    def payment_id=(payment_id)
      if !payment_id.nil? && payment_id.to_s.length > 64
        fail ArgumentError, 'invalid value for "payment_id", the character length must be smaller than or equal to 64.'
      end

      if !payment_id.nil? && payment_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "payment_id", the character length must be great than or equal to 1.'
      end

      @payment_id = payment_id
    end

    # Custom attribute writer method with validation
    # @param [Object] merchant_payment_id Value to be assigned
    def merchant_payment_id=(merchant_payment_id)
      if !merchant_payment_id.nil? && merchant_payment_id.to_s.length > 64
        fail ArgumentError, 'invalid value for "merchant_payment_id", the character length must be smaller than or equal to 64.'
      end

      if !merchant_payment_id.nil? && merchant_payment_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "merchant_payment_id", the character length must be great than or equal to 1.'
      end

      @merchant_payment_id = merchant_payment_id
    end

    # Custom attribute writer method with validation
    # @param [Object] merchant_update_id Value to be assigned
    def merchant_update_id=(merchant_update_id)
      if !merchant_update_id.nil? && merchant_update_id.to_s.length > 64
        fail ArgumentError, 'invalid value for "merchant_update_id", the character length must be smaller than or equal to 64.'
      end

      if !merchant_update_id.nil? && merchant_update_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "merchant_update_id", the character length must be great than or equal to 1.'
      end

      @merchant_update_id = merchant_update_id
    end

    # Custom attribute writer method with validation
    # @param [Object] merchant_revert_id Value to be assigned
    def merchant_revert_id=(merchant_revert_id)
      if !merchant_revert_id.nil? && merchant_revert_id.to_s.length > 64
        fail ArgumentError, 'invalid value for "merchant_revert_id", the character length must be smaller than or equal to 64.'
      end

      if !merchant_revert_id.nil? && merchant_revert_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "merchant_revert_id", the character length must be great than or equal to 1.'
      end

      @merchant_revert_id = merchant_revert_id
    end

    # Custom attribute writer method with validation
    # @param [Object] merchant_refund_id Value to be assigned
    def merchant_refund_id=(merchant_refund_id)
      if !merchant_refund_id.nil? && merchant_refund_id.to_s.length > 64
        fail ArgumentError, 'invalid value for "merchant_refund_id", the character length must be smaller than or equal to 64.'
      end

      if !merchant_refund_id.nil? && merchant_refund_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "merchant_refund_id", the character length must be great than or equal to 1.'
      end

      @merchant_refund_id = merchant_refund_id
    end

    # Custom attribute writer method with validation
    # @param [Object] error_code Value to be assigned
    def error_code=(error_code)
      if !error_code.nil? && error_code.to_s.length > 11
        fail ArgumentError, 'invalid value for "error_code", the character length must be smaller than or equal to 11.'
      end

      if !error_code.nil? && error_code.to_s.length < 11
        fail ArgumentError, 'invalid value for "error_code", the character length must be great than or equal to 11.'
      end

      @error_code = error_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          shop_id == o.shop_id &&
          order_id == o.order_id &&
          access_id == o.access_id &&
          pay_type == o.pay_type &&
          status == o.status &&
          customer_id == o.customer_id &&
          process_date == o.process_date &&
          job_code == o.job_code &&
          client_field_1 == o.client_field_1 &&
          client_field_2 == o.client_field_2 &&
          client_field_3 == o.client_field_3 &&
          amount == o.amount &&
          tax == o.tax &&
          code_expiry_date == o.code_expiry_date &&
          auth_max_date == o.auth_max_date &&
          order_description == o.order_description &&
          code_id == o.code_id &&
          payment_id == o.payment_id &&
          payment_date == o.payment_date &&
          merchant_payment_id == o.merchant_payment_id &&
          merchant_update_id == o.merchant_update_id &&
          merchant_revert_id == o.merchant_revert_id &&
          merchant_refund_id == o.merchant_refund_id &&
          error_code == o.error_code &&
          event == o.event
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [shop_id, order_id, access_id, pay_type, status, customer_id, process_date, job_code, client_field_1, client_field_2, client_field_3, amount, tax, code_expiry_date, auth_max_date, order_description, code_id, payment_id, payment_date, merchant_payment_id, merchant_update_id, merchant_revert_id, merchant_refund_id, error_code, event].hash
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
