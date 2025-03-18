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
  class PaymentBulk
    # 一括決済ID 
    attr_accessor :id

    # ショップID 
    attr_accessor :shop_id

    attr_accessor :pay_type

    attr_accessor :status

    # 一括決済 処理予定日\\ この一括決済の処理予定日です。\\ \\ 形式：`yyyy/MM/dd` 
    attr_accessor :process_plan_date

    # 一括決済データファイル名 
    attr_accessor :file_name

    # 一括決済 処理開始日時\\ この一括決済の処理開始日時です。\\ \\ 形式：`yyyy/MM/dd HH:mm:ss.SSS` 
    attr_accessor :process_start_date

    # 一括決済 処理終了日時\\ この一括決済の処理終了日時です。\\ \\ 形式：`yyyy/MM/dd HH:mm:ss.SSS` 
    attr_accessor :process_end_date

    # 一括決済 総件数\\ この一括決済に含まれる決済の件数です。 
    attr_accessor :total_count

    # 一括決済 成功件数\\ この一括決済の処理に成功した決済の件数です。 
    attr_accessor :process_success_count

    # 一括決済 失敗件数\\ この一括決済の処理に失敗した決済の件数です。 
    attr_accessor :process_failure_count

    # この一括決済において発生したエラーのうち、一番最新のエラーのエラーコードです。\\ [各エラーコードの定義はこちらを参照](https://docs.fincode.jp/develop_support/error)して確認できます。 
    attr_accessor :error_code

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
        :'shop_id' => :'shop_id',
        :'pay_type' => :'pay_type',
        :'status' => :'status',
        :'process_plan_date' => :'process_plan_date',
        :'file_name' => :'file_name',
        :'process_start_date' => :'process_start_date',
        :'process_end_date' => :'process_end_date',
        :'total_count' => :'total_count',
        :'process_success_count' => :'process_success_count',
        :'process_failure_count' => :'process_failure_count',
        :'error_code' => :'error_code',
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
        :'shop_id' => :'String',
        :'pay_type' => :'PaymentBulkPayType',
        :'status' => :'PaymentBulkStatus',
        :'process_plan_date' => :'String',
        :'file_name' => :'String',
        :'process_start_date' => :'String',
        :'process_end_date' => :'String',
        :'total_count' => :'Integer',
        :'process_success_count' => :'Integer',
        :'process_failure_count' => :'Integer',
        :'error_code' => :'String',
        :'delete_flag' => :'DeleteFlag',
        :'created' => :'String',
        :'updated' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'process_start_date',
        :'process_end_date',
        :'error_code',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FincodeApiClient::PaymentBulk` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FincodeApiClient::PaymentBulk`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'shop_id')
        self.shop_id = attributes[:'shop_id']
      end

      if attributes.key?(:'pay_type')
        self.pay_type = attributes[:'pay_type']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'process_plan_date')
        self.process_plan_date = attributes[:'process_plan_date']
      end

      if attributes.key?(:'file_name')
        self.file_name = attributes[:'file_name']
      end

      if attributes.key?(:'process_start_date')
        self.process_start_date = attributes[:'process_start_date']
      end

      if attributes.key?(:'process_end_date')
        self.process_end_date = attributes[:'process_end_date']
      end

      if attributes.key?(:'total_count')
        self.total_count = attributes[:'total_count']
      end

      if attributes.key?(:'process_success_count')
        self.process_success_count = attributes[:'process_success_count']
      end

      if attributes.key?(:'process_failure_count')
        self.process_failure_count = attributes[:'process_failure_count']
      end

      if attributes.key?(:'error_code')
        self.error_code = attributes[:'error_code']
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

      if !@id.nil? && @id.to_s.length < 25
        invalid_properties.push('invalid value for "id", the character length must be great than or equal to 25.')
      end

      if !@shop_id.nil? && @shop_id.to_s.length > 13
        invalid_properties.push('invalid value for "shop_id", the character length must be smaller than or equal to 13.')
      end

      if !@shop_id.nil? && @shop_id.to_s.length < 13
        invalid_properties.push('invalid value for "shop_id", the character length must be great than or equal to 13.')
      end

      if !@file_name.nil? && @file_name.to_s.length > 100
        invalid_properties.push('invalid value for "file_name", the character length must be smaller than or equal to 100.')
      end

      if !@file_name.nil? && @file_name.to_s.length < 1
        invalid_properties.push('invalid value for "file_name", the character length must be great than or equal to 1.')
      end

      if !@error_code.nil? && @error_code.to_s.length > 11
        invalid_properties.push('invalid value for "error_code", the character length must be smaller than or equal to 11.')
      end

      if !@error_code.nil? && @error_code.to_s.length < 11
        invalid_properties.push('invalid value for "error_code", the character length must be great than or equal to 11.')
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
      return false if !@file_name.nil? && @file_name.to_s.length > 100
      return false if !@file_name.nil? && @file_name.to_s.length < 1
      return false if !@error_code.nil? && @error_code.to_s.length > 11
      return false if !@error_code.nil? && @error_code.to_s.length < 11
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
    # @param [Object] file_name Value to be assigned
    def file_name=(file_name)
      if file_name.nil?
        fail ArgumentError, 'file_name cannot be nil'
      end

      if file_name.to_s.length > 100
        fail ArgumentError, 'invalid value for "file_name", the character length must be smaller than or equal to 100.'
      end

      if file_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "file_name", the character length must be great than or equal to 1.'
      end

      @file_name = file_name
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          shop_id == o.shop_id &&
          pay_type == o.pay_type &&
          status == o.status &&
          process_plan_date == o.process_plan_date &&
          file_name == o.file_name &&
          process_start_date == o.process_start_date &&
          process_end_date == o.process_end_date &&
          total_count == o.total_count &&
          process_success_count == o.process_success_count &&
          process_failure_count == o.process_failure_count &&
          error_code == o.error_code &&
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
      [id, shop_id, pay_type, status, process_plan_date, file_name, process_start_date, process_end_date, total_count, process_success_count, process_failure_count, error_code, delete_flag, created, updated].hash
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
