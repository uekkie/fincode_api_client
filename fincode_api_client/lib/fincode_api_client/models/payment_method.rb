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
  class PaymentMethod
    # 決済手段ID
    attr_accessor :id

    # 決済手段の種別。\\ この決済手段の実体の種別を示します。  - `Card`: この決済手段はクレジットカード/デビットカード/プリペイドカードです。 - `Directdebit`: この決済手段は口座振替用口座情報です。 
    attr_accessor :pay_type

    # この決済手段が紐づく顧客のID 
    attr_accessor :customer_id

    attr_accessor :status

    # リダイレクトURL \\ 購入者をこのURLへリダイレクトさせ、ステータスがAWAITING_CUSTOMER_ACTION の決済手段を有効化するための後続の処理へ誘導してください。   - 振替口座登録の場合： このURLにアクセスして振替口座登録の承認を行います。このURLには1度だけアクセスできます。 - カード登録の場合： このURLにアクセスして3Dセキュア認証を行います。 
    attr_accessor :redirect_url

    # リダイレクトURLアクセス済みフラグ \\ （`pay_type = Directdebit`の場合のみ利用可能）\\ 購入者が`redirect_url`にアクセスしたことがあるかどうかを示すフラグです。  - `0`: 未アクセス - `1`: 1回以上アクセス済み 
    attr_accessor :redirect_url_accessed_flag

    # 加盟店戻りURL（成功時）\\ 購入者がアクションを完了し、決済手段の登録に成功した際にリダイレクトされるURLです。\\ POSTメソッドでリダイレクトがされます。 
    attr_accessor :return_url

    # 加盟店戻りURL（失敗時）\\ （`pay_type = Card`の場合のみ利用可能）\\ 購入者がアクションを完了し、決済手段の登録に失敗した際にリダイレクトされるURLです。\\ POSTメソッドでリダイレクトがされます。 
    attr_accessor :return_url_on_failure

    # デフォルトフラグ。\\ この決済手段が決済実行やサブスクリプション登録などで決済手段IDを指定しない場合に自動的に使用する決済手段かどうかを示すフラグです。\\ 顧客に対して、決済種別ごとに必ず1つのデフォルト決済手段が存在します。（決済手段が1つも登録されていない場合を除く）  - `0`: デフォルト決済手段ではない - `1`: デフォルト決済手段 
    attr_accessor :default_flag

    # 加盟店自由項目 
    attr_accessor :client_field_1

    # 加盟店自由項目 
    attr_accessor :client_field_2

    # 加盟店自由項目 
    attr_accessor :client_field_3

    attr_accessor :delete_flag

    # 処理日\\ 形式：`yyyy/MM/dd HH:mm:ss.SSS` 
    attr_accessor :process_date

    # 作成日\\ 形式：`yyyy/MM/dd HH:mm:ss.SSS` 
    attr_accessor :created

    # 更新日\\ 形式：`yyyy/MM/dd HH:mm:ss.SSS` 
    attr_accessor :updated

    attr_accessor :card

    attr_accessor :directdebit

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
        :'pay_type' => :'pay_type',
        :'customer_id' => :'customer_id',
        :'status' => :'status',
        :'redirect_url' => :'redirect_url',
        :'redirect_url_accessed_flag' => :'redirect_url_accessed_flag',
        :'return_url' => :'return_url',
        :'return_url_on_failure' => :'return_url_on_failure',
        :'default_flag' => :'default_flag',
        :'client_field_1' => :'client_field_1',
        :'client_field_2' => :'client_field_2',
        :'client_field_3' => :'client_field_3',
        :'delete_flag' => :'delete_flag',
        :'process_date' => :'process_date',
        :'created' => :'created',
        :'updated' => :'updated',
        :'card' => :'card',
        :'directdebit' => :'directdebit'
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
        :'pay_type' => :'PaymentMethodPayType',
        :'customer_id' => :'String',
        :'status' => :'PaymentMethodStatus',
        :'redirect_url' => :'String',
        :'redirect_url_accessed_flag' => :'String',
        :'return_url' => :'String',
        :'return_url_on_failure' => :'String',
        :'default_flag' => :'String',
        :'client_field_1' => :'String',
        :'client_field_2' => :'String',
        :'client_field_3' => :'String',
        :'delete_flag' => :'DeleteFlag',
        :'process_date' => :'String',
        :'created' => :'String',
        :'updated' => :'String',
        :'card' => :'PaymentMethodCard',
        :'directdebit' => :'PaymentMethodDirectdebit'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'redirect_url',
        :'redirect_url_accessed_flag',
        :'return_url',
        :'return_url_on_failure',
        :'client_field_1',
        :'client_field_2',
        :'client_field_3',
        :'process_date',
        :'updated',
        :'card',
        :'directdebit'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FincodeApiClient::PaymentMethod` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FincodeApiClient::PaymentMethod`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'pay_type')
        self.pay_type = attributes[:'pay_type']
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'redirect_url')
        self.redirect_url = attributes[:'redirect_url']
      end

      if attributes.key?(:'redirect_url_accessed_flag')
        self.redirect_url_accessed_flag = attributes[:'redirect_url_accessed_flag']
      end

      if attributes.key?(:'return_url')
        self.return_url = attributes[:'return_url']
      end

      if attributes.key?(:'return_url_on_failure')
        self.return_url_on_failure = attributes[:'return_url_on_failure']
      end

      if attributes.key?(:'default_flag')
        self.default_flag = attributes[:'default_flag']
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

      if attributes.key?(:'delete_flag')
        self.delete_flag = attributes[:'delete_flag']
      end

      if attributes.key?(:'process_date')
        self.process_date = attributes[:'process_date']
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'updated')
        self.updated = attributes[:'updated']
      end

      if attributes.key?(:'card')
        self.card = attributes[:'card']
      end

      if attributes.key?(:'directdebit')
        self.directdebit = attributes[:'directdebit']
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

      if !@customer_id.nil? && @customer_id.to_s.length > 60
        invalid_properties.push('invalid value for "customer_id", the character length must be smaller than or equal to 60.')
      end

      if !@redirect_url.nil? && @redirect_url.to_s.length > 256
        invalid_properties.push('invalid value for "redirect_url", the character length must be smaller than or equal to 256.')
      end

      if !@return_url.nil? && @return_url.to_s.length > 256
        invalid_properties.push('invalid value for "return_url", the character length must be smaller than or equal to 256.')
      end

      if !@return_url_on_failure.nil? && @return_url_on_failure.to_s.length > 256
        invalid_properties.push('invalid value for "return_url_on_failure", the character length must be smaller than or equal to 256.')
      end

      if !@default_flag.nil? && @default_flag.to_s.length > 1
        invalid_properties.push('invalid value for "default_flag", the character length must be smaller than or equal to 1.')
      end

      if !@default_flag.nil? && @default_flag.to_s.length < 1
        invalid_properties.push('invalid value for "default_flag", the character length must be great than or equal to 1.')
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

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@id.nil? && @id.to_s.length > 25
      return false if !@id.nil? && @id.to_s.length < 25
      return false if !@customer_id.nil? && @customer_id.to_s.length > 60
      return false if !@redirect_url.nil? && @redirect_url.to_s.length > 256
      redirect_url_accessed_flag_validator = EnumAttributeValidator.new('String', ["0", "1"])
      return false unless redirect_url_accessed_flag_validator.valid?(@redirect_url_accessed_flag)
      return false if !@return_url.nil? && @return_url.to_s.length > 256
      return false if !@return_url_on_failure.nil? && @return_url_on_failure.to_s.length > 256
      default_flag_validator = EnumAttributeValidator.new('String', ["0", "1"])
      return false unless default_flag_validator.valid?(@default_flag)
      return false if !@default_flag.nil? && @default_flag.to_s.length > 1
      return false if !@default_flag.nil? && @default_flag.to_s.length < 1
      return false if !@client_field_1.nil? && @client_field_1.to_s.length > 100
      return false if !@client_field_1.nil? && @client_field_1.to_s.length < 1
      return false if !@client_field_2.nil? && @client_field_2.to_s.length > 100
      return false if !@client_field_2.nil? && @client_field_2.to_s.length < 1
      return false if !@client_field_3.nil? && @client_field_3.to_s.length > 100
      return false if !@client_field_3.nil? && @client_field_3.to_s.length < 1
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
    # @param [Object] customer_id Value to be assigned
    def customer_id=(customer_id)
      if customer_id.nil?
        fail ArgumentError, 'customer_id cannot be nil'
      end

      if customer_id.to_s.length > 60
        fail ArgumentError, 'invalid value for "customer_id", the character length must be smaller than or equal to 60.'
      end

      @customer_id = customer_id
    end

    # Custom attribute writer method with validation
    # @param [Object] redirect_url Value to be assigned
    def redirect_url=(redirect_url)
      if !redirect_url.nil? && redirect_url.to_s.length > 256
        fail ArgumentError, 'invalid value for "redirect_url", the character length must be smaller than or equal to 256.'
      end

      @redirect_url = redirect_url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] redirect_url_accessed_flag Object to be assigned
    def redirect_url_accessed_flag=(redirect_url_accessed_flag)
      validator = EnumAttributeValidator.new('String', ["0", "1"])
      unless validator.valid?(redirect_url_accessed_flag)
        fail ArgumentError, "invalid value for \"redirect_url_accessed_flag\", must be one of #{validator.allowable_values}."
      end
      @redirect_url_accessed_flag = redirect_url_accessed_flag
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_flag Object to be assigned
    def default_flag=(default_flag)
      validator = EnumAttributeValidator.new('String', ["0", "1"])
      unless validator.valid?(default_flag)
        fail ArgumentError, "invalid value for \"default_flag\", must be one of #{validator.allowable_values}."
      end
      @default_flag = default_flag
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          pay_type == o.pay_type &&
          customer_id == o.customer_id &&
          status == o.status &&
          redirect_url == o.redirect_url &&
          redirect_url_accessed_flag == o.redirect_url_accessed_flag &&
          return_url == o.return_url &&
          return_url_on_failure == o.return_url_on_failure &&
          default_flag == o.default_flag &&
          client_field_1 == o.client_field_1 &&
          client_field_2 == o.client_field_2 &&
          client_field_3 == o.client_field_3 &&
          delete_flag == o.delete_flag &&
          process_date == o.process_date &&
          created == o.created &&
          updated == o.updated &&
          card == o.card &&
          directdebit == o.directdebit
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, pay_type, customer_id, status, redirect_url, redirect_url_accessed_flag, return_url, return_url_on_failure, default_flag, client_field_1, client_field_2, client_field_3, delete_flag, process_date, created, updated, card, directdebit].hash
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
