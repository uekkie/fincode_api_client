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
  # 依頼書登録のパラメータ<br /> <span class=\"smallText\"> ※ 依頼書登録により登録された口座の場合、この`paper_application`オブジェクトに依頼書からfincodeに転記した内容が含められます。 </span> 
  class PaymentMethodDirectdebitPaperApplication
    # 依頼書 仮登録日時。\\ 依頼書を仮登録した日時です。\\ 形式：`yyyy/MM/dd HH:mm:ss.SSS` 
    attr_accessor :preregistered_date

    # 依頼書ID。\\ 依頼書を管理画面から登録した際に登録者が指定した、依頼書を一意に識別するIDです。 
    attr_accessor :request_form_id

    # 依頼書登録に失敗した理由。 
    attr_accessor :paper_failure_description

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'preregistered_date' => :'preregistered_date',
        :'request_form_id' => :'request_form_id',
        :'paper_failure_description' => :'paper_failure_description'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'preregistered_date' => :'String',
        :'request_form_id' => :'String',
        :'paper_failure_description' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'preregistered_date',
        :'request_form_id',
        :'paper_failure_description'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FincodeApiClient::PaymentMethodDirectdebitPaperApplication` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FincodeApiClient::PaymentMethodDirectdebitPaperApplication`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'preregistered_date')
        self.preregistered_date = attributes[:'preregistered_date']
      end

      if attributes.key?(:'request_form_id')
        self.request_form_id = attributes[:'request_form_id']
      end

      if attributes.key?(:'paper_failure_description')
        self.paper_failure_description = attributes[:'paper_failure_description']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@request_form_id.nil? && @request_form_id.to_s.length > 20
        invalid_properties.push('invalid value for "request_form_id", the character length must be smaller than or equal to 20.')
      end

      if !@request_form_id.nil? && @request_form_id.to_s.length < 1
        invalid_properties.push('invalid value for "request_form_id", the character length must be great than or equal to 1.')
      end

      if !@paper_failure_description.nil? && @paper_failure_description.to_s.length > 200
        invalid_properties.push('invalid value for "paper_failure_description", the character length must be smaller than or equal to 200.')
      end

      if !@paper_failure_description.nil? && @paper_failure_description.to_s.length < 1
        invalid_properties.push('invalid value for "paper_failure_description", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@request_form_id.nil? && @request_form_id.to_s.length > 20
      return false if !@request_form_id.nil? && @request_form_id.to_s.length < 1
      return false if !@paper_failure_description.nil? && @paper_failure_description.to_s.length > 200
      return false if !@paper_failure_description.nil? && @paper_failure_description.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] request_form_id Value to be assigned
    def request_form_id=(request_form_id)
      if !request_form_id.nil? && request_form_id.to_s.length > 20
        fail ArgumentError, 'invalid value for "request_form_id", the character length must be smaller than or equal to 20.'
      end

      if !request_form_id.nil? && request_form_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "request_form_id", the character length must be great than or equal to 1.'
      end

      @request_form_id = request_form_id
    end

    # Custom attribute writer method with validation
    # @param [Object] paper_failure_description Value to be assigned
    def paper_failure_description=(paper_failure_description)
      if !paper_failure_description.nil? && paper_failure_description.to_s.length > 200
        fail ArgumentError, 'invalid value for "paper_failure_description", the character length must be smaller than or equal to 200.'
      end

      if !paper_failure_description.nil? && paper_failure_description.to_s.length < 1
        fail ArgumentError, 'invalid value for "paper_failure_description", the character length must be great than or equal to 1.'
      end

      @paper_failure_description = paper_failure_description
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          preregistered_date == o.preregistered_date &&
          request_form_id == o.request_form_id &&
          paper_failure_description == o.paper_failure_description
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [preregistered_date, request_form_id, paper_failure_description].hash
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
