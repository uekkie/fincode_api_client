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
  class PaymentBulkListRetrievingQueryParams
    # 処理予定日の範囲指定（開始日）を指定します。\\ 処理予定日（`process_plan_date`）を対象に範囲検索を行います。この日付以降に処理予定日が設定された一括決済情報を検索します。\\ \\ 形式： `yyyy/MM/dd` 
    attr_accessor :process_plan_date_from

    # 処理予定日の範囲指定（終了日）を指定します。\\ 処理予定日（`process_plan_date`）を対象に範囲検索を行います。この日付以前に処理予定日が設定された一括決済情報を検索します。\\ \\ 形式： `yyyy/MM/dd` 
    attr_accessor :process_plan_date_to

    # 一括決済 ステータス。カンマ区切りにすることで複数指定（OR検索）できます。  - `CHECKING`: チェック中 - `CHECKED`: チェック済み - `RUNNING`: 決済処理中 - `COMPLETED`: 完了 - `ERROR`: エラー 
    attr_accessor :status

    attr_accessor :pay_type

    # 一括決済データファイル名\\ `file_name`に対する部分一致検索を行います。 
    attr_accessor :file_name

    attr_accessor :delete_flag

    # 作成日時の範囲指定（開始日）を指定します。\\ 作成日時（`created`）を対象に範囲検索を行います。この日付以降に登録された一括決済情報を検索します。\\ \\ 形式： `yyyy/MM/dd` 
    attr_accessor :created_from

    # 作成日時の範囲指定（終了日）を指定します。\\ 作成日時（`created`）を対象に範囲検索を行います。この日付以前に登録された一括決済情報を検索します。\\ \\ 形式： `yyyy/MM/dd` 
    attr_accessor :created_to

    # ソートする項目と順序を指定します。\\ 例： `?sort=created␣asc,process_plan_date␣desc`\\ \\ ソート可能な項目  - `process_plan_date`: 一括決済 処理予定日 - `status`: ステータス - `pay_type`: 決済種別 - `file_name`: 一括決済データファイル名 - `delete_flag`: 削除フラグ - `created`: 作成日時 
    attr_accessor :sort

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
        :'process_plan_date_from' => :'process_plan_date_from',
        :'process_plan_date_to' => :'process_plan_date_to',
        :'status' => :'status',
        :'pay_type' => :'pay_type',
        :'file_name' => :'file_name',
        :'delete_flag' => :'delete_flag',
        :'created_from' => :'created_from',
        :'created_to' => :'created_to',
        :'sort' => :'sort'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'process_plan_date_from' => :'String',
        :'process_plan_date_to' => :'String',
        :'status' => :'PaymentBulkStatus',
        :'pay_type' => :'PaymentBulkPayType',
        :'file_name' => :'String',
        :'delete_flag' => :'DeleteFlag',
        :'created_from' => :'String',
        :'created_to' => :'String',
        :'sort' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'process_plan_date_from',
        :'process_plan_date_to',
        :'created_from',
        :'created_to',
        :'sort'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FincodeApiClient::PaymentBulkListRetrievingQueryParams` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FincodeApiClient::PaymentBulkListRetrievingQueryParams`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'process_plan_date_from')
        self.process_plan_date_from = attributes[:'process_plan_date_from']
      end

      if attributes.key?(:'process_plan_date_to')
        self.process_plan_date_to = attributes[:'process_plan_date_to']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'pay_type')
        self.pay_type = attributes[:'pay_type']
      end

      if attributes.key?(:'file_name')
        self.file_name = attributes[:'file_name']
      end

      if attributes.key?(:'delete_flag')
        self.delete_flag = attributes[:'delete_flag']
      end

      if attributes.key?(:'created_from')
        self.created_from = attributes[:'created_from']
      end

      if attributes.key?(:'created_to')
        self.created_to = attributes[:'created_to']
      end

      if attributes.key?(:'sort')
        self.sort = attributes[:'sort']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@file_name.nil? && @file_name.to_s.length > 100
        invalid_properties.push('invalid value for "file_name", the character length must be smaller than or equal to 100.')
      end

      if !@file_name.nil? && @file_name.to_s.length < 1
        invalid_properties.push('invalid value for "file_name", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@file_name.nil? && @file_name.to_s.length > 100
      return false if !@file_name.nil? && @file_name.to_s.length < 1
      true
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          process_plan_date_from == o.process_plan_date_from &&
          process_plan_date_to == o.process_plan_date_to &&
          status == o.status &&
          pay_type == o.pay_type &&
          file_name == o.file_name &&
          delete_flag == o.delete_flag &&
          created_from == o.created_from &&
          created_to == o.created_to &&
          sort == o.sort
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [process_plan_date_from, process_plan_date_to, status, pay_type, file_name, delete_flag, created_from, created_to, sort].hash
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
