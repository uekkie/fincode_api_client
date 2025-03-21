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
  class POSTTenantEntriesRequest
    # メールアドレス\\ \\ fincodeに新規作成するユーザーのメールアドレス。\\ すでに登録されているメールアドレスを指定するとエラーとなります。（エラーコード：`E0087012014`）\\ \\ 形式： RFC 5322 
    attr_accessor :email

    # パスワード\\ \\ fincodeに新規作成するユーザーのパスワード。\\ パスワードは以下の条件を満たす必要があります。  - 半角英数のみ - 12文字以上 - 英数ともに使用 - 大文字小文字ともに使用 
    attr_accessor :password

    # ユーザー名\\ \\ fincodeに新規作成するユーザーの名前 
    attr_accessor :name

    # テナント登録URL ID\\ \\ テナント登録URLのID。\\ [管理画面 > プラットフォームの運用と管理 > 構成](https://dashboard.test.fincode.jp/platform/setting)の『テナント登録用のURL』の`tenant_url_id`の値をこのパラメータに指定します。 
    attr_accessor :tenant_url_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'email' => :'email',
        :'password' => :'password',
        :'name' => :'name',
        :'tenant_url_id' => :'tenant_url_id'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'email' => :'String',
        :'password' => :'String',
        :'name' => :'String',
        :'tenant_url_id' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `FincodeApiClient::POSTTenantEntriesRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FincodeApiClient::POSTTenantEntriesRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      else
        self.email = nil
      end

      if attributes.key?(:'password')
        self.password = attributes[:'password']
      else
        self.password = nil
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'tenant_url_id')
        self.tenant_url_id = attributes[:'tenant_url_id']
      else
        self.tenant_url_id = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @email.nil?
        invalid_properties.push('invalid value for "email", email cannot be nil.')
      end

      if @email.to_s.length > 254
        invalid_properties.push('invalid value for "email", the character length must be smaller than or equal to 254.')
      end

      if @email.to_s.length < 1
        invalid_properties.push('invalid value for "email", the character length must be great than or equal to 1.')
      end

      if @password.nil?
        invalid_properties.push('invalid value for "password", password cannot be nil.')
      end

      if @password.to_s.length > 254
        invalid_properties.push('invalid value for "password", the character length must be smaller than or equal to 254.')
      end

      if @password.to_s.length < 12
        invalid_properties.push('invalid value for "password", the character length must be great than or equal to 12.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @name.to_s.length > 384
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 384.')
      end

      if @name.to_s.length < 1
        invalid_properties.push('invalid value for "name", the character length must be great than or equal to 1.')
      end

      if @tenant_url_id.nil?
        invalid_properties.push('invalid value for "tenant_url_id", tenant_url_id cannot be nil.')
      end

      if @tenant_url_id.to_s.length > 25
        invalid_properties.push('invalid value for "tenant_url_id", the character length must be smaller than or equal to 25.')
      end

      if @tenant_url_id.to_s.length < 25
        invalid_properties.push('invalid value for "tenant_url_id", the character length must be great than or equal to 25.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @email.nil?
      return false if @email.to_s.length > 254
      return false if @email.to_s.length < 1
      return false if @password.nil?
      return false if @password.to_s.length > 254
      return false if @password.to_s.length < 12
      return false if @name.nil?
      return false if @name.to_s.length > 384
      return false if @name.to_s.length < 1
      return false if @tenant_url_id.nil?
      return false if @tenant_url_id.to_s.length > 25
      return false if @tenant_url_id.to_s.length < 25
      true
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

      if email.to_s.length < 1
        fail ArgumentError, 'invalid value for "email", the character length must be great than or equal to 1.'
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] password Value to be assigned
    def password=(password)
      if password.nil?
        fail ArgumentError, 'password cannot be nil'
      end

      if password.to_s.length > 254
        fail ArgumentError, 'invalid value for "password", the character length must be smaller than or equal to 254.'
      end

      if password.to_s.length < 12
        fail ArgumentError, 'invalid value for "password", the character length must be great than or equal to 12.'
      end

      @password = password
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length > 384
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 384.'
      end

      if name.to_s.length < 1
        fail ArgumentError, 'invalid value for "name", the character length must be great than or equal to 1.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] tenant_url_id Value to be assigned
    def tenant_url_id=(tenant_url_id)
      if tenant_url_id.nil?
        fail ArgumentError, 'tenant_url_id cannot be nil'
      end

      if tenant_url_id.to_s.length > 25
        fail ArgumentError, 'invalid value for "tenant_url_id", the character length must be smaller than or equal to 25.'
      end

      if tenant_url_id.to_s.length < 25
        fail ArgumentError, 'invalid value for "tenant_url_id", the character length must be great than or equal to 25.'
      end

      @tenant_url_id = tenant_url_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          email == o.email &&
          password == o.password &&
          name == o.name &&
          tenant_url_id == o.tenant_url_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [email, password, name, tenant_url_id].hash
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
