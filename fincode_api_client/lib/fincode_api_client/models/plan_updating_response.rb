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
  class PlanUpdatingResponse
    # プランID 
    attr_accessor :id

    # プラン名 
    attr_accessor :plan_name

    # プランの説明 
    attr_accessor :description

    # ショップID 
    attr_accessor :shop_id

    # 利用金額 
    attr_accessor :amount

    # 税送料 
    attr_accessor :tax

    # 合計金額\\ 利用金額と税送料の合計金額です。 
    attr_accessor :total_amount

    # 課金間隔  - `month`：月 - `year`：年 
    attr_accessor :interval_pattern

    # 課金間隔数  - `1`：月次／年次の課金 - `2`：2ヶ月に1回の課金 - `3`：3ヶ月に1回の課金 - `6`：6ヶ月に1回の課金 
    attr_accessor :interval_count

    # 利用済みフラグ\\ このプランを用いたサブスクリプション（解約含む）が1つ以上存在する場合`1`を返し、存在しない場合`0`を返します。  - `0`：このプランを用いたサブスクリプションはまだ存在しない - `1`：このプランを用いたサブスクリプションが存在する 
    attr_accessor :used_flag

    attr_accessor :delete_flag

    # 作成日\\ 形式：`yyyy/MM/dd HH:mm:ss.SSS` 
    attr_accessor :created

    # 更新日\\ 形式：`yyyy/MM/dd HH:mm:ss.SSS` 
    attr_accessor :updated

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
        :'plan_name' => :'plan_name',
        :'description' => :'description',
        :'shop_id' => :'shop_id',
        :'amount' => :'amount',
        :'tax' => :'tax',
        :'total_amount' => :'total_amount',
        :'interval_pattern' => :'interval_pattern',
        :'interval_count' => :'interval_count',
        :'used_flag' => :'used_flag',
        :'delete_flag' => :'delete_flag',
        :'created' => :'created',
        :'updated' => :'updated'
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
        :'plan_name' => :'String',
        :'description' => :'String',
        :'shop_id' => :'String',
        :'amount' => :'Integer',
        :'tax' => :'Integer',
        :'total_amount' => :'Integer',
        :'interval_pattern' => :'String',
        :'interval_count' => :'Float',
        :'used_flag' => :'String',
        :'delete_flag' => :'DeleteFlag',
        :'created' => :'String',
        :'updated' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'description',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'Plan'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FincodeApiClient::PlanUpdatingResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FincodeApiClient::PlanUpdatingResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'plan_name')
        self.plan_name = attributes[:'plan_name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'shop_id')
        self.shop_id = attributes[:'shop_id']
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

      if attributes.key?(:'interval_pattern')
        self.interval_pattern = attributes[:'interval_pattern']
      end

      if attributes.key?(:'interval_count')
        self.interval_count = attributes[:'interval_count']
      end

      if attributes.key?(:'used_flag')
        self.used_flag = attributes[:'used_flag']
      end

      if attributes.key?(:'delete_flag')
        self.delete_flag = attributes[:'delete_flag']
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'updated')
        self.updated = attributes[:'updated']
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

      if !@id.nil? && @id.to_s.length < 1
        invalid_properties.push('invalid value for "id", the character length must be great than or equal to 1.')
      end

      if !@plan_name.nil? && @plan_name.to_s.length > 200
        invalid_properties.push('invalid value for "plan_name", the character length must be smaller than or equal to 200.')
      end

      if !@description.nil? && @description.to_s.length > 400
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 400.')
      end

      if !@shop_id.nil? && @shop_id.to_s.length > 13
        invalid_properties.push('invalid value for "shop_id", the character length must be smaller than or equal to 13.')
      end

      if !@shop_id.nil? && @shop_id.to_s.length < 13
        invalid_properties.push('invalid value for "shop_id", the character length must be great than or equal to 13.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@id.nil? && @id.to_s.length > 25
      return false if !@id.nil? && @id.to_s.length < 1
      return false if !@plan_name.nil? && @plan_name.to_s.length > 200
      return false if !@description.nil? && @description.to_s.length > 400
      return false if !@shop_id.nil? && @shop_id.to_s.length > 13
      return false if !@shop_id.nil? && @shop_id.to_s.length < 13
      interval_pattern_validator = EnumAttributeValidator.new('String', ["month", "year"])
      return false unless interval_pattern_validator.valid?(@interval_pattern)
      interval_count_validator = EnumAttributeValidator.new('Float', [1, 2, 3, 6])
      return false unless interval_count_validator.valid?(@interval_count)
      used_flag_validator = EnumAttributeValidator.new('String', ["0", "1"])
      return false unless used_flag_validator.valid?(@used_flag)
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

      if id.to_s.length < 1
        fail ArgumentError, 'invalid value for "id", the character length must be great than or equal to 1.'
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] plan_name Value to be assigned
    def plan_name=(plan_name)
      if plan_name.nil?
        fail ArgumentError, 'plan_name cannot be nil'
      end

      if plan_name.to_s.length > 200
        fail ArgumentError, 'invalid value for "plan_name", the character length must be smaller than or equal to 200.'
      end

      @plan_name = plan_name
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.length > 400
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 400.'
      end

      @description = description
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval_pattern Object to be assigned
    def interval_pattern=(interval_pattern)
      validator = EnumAttributeValidator.new('String', ["month", "year"])
      unless validator.valid?(interval_pattern)
        fail ArgumentError, "invalid value for \"interval_pattern\", must be one of #{validator.allowable_values}."
      end
      @interval_pattern = interval_pattern
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval_count Object to be assigned
    def interval_count=(interval_count)
      validator = EnumAttributeValidator.new('Float', [1, 2, 3, 6])
      unless validator.valid?(interval_count)
        fail ArgumentError, "invalid value for \"interval_count\", must be one of #{validator.allowable_values}."
      end
      @interval_count = interval_count
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] used_flag Object to be assigned
    def used_flag=(used_flag)
      validator = EnumAttributeValidator.new('String', ["0", "1"])
      unless validator.valid?(used_flag)
        fail ArgumentError, "invalid value for \"used_flag\", must be one of #{validator.allowable_values}."
      end
      @used_flag = used_flag
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          plan_name == o.plan_name &&
          description == o.description &&
          shop_id == o.shop_id &&
          amount == o.amount &&
          tax == o.tax &&
          total_amount == o.total_amount &&
          interval_pattern == o.interval_pattern &&
          interval_count == o.interval_count &&
          used_flag == o.used_flag &&
          delete_flag == o.delete_flag &&
          created == o.created &&
          updated == o.updated
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, plan_name, description, shop_id, amount, tax, total_amount, interval_pattern, interval_count, used_flag, delete_flag, created, updated].hash
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
