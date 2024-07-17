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
  class WebhookEventCard
    # ショップID 
    attr_accessor :shop_id

    # 顧客ID 
    attr_accessor :customer_id

    # 顧客情報共有グループID\\ プラットフォームショップにおいて顧客情報が共有されている場合、顧客が所属する共有グループのIDです。 
    attr_accessor :customer_group_id

    # カードID 
    attr_accessor :card_id

    attr_accessor :default_flag

    attr_accessor :card_no_display

    attr_accessor :expire_display

    # 処理日時 
    attr_accessor :process_date

    # 処理タイプ  - `I`: 登録 - `U`: 更新 
    attr_accessor :process_type

    # 決済種別 
    attr_accessor :pay_type

    # 仕向け先 
    attr_accessor :forward

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
        :'customer_id' => :'customer_id',
        :'customer_group_id' => :'customer_group_id',
        :'card_id' => :'card_id',
        :'default_flag' => :'default_flag',
        :'card_no_display' => :'card_no_display',
        :'expire_display' => :'expire_display',
        :'process_date' => :'process_date',
        :'process_type' => :'process_type',
        :'pay_type' => :'pay_type',
        :'forward' => :'forward',
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
        :'customer_id' => :'String',
        :'customer_group_id' => :'String',
        :'card_id' => :'String',
        :'default_flag' => :'DefaultFlag',
        :'card_no_display' => :'Object',
        :'expire_display' => :'Object',
        :'process_date' => :'String',
        :'process_type' => :'String',
        :'pay_type' => :'String',
        :'forward' => :'String',
        :'event' => :'FincodeEvent'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'customer_id',
        :'customer_group_id',
        :'card_id',
        :'default_flag',
        :'card_no_display',
        :'expire_display',
        :'forward',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FincodeApiClient::WebhookEventCard` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FincodeApiClient::WebhookEventCard`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'shop_id')
        self.shop_id = attributes[:'shop_id']
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'customer_group_id')
        self.customer_group_id = attributes[:'customer_group_id']
      end

      if attributes.key?(:'card_id')
        self.card_id = attributes[:'card_id']
      end

      if attributes.key?(:'default_flag')
        self.default_flag = attributes[:'default_flag']
      end

      if attributes.key?(:'card_no_display')
        self.card_no_display = attributes[:'card_no_display']
      end

      if attributes.key?(:'expire_display')
        self.expire_display = attributes[:'expire_display']
      end

      if attributes.key?(:'process_date')
        self.process_date = attributes[:'process_date']
      end

      if attributes.key?(:'process_type')
        self.process_type = attributes[:'process_type']
      end

      if attributes.key?(:'pay_type')
        self.pay_type = attributes[:'pay_type']
      end

      if attributes.key?(:'forward')
        self.forward = attributes[:'forward']
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

      if !@customer_id.nil? && @customer_id.to_s.length > 60
        invalid_properties.push('invalid value for "customer_id", the character length must be smaller than or equal to 60.')
      end

      if !@customer_id.nil? && @customer_id.to_s.length < 1
        invalid_properties.push('invalid value for "customer_id", the character length must be great than or equal to 1.')
      end

      if !@customer_group_id.nil? && @customer_group_id.to_s.length > 13
        invalid_properties.push('invalid value for "customer_group_id", the character length must be smaller than or equal to 13.')
      end

      if !@customer_group_id.nil? && @customer_group_id.to_s.length < 13
        invalid_properties.push('invalid value for "customer_group_id", the character length must be great than or equal to 13.')
      end

      if !@card_id.nil? && @card_id.to_s.length > 25
        invalid_properties.push('invalid value for "card_id", the character length must be smaller than or equal to 25.')
      end

      if !@card_id.nil? && @card_id.to_s.length < 25
        invalid_properties.push('invalid value for "card_id", the character length must be great than or equal to 25.')
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
      return false if !@shop_id.nil? && @shop_id.to_s.length > 13
      return false if !@shop_id.nil? && @shop_id.to_s.length < 13
      return false if !@customer_id.nil? && @customer_id.to_s.length > 60
      return false if !@customer_id.nil? && @customer_id.to_s.length < 1
      return false if !@customer_group_id.nil? && @customer_group_id.to_s.length > 13
      return false if !@customer_group_id.nil? && @customer_group_id.to_s.length < 13
      return false if !@card_id.nil? && @card_id.to_s.length > 25
      return false if !@card_id.nil? && @card_id.to_s.length < 25
      process_type_validator = EnumAttributeValidator.new('String', ["I", "U"])
      return false unless process_type_validator.valid?(@process_type)
      pay_type_validator = EnumAttributeValidator.new('String', ["Card"])
      return false unless pay_type_validator.valid?(@pay_type)
      return false if !@forward.nil? && @forward.to_s.length > 7
      return false if !@forward.nil? && @forward.to_s.length < 1
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
    # @param [Object] customer_group_id Value to be assigned
    def customer_group_id=(customer_group_id)
      if !customer_group_id.nil? && customer_group_id.to_s.length > 13
        fail ArgumentError, 'invalid value for "customer_group_id", the character length must be smaller than or equal to 13.'
      end

      if !customer_group_id.nil? && customer_group_id.to_s.length < 13
        fail ArgumentError, 'invalid value for "customer_group_id", the character length must be great than or equal to 13.'
      end

      @customer_group_id = customer_group_id
    end

    # Custom attribute writer method with validation
    # @param [Object] card_id Value to be assigned
    def card_id=(card_id)
      if !card_id.nil? && card_id.to_s.length > 25
        fail ArgumentError, 'invalid value for "card_id", the character length must be smaller than or equal to 25.'
      end

      if !card_id.nil? && card_id.to_s.length < 25
        fail ArgumentError, 'invalid value for "card_id", the character length must be great than or equal to 25.'
      end

      @card_id = card_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] process_type Object to be assigned
    def process_type=(process_type)
      validator = EnumAttributeValidator.new('String', ["I", "U"])
      unless validator.valid?(process_type)
        fail ArgumentError, "invalid value for \"process_type\", must be one of #{validator.allowable_values}."
      end
      @process_type = process_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pay_type Object to be assigned
    def pay_type=(pay_type)
      validator = EnumAttributeValidator.new('String', ["Card"])
      unless validator.valid?(pay_type)
        fail ArgumentError, "invalid value for \"pay_type\", must be one of #{validator.allowable_values}."
      end
      @pay_type = pay_type
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
          shop_id == o.shop_id &&
          customer_id == o.customer_id &&
          customer_group_id == o.customer_group_id &&
          card_id == o.card_id &&
          default_flag == o.default_flag &&
          card_no_display == o.card_no_display &&
          expire_display == o.expire_display &&
          process_date == o.process_date &&
          process_type == o.process_type &&
          pay_type == o.pay_type &&
          forward == o.forward &&
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
      [shop_id, customer_id, customer_group_id, card_id, default_flag, card_no_display, expire_display, process_date, process_type, pay_type, forward, event].hash
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
