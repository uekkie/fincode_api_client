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
  class CustomerCreatingResponse
    # 顧客ID 
    attr_accessor :id

    # 顧客の名前 
    attr_accessor :name

    # 顧客のメールアドレス\\ 形式： RFC5322 
    attr_accessor :email

    # 顧客の電話番号の国コード（`+`は含まない） 
    attr_accessor :phone_cc

    # 顧客の電話番号 
    attr_accessor :phone_no

    # 顧客の住所の国コード\\ 形式： ISO 3166-1 numeric 
    attr_accessor :addr_country

    # 顧客の住所の州コードまたは都道府県コード\\ 参照： [国土交通省 都道府県コード](https://nlftp.mlit.go.jp/ksj/gml/codelist/PrefCd.html) 
    attr_accessor :addr_state

    # 顧客の住所の都市名 
    attr_accessor :addr_city

    # 顧客の住所の番地・区画 
    attr_accessor :addr_line_1

    # 顧客の住所の建物名・部屋番号 
    attr_accessor :addr_line_2

    # 顧客の住所 その他 
    attr_accessor :addr_line_3

    # 顧客の住所の郵便番号 
    attr_accessor :addr_post_code

    # 決済手段（カード）登録状況  - `0`: 未登録 - `1`: 1件以上のカードが登録済み 
    attr_accessor :card_registration

    # 決済手段（口座振替）登録状況  - `0`: 未登録 - `1`: 1件以上の振替用口座が登録済み 
    attr_accessor :directdebit_registration

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
        :'name' => :'name',
        :'email' => :'email',
        :'phone_cc' => :'phone_cc',
        :'phone_no' => :'phone_no',
        :'addr_country' => :'addr_country',
        :'addr_state' => :'addr_state',
        :'addr_city' => :'addr_city',
        :'addr_line_1' => :'addr_line_1',
        :'addr_line_2' => :'addr_line_2',
        :'addr_line_3' => :'addr_line_3',
        :'addr_post_code' => :'addr_post_code',
        :'card_registration' => :'card_registration',
        :'directdebit_registration' => :'directdebit_registration',
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
        :'name' => :'String',
        :'email' => :'String',
        :'phone_cc' => :'String',
        :'phone_no' => :'String',
        :'addr_country' => :'String',
        :'addr_state' => :'String',
        :'addr_city' => :'String',
        :'addr_line_1' => :'String',
        :'addr_line_2' => :'String',
        :'addr_line_3' => :'String',
        :'addr_post_code' => :'String',
        :'card_registration' => :'String',
        :'directdebit_registration' => :'String',
        :'created' => :'String',
        :'updated' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'name',
        :'email',
        :'phone_cc',
        :'phone_no',
        :'addr_country',
        :'addr_state',
        :'addr_city',
        :'addr_line_1',
        :'addr_line_2',
        :'addr_line_3',
        :'addr_post_code',
        :'card_registration',
        :'directdebit_registration',
        :'updated'
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'Customer'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FincodeApiClient::CustomerCreatingResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FincodeApiClient::CustomerCreatingResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'phone_cc')
        self.phone_cc = attributes[:'phone_cc']
      end

      if attributes.key?(:'phone_no')
        self.phone_no = attributes[:'phone_no']
      end

      if attributes.key?(:'addr_country')
        self.addr_country = attributes[:'addr_country']
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

      if attributes.key?(:'card_registration')
        self.card_registration = attributes[:'card_registration']
      end

      if attributes.key?(:'directdebit_registration')
        self.directdebit_registration = attributes[:'directdebit_registration']
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
      if !@id.nil? && @id.to_s.length > 60
        invalid_properties.push('invalid value for "id", the character length must be smaller than or equal to 60.')
      end

      if !@id.nil? && @id.to_s.length < 1
        invalid_properties.push('invalid value for "id", the character length must be great than or equal to 1.')
      end

      if !@name.nil? && @name.to_s.length > 384
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 384.')
      end

      if !@name.nil? && @name.to_s.length < 1
        invalid_properties.push('invalid value for "name", the character length must be great than or equal to 1.')
      end

      if !@email.nil? && @email.to_s.length > 254
        invalid_properties.push('invalid value for "email", the character length must be smaller than or equal to 254.')
      end

      if !@email.nil? && @email.to_s.length < 1
        invalid_properties.push('invalid value for "email", the character length must be great than or equal to 1.')
      end

      if !@phone_cc.nil? && @phone_cc.to_s.length > 3
        invalid_properties.push('invalid value for "phone_cc", the character length must be smaller than or equal to 3.')
      end

      if !@phone_cc.nil? && @phone_cc.to_s.length < 1
        invalid_properties.push('invalid value for "phone_cc", the character length must be great than or equal to 1.')
      end

      if !@phone_no.nil? && @phone_no.to_s.length > 15
        invalid_properties.push('invalid value for "phone_no", the character length must be smaller than or equal to 15.')
      end

      if !@phone_no.nil? && @phone_no.to_s.length < 1
        invalid_properties.push('invalid value for "phone_no", the character length must be great than or equal to 1.')
      end

      if !@addr_country.nil? && @addr_country.to_s.length > 3
        invalid_properties.push('invalid value for "addr_country", the character length must be smaller than or equal to 3.')
      end

      if !@addr_country.nil? && @addr_country.to_s.length < 1
        invalid_properties.push('invalid value for "addr_country", the character length must be great than or equal to 1.')
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

      if !@addr_line_1.nil? && @addr_line_1.to_s.length > 50
        invalid_properties.push('invalid value for "addr_line_1", the character length must be smaller than or equal to 50.')
      end

      if !@addr_line_1.nil? && @addr_line_1.to_s.length < 1
        invalid_properties.push('invalid value for "addr_line_1", the character length must be great than or equal to 1.')
      end

      if !@addr_line_2.nil? && @addr_line_2.to_s.length > 50
        invalid_properties.push('invalid value for "addr_line_2", the character length must be smaller than or equal to 50.')
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

      if !@addr_post_code.nil? && @addr_post_code.to_s.length > 16
        invalid_properties.push('invalid value for "addr_post_code", the character length must be smaller than or equal to 16.')
      end

      if !@addr_post_code.nil? && @addr_post_code.to_s.length < 1
        invalid_properties.push('invalid value for "addr_post_code", the character length must be great than or equal to 1.')
      end

      if !@card_registration.nil? && @card_registration.to_s.length > 1
        invalid_properties.push('invalid value for "card_registration", the character length must be smaller than or equal to 1.')
      end

      if !@card_registration.nil? && @card_registration.to_s.length < 1
        invalid_properties.push('invalid value for "card_registration", the character length must be great than or equal to 1.')
      end

      if !@directdebit_registration.nil? && @directdebit_registration.to_s.length > 1
        invalid_properties.push('invalid value for "directdebit_registration", the character length must be smaller than or equal to 1.')
      end

      if !@directdebit_registration.nil? && @directdebit_registration.to_s.length < 1
        invalid_properties.push('invalid value for "directdebit_registration", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@id.nil? && @id.to_s.length > 60
      return false if !@id.nil? && @id.to_s.length < 1
      return false if !@name.nil? && @name.to_s.length > 384
      return false if !@name.nil? && @name.to_s.length < 1
      return false if !@email.nil? && @email.to_s.length > 254
      return false if !@email.nil? && @email.to_s.length < 1
      return false if !@phone_cc.nil? && @phone_cc.to_s.length > 3
      return false if !@phone_cc.nil? && @phone_cc.to_s.length < 1
      return false if !@phone_no.nil? && @phone_no.to_s.length > 15
      return false if !@phone_no.nil? && @phone_no.to_s.length < 1
      return false if !@addr_country.nil? && @addr_country.to_s.length > 3
      return false if !@addr_country.nil? && @addr_country.to_s.length < 1
      return false if !@addr_state.nil? && @addr_state.to_s.length > 3
      return false if !@addr_state.nil? && @addr_state.to_s.length < 1
      return false if !@addr_city.nil? && @addr_city.to_s.length > 50
      return false if !@addr_city.nil? && @addr_city.to_s.length < 1
      return false if !@addr_line_1.nil? && @addr_line_1.to_s.length > 50
      return false if !@addr_line_1.nil? && @addr_line_1.to_s.length < 1
      return false if !@addr_line_2.nil? && @addr_line_2.to_s.length > 50
      return false if !@addr_line_2.nil? && @addr_line_2.to_s.length < 1
      return false if !@addr_line_3.nil? && @addr_line_3.to_s.length > 50
      return false if !@addr_line_3.nil? && @addr_line_3.to_s.length < 1
      return false if !@addr_post_code.nil? && @addr_post_code.to_s.length > 16
      return false if !@addr_post_code.nil? && @addr_post_code.to_s.length < 1
      card_registration_validator = EnumAttributeValidator.new('String', ["0", "1"])
      return false unless card_registration_validator.valid?(@card_registration)
      return false if !@card_registration.nil? && @card_registration.to_s.length > 1
      return false if !@card_registration.nil? && @card_registration.to_s.length < 1
      directdebit_registration_validator = EnumAttributeValidator.new('String', ["0", "1"])
      return false unless directdebit_registration_validator.valid?(@directdebit_registration)
      return false if !@directdebit_registration.nil? && @directdebit_registration.to_s.length > 1
      return false if !@directdebit_registration.nil? && @directdebit_registration.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      if id.to_s.length > 60
        fail ArgumentError, 'invalid value for "id", the character length must be smaller than or equal to 60.'
      end

      if id.to_s.length < 1
        fail ArgumentError, 'invalid value for "id", the character length must be great than or equal to 1.'
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length > 384
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 384.'
      end

      if !name.nil? && name.to_s.length < 1
        fail ArgumentError, 'invalid value for "name", the character length must be great than or equal to 1.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      if !email.nil? && email.to_s.length > 254
        fail ArgumentError, 'invalid value for "email", the character length must be smaller than or equal to 254.'
      end

      if !email.nil? && email.to_s.length < 1
        fail ArgumentError, 'invalid value for "email", the character length must be great than or equal to 1.'
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] phone_cc Value to be assigned
    def phone_cc=(phone_cc)
      if !phone_cc.nil? && phone_cc.to_s.length > 3
        fail ArgumentError, 'invalid value for "phone_cc", the character length must be smaller than or equal to 3.'
      end

      if !phone_cc.nil? && phone_cc.to_s.length < 1
        fail ArgumentError, 'invalid value for "phone_cc", the character length must be great than or equal to 1.'
      end

      @phone_cc = phone_cc
    end

    # Custom attribute writer method with validation
    # @param [Object] phone_no Value to be assigned
    def phone_no=(phone_no)
      if !phone_no.nil? && phone_no.to_s.length > 15
        fail ArgumentError, 'invalid value for "phone_no", the character length must be smaller than or equal to 15.'
      end

      if !phone_no.nil? && phone_no.to_s.length < 1
        fail ArgumentError, 'invalid value for "phone_no", the character length must be great than or equal to 1.'
      end

      @phone_no = phone_no
    end

    # Custom attribute writer method with validation
    # @param [Object] addr_country Value to be assigned
    def addr_country=(addr_country)
      if !addr_country.nil? && addr_country.to_s.length > 3
        fail ArgumentError, 'invalid value for "addr_country", the character length must be smaller than or equal to 3.'
      end

      if !addr_country.nil? && addr_country.to_s.length < 1
        fail ArgumentError, 'invalid value for "addr_country", the character length must be great than or equal to 1.'
      end

      @addr_country = addr_country
    end

    # Custom attribute writer method with validation
    # @param [Object] addr_state Value to be assigned
    def addr_state=(addr_state)
      if !addr_state.nil? && addr_state.to_s.length > 3
        fail ArgumentError, 'invalid value for "addr_state", the character length must be smaller than or equal to 3.'
      end

      if !addr_state.nil? && addr_state.to_s.length < 1
        fail ArgumentError, 'invalid value for "addr_state", the character length must be great than or equal to 1.'
      end

      @addr_state = addr_state
    end

    # Custom attribute writer method with validation
    # @param [Object] addr_city Value to be assigned
    def addr_city=(addr_city)
      if !addr_city.nil? && addr_city.to_s.length > 50
        fail ArgumentError, 'invalid value for "addr_city", the character length must be smaller than or equal to 50.'
      end

      if !addr_city.nil? && addr_city.to_s.length < 1
        fail ArgumentError, 'invalid value for "addr_city", the character length must be great than or equal to 1.'
      end

      @addr_city = addr_city
    end

    # Custom attribute writer method with validation
    # @param [Object] addr_line_1 Value to be assigned
    def addr_line_1=(addr_line_1)
      if !addr_line_1.nil? && addr_line_1.to_s.length > 50
        fail ArgumentError, 'invalid value for "addr_line_1", the character length must be smaller than or equal to 50.'
      end

      if !addr_line_1.nil? && addr_line_1.to_s.length < 1
        fail ArgumentError, 'invalid value for "addr_line_1", the character length must be great than or equal to 1.'
      end

      @addr_line_1 = addr_line_1
    end

    # Custom attribute writer method with validation
    # @param [Object] addr_line_2 Value to be assigned
    def addr_line_2=(addr_line_2)
      if !addr_line_2.nil? && addr_line_2.to_s.length > 50
        fail ArgumentError, 'invalid value for "addr_line_2", the character length must be smaller than or equal to 50.'
      end

      if !addr_line_2.nil? && addr_line_2.to_s.length < 1
        fail ArgumentError, 'invalid value for "addr_line_2", the character length must be great than or equal to 1.'
      end

      @addr_line_2 = addr_line_2
    end

    # Custom attribute writer method with validation
    # @param [Object] addr_line_3 Value to be assigned
    def addr_line_3=(addr_line_3)
      if !addr_line_3.nil? && addr_line_3.to_s.length > 50
        fail ArgumentError, 'invalid value for "addr_line_3", the character length must be smaller than or equal to 50.'
      end

      if !addr_line_3.nil? && addr_line_3.to_s.length < 1
        fail ArgumentError, 'invalid value for "addr_line_3", the character length must be great than or equal to 1.'
      end

      @addr_line_3 = addr_line_3
    end

    # Custom attribute writer method with validation
    # @param [Object] addr_post_code Value to be assigned
    def addr_post_code=(addr_post_code)
      if !addr_post_code.nil? && addr_post_code.to_s.length > 16
        fail ArgumentError, 'invalid value for "addr_post_code", the character length must be smaller than or equal to 16.'
      end

      if !addr_post_code.nil? && addr_post_code.to_s.length < 1
        fail ArgumentError, 'invalid value for "addr_post_code", the character length must be great than or equal to 1.'
      end

      @addr_post_code = addr_post_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card_registration Object to be assigned
    def card_registration=(card_registration)
      validator = EnumAttributeValidator.new('String', ["0", "1"])
      unless validator.valid?(card_registration)
        fail ArgumentError, "invalid value for \"card_registration\", must be one of #{validator.allowable_values}."
      end
      @card_registration = card_registration
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] directdebit_registration Object to be assigned
    def directdebit_registration=(directdebit_registration)
      validator = EnumAttributeValidator.new('String', ["0", "1"])
      unless validator.valid?(directdebit_registration)
        fail ArgumentError, "invalid value for \"directdebit_registration\", must be one of #{validator.allowable_values}."
      end
      @directdebit_registration = directdebit_registration
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          email == o.email &&
          phone_cc == o.phone_cc &&
          phone_no == o.phone_no &&
          addr_country == o.addr_country &&
          addr_state == o.addr_state &&
          addr_city == o.addr_city &&
          addr_line_1 == o.addr_line_1 &&
          addr_line_2 == o.addr_line_2 &&
          addr_line_3 == o.addr_line_3 &&
          addr_post_code == o.addr_post_code &&
          card_registration == o.card_registration &&
          directdebit_registration == o.directdebit_registration &&
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
      [id, name, email, phone_cc, phone_no, addr_country, addr_state, addr_city, addr_line_1, addr_line_2, addr_line_3, addr_post_code, card_registration, directdebit_registration, created, updated].hash
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
