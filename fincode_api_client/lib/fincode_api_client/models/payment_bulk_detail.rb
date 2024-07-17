=begin
#fincode API

#fincodeのAPIリファレンスです。\\ fincodeは決済情報のほか様々なリソースを管理できるため、リソース指向なREST APIをベースとしたインターフェイス設計のもとでAPIを提供しています。\\ APIの呼び出しにはAPIキーによる認証が必要であり、リクエストの際に`Authorization`ヘッダーに有効なAPIキーをセットすることで認証できます。 

The version of the OpenAPI document: 1.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.6.0

=end

require 'date'
require 'time'

module FincodeApiClient
  class PaymentBulkDetail
    # 一括決済ID 
    attr_accessor :id

    # ショップID 
    attr_accessor :shop_id

    # オーダーID\\ 決済情報のIDです。 
    attr_accessor :order_id

    # 取引ID 
    attr_accessor :access_id

    # 取引種別  - `CAPTURE`：売上確定 
    attr_accessor :job_code

    # 利用金額 
    attr_accessor :amount

    # 税送料 
    attr_accessor :tax

    # 合計金額\\ `amount`と`tax`の合計値です。 
    attr_accessor :total_amount

    attr_accessor :method

    attr_accessor :pay_times

    # 顧客ID 
    attr_accessor :customer_id

    # カードID 
    attr_accessor :card_id

    # 加盟店自由項目 1
    attr_accessor :client_field_1

    # 加盟店自由項目 2
    attr_accessor :client_field_2

    # 加盟店自由項目 3
    attr_accessor :client_field_3

    # この決済において発生したエラーのうち、一番最新のエラーのエラーコードです。\\ [各エラーコードの定義はこちらを参照](https://docs.fincode.jp/develop_support/error)して確認できます。 
    attr_accessor :error_code

    # 作成日\\ 形式：`yyyy/MM/dd HH:mm:ss.SSS` 
    attr_accessor :created

    # 更新日\\ 形式：`yyyy/MM/dd HH:mm:ss.SSS` 
    attr_accessor :updated

    # 商品コード 
    attr_accessor :item_code

    # トランザクションID 
    attr_accessor :transaction_id

    # 承認番号 
    attr_accessor :approve

    # 仕向け先 
    attr_accessor :forward

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
        :'id' => :'id',
        :'shop_id' => :'shop_id',
        :'order_id' => :'order_id',
        :'access_id' => :'access_id',
        :'job_code' => :'job_code',
        :'amount' => :'amount',
        :'tax' => :'tax',
        :'total_amount' => :'total_amount',
        :'method' => :'method',
        :'pay_times' => :'pay_times',
        :'customer_id' => :'customer_id',
        :'card_id' => :'card_id',
        :'client_field_1' => :'client_field_1',
        :'client_field_2' => :'client_field_2',
        :'client_field_3' => :'client_field_3',
        :'error_code' => :'error_code',
        :'created' => :'created',
        :'updated' => :'updated',
        :'item_code' => :'item_code',
        :'transaction_id' => :'transaction_id',
        :'approve' => :'approve',
        :'forward' => :'forward'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'shop_id' => :'String',
        :'order_id' => :'String',
        :'access_id' => :'String',
        :'job_code' => :'CardPaymentJobCode',
        :'amount' => :'Integer',
        :'tax' => :'Integer',
        :'total_amount' => :'Integer',
        :'method' => :'CardPayMethod',
        :'pay_times' => :'CardPayTimes',
        :'customer_id' => :'String',
        :'card_id' => :'String',
        :'client_field_1' => :'String',
        :'client_field_2' => :'String',
        :'client_field_3' => :'String',
        :'error_code' => :'String',
        :'created' => :'String',
        :'updated' => :'String',
        :'item_code' => :'String',
        :'transaction_id' => :'String',
        :'approve' => :'String',
        :'forward' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'client_field_1',
        :'client_field_2',
        :'client_field_3',
        :'error_code',
        :'updated',
        :'item_code',
        :'transaction_id',
        :'approve',
        :'forward'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FincodeApiClient::PaymentBulkDetail` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FincodeApiClient::PaymentBulkDetail`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'shop_id')
        self.shop_id = attributes[:'shop_id']
      end

      if attributes.key?(:'order_id')
        self.order_id = attributes[:'order_id']
      end

      if attributes.key?(:'access_id')
        self.access_id = attributes[:'access_id']
      end

      if attributes.key?(:'job_code')
        self.job_code = attributes[:'job_code']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'tax')
        self.tax = attributes[:'tax']
      end

      if attributes.key?(:'total_amount')
        self.total_amount = attributes[:'total_amount']
      end

      if attributes.key?(:'method')
        self.method = attributes[:'method']
      end

      if attributes.key?(:'pay_times')
        self.pay_times = attributes[:'pay_times']
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'card_id')
        self.card_id = attributes[:'card_id']
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

      if attributes.key?(:'error_code')
        self.error_code = attributes[:'error_code']
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'updated')
        self.updated = attributes[:'updated']
      end

      if attributes.key?(:'item_code')
        self.item_code = attributes[:'item_code']
      end

      if attributes.key?(:'transaction_id')
        self.transaction_id = attributes[:'transaction_id']
      end

      if attributes.key?(:'approve')
        self.approve = attributes[:'approve']
      end

      if attributes.key?(:'forward')
        self.forward = attributes[:'forward']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@id.nil? && @id.to_s.length > 25
        invalid_properties.push('invalid value for "id", the character length must be smaller than or equal to 25.')
      end

      if !@id.nil? && @id.to_s.length < 25
        invalid_properties.push('invalid value for "id", the character length must be great than or equal to 25.')
      end

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

      if !@card_id.nil? && @card_id.to_s.length > 25
        invalid_properties.push('invalid value for "card_id", the character length must be smaller than or equal to 25.')
      end

      if !@card_id.nil? && @card_id.to_s.length < 25
        invalid_properties.push('invalid value for "card_id", the character length must be great than or equal to 25.')
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

      if !@error_code.nil? && @error_code.to_s.length > 11
        invalid_properties.push('invalid value for "error_code", the character length must be smaller than or equal to 11.')
      end

      if !@error_code.nil? && @error_code.to_s.length < 11
        invalid_properties.push('invalid value for "error_code", the character length must be great than or equal to 11.')
      end

      if !@item_code.nil? && @item_code.to_s.length > 7
        invalid_properties.push('invalid value for "item_code", the character length must be smaller than or equal to 7.')
      end

      if !@item_code.nil? && @item_code.to_s.length < 7
        invalid_properties.push('invalid value for "item_code", the character length must be great than or equal to 7.')
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

      if !@forward.nil? && @forward.to_s.length > 7
        invalid_properties.push('invalid value for "forward", the character length must be smaller than or equal to 7.')
      end

      if !@forward.nil? && @forward.to_s.length < 1
        invalid_properties.push('invalid value for "forward", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@id.nil? && @id.to_s.length > 25
      return false if !@id.nil? && @id.to_s.length < 25
      return false if !@shop_id.nil? && @shop_id.to_s.length > 13
      return false if !@shop_id.nil? && @shop_id.to_s.length < 13
      return false if !@order_id.nil? && @order_id.to_s.length > 30
      return false if !@order_id.nil? && @order_id.to_s.length < 1
      return false if !@access_id.nil? && @access_id.to_s.length > 24
      return false if !@access_id.nil? && @access_id.to_s.length < 24
      return false if !@customer_id.nil? && @customer_id.to_s.length > 60
      return false if !@customer_id.nil? && @customer_id.to_s.length < 1
      return false if !@card_id.nil? && @card_id.to_s.length > 25
      return false if !@card_id.nil? && @card_id.to_s.length < 25
      return false if !@client_field_1.nil? && @client_field_1.to_s.length > 100
      return false if !@client_field_1.nil? && @client_field_1.to_s.length < 1
      return false if !@client_field_2.nil? && @client_field_2.to_s.length > 100
      return false if !@client_field_2.nil? && @client_field_2.to_s.length < 1
      return false if !@client_field_3.nil? && @client_field_3.to_s.length > 100
      return false if !@client_field_3.nil? && @client_field_3.to_s.length < 1
      return false if !@error_code.nil? && @error_code.to_s.length > 11
      return false if !@error_code.nil? && @error_code.to_s.length < 11
      return false if !@item_code.nil? && @item_code.to_s.length > 7
      return false if !@item_code.nil? && @item_code.to_s.length < 7
      return false if !@transaction_id.nil? && @transaction_id.to_s.length > 28
      return false if !@transaction_id.nil? && @transaction_id.to_s.length < 28
      return false if !@approve.nil? && @approve.to_s.length > 7
      return false if !@approve.nil? && @approve.to_s.length < 1
      return false if !@forward.nil? && @forward.to_s.length > 7
      return false if !@forward.nil? && @forward.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      if id.to_s.length > 25
        fail ArgumentError, 'invalid value for "id", the character length must be smaller than or equal to 25.'
      end

      if id.to_s.length < 25
        fail ArgumentError, 'invalid value for "id", the character length must be great than or equal to 25.'
      end

      @id = id
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
      if customer_id.nil?
        fail ArgumentError, 'customer_id cannot be nil'
      end

      if customer_id.to_s.length > 60
        fail ArgumentError, 'invalid value for "customer_id", the character length must be smaller than or equal to 60.'
      end

      if customer_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "customer_id", the character length must be great than or equal to 1.'
      end

      @customer_id = customer_id
    end

    # Custom attribute writer method with validation
    # @param [Object] card_id Value to be assigned
    def card_id=(card_id)
      if card_id.nil?
        fail ArgumentError, 'card_id cannot be nil'
      end

      if card_id.to_s.length > 25
        fail ArgumentError, 'invalid value for "card_id", the character length must be smaller than or equal to 25.'
      end

      if card_id.to_s.length < 25
        fail ArgumentError, 'invalid value for "card_id", the character length must be great than or equal to 25.'
      end

      @card_id = card_id
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          shop_id == o.shop_id &&
          order_id == o.order_id &&
          access_id == o.access_id &&
          job_code == o.job_code &&
          amount == o.amount &&
          tax == o.tax &&
          total_amount == o.total_amount &&
          method == o.method &&
          pay_times == o.pay_times &&
          customer_id == o.customer_id &&
          card_id == o.card_id &&
          client_field_1 == o.client_field_1 &&
          client_field_2 == o.client_field_2 &&
          client_field_3 == o.client_field_3 &&
          error_code == o.error_code &&
          created == o.created &&
          updated == o.updated &&
          item_code == o.item_code &&
          transaction_id == o.transaction_id &&
          approve == o.approve &&
          forward == o.forward
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, shop_id, order_id, access_id, job_code, amount, tax, total_amount, method, pay_times, customer_id, card_id, client_field_1, client_field_2, client_field_3, error_code, created, updated, item_code, transaction_id, approve, forward].hash
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
