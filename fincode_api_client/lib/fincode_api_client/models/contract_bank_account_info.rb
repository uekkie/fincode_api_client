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
  class ContractBankAccountInfo
    # 銀行名 
    attr_accessor :bank_name

    # 銀行名（カナ） 
    attr_accessor :bank_name_kana

    # 金融機関コード 
    attr_accessor :bank_code

    # 支店コード 
    attr_accessor :branch_code

    # 支店名 
    attr_accessor :branch_name

    # 支店名（カナ） 
    attr_accessor :branch_name_kana

    # 口座種別  - `0`: 普通 - `1`: 当座 
    attr_accessor :account_kind

    # 口座番号 
    attr_accessor :account_number

    # 口座名義（カタカナ） 
    attr_accessor :account_name

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
        :'bank_name' => :'bank_name',
        :'bank_name_kana' => :'bank_name_kana',
        :'bank_code' => :'bank_code',
        :'branch_code' => :'branch_code',
        :'branch_name' => :'branch_name',
        :'branch_name_kana' => :'branch_name_kana',
        :'account_kind' => :'account_kind',
        :'account_number' => :'account_number',
        :'account_name' => :'account_name'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'bank_name' => :'String',
        :'bank_name_kana' => :'String',
        :'bank_code' => :'String',
        :'branch_code' => :'String',
        :'branch_name' => :'String',
        :'branch_name_kana' => :'String',
        :'account_kind' => :'Float',
        :'account_number' => :'String',
        :'account_name' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FincodeApiClient::ContractBankAccountInfo` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FincodeApiClient::ContractBankAccountInfo`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'bank_name')
        self.bank_name = attributes[:'bank_name']
      end

      if attributes.key?(:'bank_name_kana')
        self.bank_name_kana = attributes[:'bank_name_kana']
      end

      if attributes.key?(:'bank_code')
        self.bank_code = attributes[:'bank_code']
      end

      if attributes.key?(:'branch_code')
        self.branch_code = attributes[:'branch_code']
      end

      if attributes.key?(:'branch_name')
        self.branch_name = attributes[:'branch_name']
      end

      if attributes.key?(:'branch_name_kana')
        self.branch_name_kana = attributes[:'branch_name_kana']
      end

      if attributes.key?(:'account_kind')
        self.account_kind = attributes[:'account_kind']
      end

      if attributes.key?(:'account_number')
        self.account_number = attributes[:'account_number']
      end

      if attributes.key?(:'account_name')
        self.account_name = attributes[:'account_name']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@bank_name.nil? && @bank_name.to_s.length > 20
        invalid_properties.push('invalid value for "bank_name", the character length must be smaller than or equal to 20.')
      end

      if !@bank_name.nil? && @bank_name.to_s.length < 1
        invalid_properties.push('invalid value for "bank_name", the character length must be great than or equal to 1.')
      end

      if !@bank_name_kana.nil? && @bank_name_kana.to_s.length > 100
        invalid_properties.push('invalid value for "bank_name_kana", the character length must be smaller than or equal to 100.')
      end

      if !@bank_name_kana.nil? && @bank_name_kana.to_s.length < 1
        invalid_properties.push('invalid value for "bank_name_kana", the character length must be great than or equal to 1.')
      end

      if !@bank_code.nil? && @bank_code.to_s.length > 4
        invalid_properties.push('invalid value for "bank_code", the character length must be smaller than or equal to 4.')
      end

      if !@bank_code.nil? && @bank_code.to_s.length < 4
        invalid_properties.push('invalid value for "bank_code", the character length must be great than or equal to 4.')
      end

      if !@branch_code.nil? && @branch_code.to_s.length > 3
        invalid_properties.push('invalid value for "branch_code", the character length must be smaller than or equal to 3.')
      end

      if !@branch_code.nil? && @branch_code.to_s.length < 3
        invalid_properties.push('invalid value for "branch_code", the character length must be great than or equal to 3.')
      end

      if !@branch_name.nil? && @branch_name.to_s.length > 100
        invalid_properties.push('invalid value for "branch_name", the character length must be smaller than or equal to 100.')
      end

      if !@branch_name.nil? && @branch_name.to_s.length < 1
        invalid_properties.push('invalid value for "branch_name", the character length must be great than or equal to 1.')
      end

      if !@branch_name_kana.nil? && @branch_name_kana.to_s.length > 100
        invalid_properties.push('invalid value for "branch_name_kana", the character length must be smaller than or equal to 100.')
      end

      if !@branch_name_kana.nil? && @branch_name_kana.to_s.length < 1
        invalid_properties.push('invalid value for "branch_name_kana", the character length must be great than or equal to 1.')
      end

      if !@account_number.nil? && @account_number.to_s.length > 7
        invalid_properties.push('invalid value for "account_number", the character length must be smaller than or equal to 7.')
      end

      if !@account_number.nil? && @account_number.to_s.length < 7
        invalid_properties.push('invalid value for "account_number", the character length must be great than or equal to 7.')
      end

      if !@account_name.nil? && @account_name.to_s.length > 47
        invalid_properties.push('invalid value for "account_name", the character length must be smaller than or equal to 47.')
      end

      if !@account_name.nil? && @account_name.to_s.length < 1
        invalid_properties.push('invalid value for "account_name", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@bank_name.nil? && @bank_name.to_s.length > 20
      return false if !@bank_name.nil? && @bank_name.to_s.length < 1
      return false if !@bank_name_kana.nil? && @bank_name_kana.to_s.length > 100
      return false if !@bank_name_kana.nil? && @bank_name_kana.to_s.length < 1
      return false if !@bank_code.nil? && @bank_code.to_s.length > 4
      return false if !@bank_code.nil? && @bank_code.to_s.length < 4
      return false if !@branch_code.nil? && @branch_code.to_s.length > 3
      return false if !@branch_code.nil? && @branch_code.to_s.length < 3
      return false if !@branch_name.nil? && @branch_name.to_s.length > 100
      return false if !@branch_name.nil? && @branch_name.to_s.length < 1
      return false if !@branch_name_kana.nil? && @branch_name_kana.to_s.length > 100
      return false if !@branch_name_kana.nil? && @branch_name_kana.to_s.length < 1
      account_kind_validator = EnumAttributeValidator.new('Float', [0, 1])
      return false unless account_kind_validator.valid?(@account_kind)
      return false if !@account_number.nil? && @account_number.to_s.length > 7
      return false if !@account_number.nil? && @account_number.to_s.length < 7
      return false if !@account_name.nil? && @account_name.to_s.length > 47
      return false if !@account_name.nil? && @account_name.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] bank_name Value to be assigned
    def bank_name=(bank_name)
      if bank_name.nil?
        fail ArgumentError, 'bank_name cannot be nil'
      end

      if bank_name.to_s.length > 20
        fail ArgumentError, 'invalid value for "bank_name", the character length must be smaller than or equal to 20.'
      end

      if bank_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "bank_name", the character length must be great than or equal to 1.'
      end

      @bank_name = bank_name
    end

    # Custom attribute writer method with validation
    # @param [Object] bank_name_kana Value to be assigned
    def bank_name_kana=(bank_name_kana)
      if bank_name_kana.nil?
        fail ArgumentError, 'bank_name_kana cannot be nil'
      end

      if bank_name_kana.to_s.length > 100
        fail ArgumentError, 'invalid value for "bank_name_kana", the character length must be smaller than or equal to 100.'
      end

      if bank_name_kana.to_s.length < 1
        fail ArgumentError, 'invalid value for "bank_name_kana", the character length must be great than or equal to 1.'
      end

      @bank_name_kana = bank_name_kana
    end

    # Custom attribute writer method with validation
    # @param [Object] bank_code Value to be assigned
    def bank_code=(bank_code)
      if bank_code.nil?
        fail ArgumentError, 'bank_code cannot be nil'
      end

      if bank_code.to_s.length > 4
        fail ArgumentError, 'invalid value for "bank_code", the character length must be smaller than or equal to 4.'
      end

      if bank_code.to_s.length < 4
        fail ArgumentError, 'invalid value for "bank_code", the character length must be great than or equal to 4.'
      end

      @bank_code = bank_code
    end

    # Custom attribute writer method with validation
    # @param [Object] branch_code Value to be assigned
    def branch_code=(branch_code)
      if branch_code.nil?
        fail ArgumentError, 'branch_code cannot be nil'
      end

      if branch_code.to_s.length > 3
        fail ArgumentError, 'invalid value for "branch_code", the character length must be smaller than or equal to 3.'
      end

      if branch_code.to_s.length < 3
        fail ArgumentError, 'invalid value for "branch_code", the character length must be great than or equal to 3.'
      end

      @branch_code = branch_code
    end

    # Custom attribute writer method with validation
    # @param [Object] branch_name Value to be assigned
    def branch_name=(branch_name)
      if branch_name.nil?
        fail ArgumentError, 'branch_name cannot be nil'
      end

      if branch_name.to_s.length > 100
        fail ArgumentError, 'invalid value for "branch_name", the character length must be smaller than or equal to 100.'
      end

      if branch_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "branch_name", the character length must be great than or equal to 1.'
      end

      @branch_name = branch_name
    end

    # Custom attribute writer method with validation
    # @param [Object] branch_name_kana Value to be assigned
    def branch_name_kana=(branch_name_kana)
      if branch_name_kana.nil?
        fail ArgumentError, 'branch_name_kana cannot be nil'
      end

      if branch_name_kana.to_s.length > 100
        fail ArgumentError, 'invalid value for "branch_name_kana", the character length must be smaller than or equal to 100.'
      end

      if branch_name_kana.to_s.length < 1
        fail ArgumentError, 'invalid value for "branch_name_kana", the character length must be great than or equal to 1.'
      end

      @branch_name_kana = branch_name_kana
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_kind Object to be assigned
    def account_kind=(account_kind)
      validator = EnumAttributeValidator.new('Float', [0, 1])
      unless validator.valid?(account_kind)
        fail ArgumentError, "invalid value for \"account_kind\", must be one of #{validator.allowable_values}."
      end
      @account_kind = account_kind
    end

    # Custom attribute writer method with validation
    # @param [Object] account_number Value to be assigned
    def account_number=(account_number)
      if account_number.nil?
        fail ArgumentError, 'account_number cannot be nil'
      end

      if account_number.to_s.length > 7
        fail ArgumentError, 'invalid value for "account_number", the character length must be smaller than or equal to 7.'
      end

      if account_number.to_s.length < 7
        fail ArgumentError, 'invalid value for "account_number", the character length must be great than or equal to 7.'
      end

      @account_number = account_number
    end

    # Custom attribute writer method with validation
    # @param [Object] account_name Value to be assigned
    def account_name=(account_name)
      if account_name.nil?
        fail ArgumentError, 'account_name cannot be nil'
      end

      if account_name.to_s.length > 47
        fail ArgumentError, 'invalid value for "account_name", the character length must be smaller than or equal to 47.'
      end

      if account_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "account_name", the character length must be great than or equal to 1.'
      end

      @account_name = account_name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          bank_name == o.bank_name &&
          bank_name_kana == o.bank_name_kana &&
          bank_code == o.bank_code &&
          branch_code == o.branch_code &&
          branch_name == o.branch_name &&
          branch_name_kana == o.branch_name_kana &&
          account_kind == o.account_kind &&
          account_number == o.account_number &&
          account_name == o.account_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [bank_name, bank_name_kana, bank_code, branch_code, branch_name, branch_name_kana, account_kind, account_number, account_name].hash
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
