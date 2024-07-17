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
  class User
    # ユーザーID 
    attr_accessor :id

    # デフォルトショップID\\ \\ このユーザーがログインした際、どのショップにログインするかを示すID 
    attr_accessor :default_shop_id

    # ロールID\\ \\ ユーザーの管理画面における権限を示すIDです。 
    attr_accessor :role_id

    # ユーザー名 
    attr_accessor :name

    # メールアドレス 
    attr_accessor :email

    # ユーザー種別  - `01`: ショップユーザー 
    attr_accessor :type

    # 二要素認証ステータス  - `00`: 未設定\\ - `01`: 設定済み 
    attr_accessor :two_factor_auth_status

    # メールアドレス認証ステータス  - `00`: 未設定\\ - `01`: 設定済み 
    attr_accessor :mail_auth_status

    # パスワードロックステータス  - `00`: ロックされていない\\ - `01`: ロック中 
    attr_accessor :password_lock_status

    # 最終ログイン日時\\ \\ 形式：`yyyy/MM/dd HH:mm:ss.SSS` 
    attr_accessor :last_login_date

    # ログイン失敗日時\\ \\ 形式：`yyyy/MM/dd HH:mm:ss.SSS` 
    attr_accessor :login_failure_date

    # ログイン失敗回数 
    attr_accessor :login_failure_times

    # パスワード有効期限\\ \\ 形式：`yyyy/MM/dd HH:mm:ss.SSS` 
    attr_accessor :password_expire

    # アカウントステータス  - `00`: 有効 - `01`: 無効 
    attr_accessor :account_status

    # 招待ステータス  - `01`: 招待中 - `02`: 参加済み 
    attr_accessor :invite_status

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
        :'default_shop_id' => :'default_shop_id',
        :'role_id' => :'role_id',
        :'name' => :'name',
        :'email' => :'email',
        :'type' => :'type',
        :'two_factor_auth_status' => :'two_factor_auth_status',
        :'mail_auth_status' => :'mail_auth_status',
        :'password_lock_status' => :'password_lock_status',
        :'last_login_date' => :'last_login_date',
        :'login_failure_date' => :'login_failure_date',
        :'login_failure_times' => :'login_failure_times',
        :'password_expire' => :'password_expire',
        :'account_status' => :'account_status',
        :'invite_status' => :'invite_status',
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
        :'default_shop_id' => :'String',
        :'role_id' => :'Integer',
        :'name' => :'String',
        :'email' => :'String',
        :'type' => :'String',
        :'two_factor_auth_status' => :'String',
        :'mail_auth_status' => :'String',
        :'password_lock_status' => :'String',
        :'last_login_date' => :'String',
        :'login_failure_date' => :'String',
        :'login_failure_times' => :'Integer',
        :'password_expire' => :'String',
        :'account_status' => :'String',
        :'invite_status' => :'String',
        :'created' => :'String',
        :'updated' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'last_login_date',
        :'login_failure_date',
        :'password_expire',
        :'updated'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FincodeApiClient::User` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FincodeApiClient::User`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'default_shop_id')
        self.default_shop_id = attributes[:'default_shop_id']
      end

      if attributes.key?(:'role_id')
        self.role_id = attributes[:'role_id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'two_factor_auth_status')
        self.two_factor_auth_status = attributes[:'two_factor_auth_status']
      end

      if attributes.key?(:'mail_auth_status')
        self.mail_auth_status = attributes[:'mail_auth_status']
      end

      if attributes.key?(:'password_lock_status')
        self.password_lock_status = attributes[:'password_lock_status']
      end

      if attributes.key?(:'last_login_date')
        self.last_login_date = attributes[:'last_login_date']
      end

      if attributes.key?(:'login_failure_date')
        self.login_failure_date = attributes[:'login_failure_date']
      end

      if attributes.key?(:'login_failure_times')
        self.login_failure_times = attributes[:'login_failure_times']
      end

      if attributes.key?(:'password_expire')
        self.password_expire = attributes[:'password_expire']
      end

      if attributes.key?(:'account_status')
        self.account_status = attributes[:'account_status']
      end

      if attributes.key?(:'invite_status')
        self.invite_status = attributes[:'invite_status']
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
      if !@id.nil? && @id.to_s.length > 24
        invalid_properties.push('invalid value for "id", the character length must be smaller than or equal to 24.')
      end

      if !@id.nil? && @id.to_s.length < 24
        invalid_properties.push('invalid value for "id", the character length must be great than or equal to 24.')
      end

      if !@default_shop_id.nil? && @default_shop_id.to_s.length > 13
        invalid_properties.push('invalid value for "default_shop_id", the character length must be smaller than or equal to 13.')
      end

      if !@default_shop_id.nil? && @default_shop_id.to_s.length < 13
        invalid_properties.push('invalid value for "default_shop_id", the character length must be great than or equal to 13.')
      end

      if !@name.nil? && @name.to_s.length > 384
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 384.')
      end

      if !@name.nil? && @name.to_s.length < 1
        invalid_properties.push('invalid value for "name", the character length must be great than or equal to 1.')
      end

      if !@email.nil? && @email.to_s.length > 384
        invalid_properties.push('invalid value for "email", the character length must be smaller than or equal to 384.')
      end

      if !@email.nil? && @email.to_s.length < 1
        invalid_properties.push('invalid value for "email", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@id.nil? && @id.to_s.length > 24
      return false if !@id.nil? && @id.to_s.length < 24
      return false if !@default_shop_id.nil? && @default_shop_id.to_s.length > 13
      return false if !@default_shop_id.nil? && @default_shop_id.to_s.length < 13
      return false if !@name.nil? && @name.to_s.length > 384
      return false if !@name.nil? && @name.to_s.length < 1
      return false if !@email.nil? && @email.to_s.length > 384
      return false if !@email.nil? && @email.to_s.length < 1
      type_validator = EnumAttributeValidator.new('String', ["01"])
      return false unless type_validator.valid?(@type)
      two_factor_auth_status_validator = EnumAttributeValidator.new('String', ["00", "01"])
      return false unless two_factor_auth_status_validator.valid?(@two_factor_auth_status)
      mail_auth_status_validator = EnumAttributeValidator.new('String', ["00", "01"])
      return false unless mail_auth_status_validator.valid?(@mail_auth_status)
      password_lock_status_validator = EnumAttributeValidator.new('String', ["00", "01"])
      return false unless password_lock_status_validator.valid?(@password_lock_status)
      account_status_validator = EnumAttributeValidator.new('String', ["00", "01"])
      return false unless account_status_validator.valid?(@account_status)
      invite_status_validator = EnumAttributeValidator.new('String', ["01", "02"])
      return false unless invite_status_validator.valid?(@invite_status)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      if id.to_s.length > 24
        fail ArgumentError, 'invalid value for "id", the character length must be smaller than or equal to 24.'
      end

      if id.to_s.length < 24
        fail ArgumentError, 'invalid value for "id", the character length must be great than or equal to 24.'
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] default_shop_id Value to be assigned
    def default_shop_id=(default_shop_id)
      if default_shop_id.nil?
        fail ArgumentError, 'default_shop_id cannot be nil'
      end

      if default_shop_id.to_s.length > 13
        fail ArgumentError, 'invalid value for "default_shop_id", the character length must be smaller than or equal to 13.'
      end

      if default_shop_id.to_s.length < 13
        fail ArgumentError, 'invalid value for "default_shop_id", the character length must be great than or equal to 13.'
      end

      @default_shop_id = default_shop_id
    end

    # Custom attribute writer method with validation
    # @param [Object] role_id Value to be assigned
    def role_id=(role_id)
      if role_id.nil?
        fail ArgumentError, 'role_id cannot be nil'
      end

      @role_id = role_id
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
    # @param [Object] email Value to be assigned
    def email=(email)
      if email.nil?
        fail ArgumentError, 'email cannot be nil'
      end

      if email.to_s.length > 384
        fail ArgumentError, 'invalid value for "email", the character length must be smaller than or equal to 384.'
      end

      if email.to_s.length < 1
        fail ArgumentError, 'invalid value for "email", the character length must be great than or equal to 1.'
      end

      @email = email
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["01"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] two_factor_auth_status Object to be assigned
    def two_factor_auth_status=(two_factor_auth_status)
      validator = EnumAttributeValidator.new('String', ["00", "01"])
      unless validator.valid?(two_factor_auth_status)
        fail ArgumentError, "invalid value for \"two_factor_auth_status\", must be one of #{validator.allowable_values}."
      end
      @two_factor_auth_status = two_factor_auth_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mail_auth_status Object to be assigned
    def mail_auth_status=(mail_auth_status)
      validator = EnumAttributeValidator.new('String', ["00", "01"])
      unless validator.valid?(mail_auth_status)
        fail ArgumentError, "invalid value for \"mail_auth_status\", must be one of #{validator.allowable_values}."
      end
      @mail_auth_status = mail_auth_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] password_lock_status Object to be assigned
    def password_lock_status=(password_lock_status)
      validator = EnumAttributeValidator.new('String', ["00", "01"])
      unless validator.valid?(password_lock_status)
        fail ArgumentError, "invalid value for \"password_lock_status\", must be one of #{validator.allowable_values}."
      end
      @password_lock_status = password_lock_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_status Object to be assigned
    def account_status=(account_status)
      validator = EnumAttributeValidator.new('String', ["00", "01"])
      unless validator.valid?(account_status)
        fail ArgumentError, "invalid value for \"account_status\", must be one of #{validator.allowable_values}."
      end
      @account_status = account_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invite_status Object to be assigned
    def invite_status=(invite_status)
      validator = EnumAttributeValidator.new('String', ["01", "02"])
      unless validator.valid?(invite_status)
        fail ArgumentError, "invalid value for \"invite_status\", must be one of #{validator.allowable_values}."
      end
      @invite_status = invite_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          default_shop_id == o.default_shop_id &&
          role_id == o.role_id &&
          name == o.name &&
          email == o.email &&
          type == o.type &&
          two_factor_auth_status == o.two_factor_auth_status &&
          mail_auth_status == o.mail_auth_status &&
          password_lock_status == o.password_lock_status &&
          last_login_date == o.last_login_date &&
          login_failure_date == o.login_failure_date &&
          login_failure_times == o.login_failure_times &&
          password_expire == o.password_expire &&
          account_status == o.account_status &&
          invite_status == o.invite_status &&
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
      [id, default_shop_id, role_id, name, email, type, two_factor_auth_status, mail_auth_status, password_lock_status, last_login_date, login_failure_date, login_failure_times, password_expire, account_status, invite_status, created, updated].hash
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