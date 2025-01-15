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
  # 発行元事業者情報   
  class InvoiceIssuer
    # 発行元事業者名   
    attr_accessor :name

    # 適格請求書発行事業者登録番号   
    attr_accessor :invoice_registration_number

    # 発行元事業者住所の都道府県コード   
    attr_accessor :addr_state

    # 発行元事業者住所の市区町村   
    attr_accessor :addr_city

    # 発行元事業者住所の町名・番地   
    attr_accessor :addr_line_1

    # 発行元事業者住所の建物名・部屋番号   
    attr_accessor :addr_line_2

    # 発行元事業者住所 その他   
    attr_accessor :addr_line_3

    # 発行元事業者住所の郵便番号   
    attr_accessor :addr_post_code

    # 発行元事業者のメールアドレス   
    attr_accessor :email

    # 発行元事業者の電話番号   
    attr_accessor :phone_number

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'invoice_registration_number' => :'invoice_registration_number',
        :'addr_state' => :'addr_state',
        :'addr_city' => :'addr_city',
        :'addr_line_1' => :'addr_line_1',
        :'addr_line_2' => :'addr_line_2',
        :'addr_line_3' => :'addr_line_3',
        :'addr_post_code' => :'addr_post_code',
        :'email' => :'email',
        :'phone_number' => :'phone_number'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'invoice_registration_number' => :'String',
        :'addr_state' => :'String',
        :'addr_city' => :'String',
        :'addr_line_1' => :'String',
        :'addr_line_2' => :'String',
        :'addr_line_3' => :'String',
        :'addr_post_code' => :'String',
        :'email' => :'String',
        :'phone_number' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `FincodeApiClient::InvoiceIssuer` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FincodeApiClient::InvoiceIssuer`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'invoice_registration_number')
        self.invoice_registration_number = attributes[:'invoice_registration_number']
      end

      if attributes.key?(:'addr_state')
        self.addr_state = attributes[:'addr_state']
      end

      if attributes.key?(:'addr_city')
        self.addr_city = attributes[:'addr_city']
      end

      if attributes.key?(:'addr_line_1')
        self.addr_line_1 = attributes[:'addr_line_1']
      end

      if attributes.key?(:'addr_line_2')
        self.addr_line_2 = attributes[:'addr_line_2']
      end

      if attributes.key?(:'addr_line_3')
        self.addr_line_3 = attributes[:'addr_line_3']
      end

      if attributes.key?(:'addr_post_code')
        self.addr_post_code = attributes[:'addr_post_code']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@name.nil? && @name.to_s.length > 150
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 150.')
      end

      if !@name.nil? && @name.to_s.length < 1
        invalid_properties.push('invalid value for "name", the character length must be great than or equal to 1.')
      end

      if !@invoice_registration_number.nil? && @invoice_registration_number.to_s.length > 14
        invalid_properties.push('invalid value for "invoice_registration_number", the character length must be smaller than or equal to 14.')
      end

      if !@invoice_registration_number.nil? && @invoice_registration_number.to_s.length < 1
        invalid_properties.push('invalid value for "invoice_registration_number", the character length must be great than or equal to 1.')
      end

      if !@addr_state.nil? && @addr_state.to_s.length > 3
        invalid_properties.push('invalid value for "addr_state", the character length must be smaller than or equal to 3.')
      end

      if !@addr_state.nil? && @addr_state.to_s.length < 1
        invalid_properties.push('invalid value for "addr_state", the character length must be great than or equal to 1.')
      end

      if !@addr_city.nil? && @addr_city.to_s.length > 50
        invalid_properties.push('invalid value for "addr_city", the character length must be smaller than or equal to 50.')
      end

      if !@addr_city.nil? && @addr_city.to_s.length < 1
        invalid_properties.push('invalid value for "addr_city", the character length must be great than or equal to 1.')
      end

      if !@addr_line_1.nil? && @addr_line_1.to_s.length > 100
        invalid_properties.push('invalid value for "addr_line_1", the character length must be smaller than or equal to 100.')
      end

      if !@addr_line_1.nil? && @addr_line_1.to_s.length < 1
        invalid_properties.push('invalid value for "addr_line_1", the character length must be great than or equal to 1.')
      end

      if !@addr_line_2.nil? && @addr_line_2.to_s.length > 100
        invalid_properties.push('invalid value for "addr_line_2", the character length must be smaller than or equal to 100.')
      end

      if !@addr_line_2.nil? && @addr_line_2.to_s.length < 1
        invalid_properties.push('invalid value for "addr_line_2", the character length must be great than or equal to 1.')
      end

      if !@addr_line_3.nil? && @addr_line_3.to_s.length > 50
        invalid_properties.push('invalid value for "addr_line_3", the character length must be smaller than or equal to 50.')
      end

      if !@addr_line_3.nil? && @addr_line_3.to_s.length < 1
        invalid_properties.push('invalid value for "addr_line_3", the character length must be great than or equal to 1.')
      end

      if !@addr_post_code.nil? && @addr_post_code.to_s.length > 8
        invalid_properties.push('invalid value for "addr_post_code", the character length must be smaller than or equal to 8.')
      end

      if !@addr_post_code.nil? && @addr_post_code.to_s.length < 1
        invalid_properties.push('invalid value for "addr_post_code", the character length must be great than or equal to 1.')
      end

      if !@email.nil? && @email.to_s.length > 254
        invalid_properties.push('invalid value for "email", the character length must be smaller than or equal to 254.')
      end

      if !@email.nil? && @email.to_s.length < 3
        invalid_properties.push('invalid value for "email", the character length must be great than or equal to 3.')
      end

      if !@phone_number.nil? && @phone_number.to_s.length > 15
        invalid_properties.push('invalid value for "phone_number", the character length must be smaller than or equal to 15.')
      end

      if !@phone_number.nil? && @phone_number.to_s.length < 1
        invalid_properties.push('invalid value for "phone_number", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@name.nil? && @name.to_s.length > 150
      return false if !@name.nil? && @name.to_s.length < 1
      return false if !@invoice_registration_number.nil? && @invoice_registration_number.to_s.length > 14
      return false if !@invoice_registration_number.nil? && @invoice_registration_number.to_s.length < 1
      return false if !@addr_state.nil? && @addr_state.to_s.length > 3
      return false if !@addr_state.nil? && @addr_state.to_s.length < 1
      return false if !@addr_city.nil? && @addr_city.to_s.length > 50
      return false if !@addr_city.nil? && @addr_city.to_s.length < 1
      return false if !@addr_line_1.nil? && @addr_line_1.to_s.length > 100
      return false if !@addr_line_1.nil? && @addr_line_1.to_s.length < 1
      return false if !@addr_line_2.nil? && @addr_line_2.to_s.length > 100
      return false if !@addr_line_2.nil? && @addr_line_2.to_s.length < 1
      return false if !@addr_line_3.nil? && @addr_line_3.to_s.length > 50
      return false if !@addr_line_3.nil? && @addr_line_3.to_s.length < 1
      return false if !@addr_post_code.nil? && @addr_post_code.to_s.length > 8
      return false if !@addr_post_code.nil? && @addr_post_code.to_s.length < 1
      return false if !@email.nil? && @email.to_s.length > 254
      return false if !@email.nil? && @email.to_s.length < 3
      return false if !@phone_number.nil? && @phone_number.to_s.length > 15
      return false if !@phone_number.nil? && @phone_number.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length > 150
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 150.'
      end

      if name.to_s.length < 1
        fail ArgumentError, 'invalid value for "name", the character length must be great than or equal to 1.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] invoice_registration_number Value to be assigned
    def invoice_registration_number=(invoice_registration_number)
      if invoice_registration_number.nil?
        fail ArgumentError, 'invoice_registration_number cannot be nil'
      end

      if invoice_registration_number.to_s.length > 14
        fail ArgumentError, 'invalid value for "invoice_registration_number", the character length must be smaller than or equal to 14.'
      end

      if invoice_registration_number.to_s.length < 1
        fail ArgumentError, 'invalid value for "invoice_registration_number", the character length must be great than or equal to 1.'
      end

      @invoice_registration_number = invoice_registration_number
    end

    # Custom attribute writer method with validation
    # @param [Object] addr_state Value to be assigned
    def addr_state=(addr_state)
      if addr_state.nil?
        fail ArgumentError, 'addr_state cannot be nil'
      end

      if addr_state.to_s.length > 3
        fail ArgumentError, 'invalid value for "addr_state", the character length must be smaller than or equal to 3.'
      end

      if addr_state.to_s.length < 1
        fail ArgumentError, 'invalid value for "addr_state", the character length must be great than or equal to 1.'
      end

      @addr_state = addr_state
    end

    # Custom attribute writer method with validation
    # @param [Object] addr_city Value to be assigned
    def addr_city=(addr_city)
      if addr_city.nil?
        fail ArgumentError, 'addr_city cannot be nil'
      end

      if addr_city.to_s.length > 50
        fail ArgumentError, 'invalid value for "addr_city", the character length must be smaller than or equal to 50.'
      end

      if addr_city.to_s.length < 1
        fail ArgumentError, 'invalid value for "addr_city", the character length must be great than or equal to 1.'
      end

      @addr_city = addr_city
    end

    # Custom attribute writer method with validation
    # @param [Object] addr_line_1 Value to be assigned
    def addr_line_1=(addr_line_1)
      if addr_line_1.nil?
        fail ArgumentError, 'addr_line_1 cannot be nil'
      end

      if addr_line_1.to_s.length > 100
        fail ArgumentError, 'invalid value for "addr_line_1", the character length must be smaller than or equal to 100.'
      end

      if addr_line_1.to_s.length < 1
        fail ArgumentError, 'invalid value for "addr_line_1", the character length must be great than or equal to 1.'
      end

      @addr_line_1 = addr_line_1
    end

    # Custom attribute writer method with validation
    # @param [Object] addr_line_2 Value to be assigned
    def addr_line_2=(addr_line_2)
      if addr_line_2.nil?
        fail ArgumentError, 'addr_line_2 cannot be nil'
      end

      if addr_line_2.to_s.length > 100
        fail ArgumentError, 'invalid value for "addr_line_2", the character length must be smaller than or equal to 100.'
      end

      if addr_line_2.to_s.length < 1
        fail ArgumentError, 'invalid value for "addr_line_2", the character length must be great than or equal to 1.'
      end

      @addr_line_2 = addr_line_2
    end

    # Custom attribute writer method with validation
    # @param [Object] addr_line_3 Value to be assigned
    def addr_line_3=(addr_line_3)
      if addr_line_3.nil?
        fail ArgumentError, 'addr_line_3 cannot be nil'
      end

      if addr_line_3.to_s.length > 50
        fail ArgumentError, 'invalid value for "addr_line_3", the character length must be smaller than or equal to 50.'
      end

      if addr_line_3.to_s.length < 1
        fail ArgumentError, 'invalid value for "addr_line_3", the character length must be great than or equal to 1.'
      end

      @addr_line_3 = addr_line_3
    end

    # Custom attribute writer method with validation
    # @param [Object] addr_post_code Value to be assigned
    def addr_post_code=(addr_post_code)
      if addr_post_code.nil?
        fail ArgumentError, 'addr_post_code cannot be nil'
      end

      if addr_post_code.to_s.length > 8
        fail ArgumentError, 'invalid value for "addr_post_code", the character length must be smaller than or equal to 8.'
      end

      if addr_post_code.to_s.length < 1
        fail ArgumentError, 'invalid value for "addr_post_code", the character length must be great than or equal to 1.'
      end

      @addr_post_code = addr_post_code
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      if email.nil?
        fail ArgumentError, 'email cannot be nil'
      end

      if email.to_s.length > 254
        fail ArgumentError, 'invalid value for "email", the character length must be smaller than or equal to 254.'
      end

      if email.to_s.length < 3
        fail ArgumentError, 'invalid value for "email", the character length must be great than or equal to 3.'
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] phone_number Value to be assigned
    def phone_number=(phone_number)
      if phone_number.nil?
        fail ArgumentError, 'phone_number cannot be nil'
      end

      if phone_number.to_s.length > 15
        fail ArgumentError, 'invalid value for "phone_number", the character length must be smaller than or equal to 15.'
      end

      if phone_number.to_s.length < 1
        fail ArgumentError, 'invalid value for "phone_number", the character length must be great than or equal to 1.'
      end

      @phone_number = phone_number
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          invoice_registration_number == o.invoice_registration_number &&
          addr_state == o.addr_state &&
          addr_city == o.addr_city &&
          addr_line_1 == o.addr_line_1 &&
          addr_line_2 == o.addr_line_2 &&
          addr_line_3 == o.addr_line_3 &&
          addr_post_code == o.addr_post_code &&
          email == o.email &&
          phone_number == o.phone_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, invoice_registration_number, addr_state, addr_city, addr_line_1, addr_line_2, addr_line_3, addr_post_code, email, phone_number].hash
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
