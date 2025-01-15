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
  class RetrievePlanListQueryParameter
    # ページ番号
    attr_accessor :page

    # 1回で取得するデータの最大件数
    attr_accessor :limit

    # 総件数のみ取得するか。\\ `true`を指定した場合、検索結果の総件数（`total_count`）のみ取得します。 
    attr_accessor :count_only

    # 合計金額（始値）\\ 利用金額と税送料の合計額（`total_amount`）を対象に範囲検索を行います。この値以上の合計金額を持つプラン情報を取得します。 
    attr_accessor :total_amount_min

    # 合計金額（終値）\\ 利用金額と税送料の合計額（`total_amount`）を対象に範囲検索を行います。この値以下の合計金額を持つプラン情報を取得します。 
    attr_accessor :total_amount_max

    # 課金間隔  - `month`: 月 - `year`: 年 
    attr_accessor :interval_pattern

    # 更新日時（始値）\\ 更新日時（`updated`）を対象に範囲検索を行います。この日付以降に更新された決済情報を取得します。\\ \\ 形式：`yyyy/MM/dd` 
    attr_accessor :update_date_from

    # 更新日時（終値）\\ 更新日時（`updated`）を対象に範囲検索を行います。この日付以前に更新された決済情報を取得します。\\ \\ 形式：`yyyy/MM/dd` 
    attr_accessor :update_date_to

    # プラン名\\ `plan_name`に対する部分一致検索を行います。 
    attr_accessor :plan_name

    # 削除済みフラグ 
    attr_accessor :delete_flag

    # ソートする項目と順序を指定します。\\ 例： `?sort=updated␣desc,created␣asc`\\ \\ ソート可能な項目  - `total_amount`: 合計金額 - `created`: 作成日時 - `updated`: 更新日時 
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
        :'page' => :'page',
        :'limit' => :'limit',
        :'count_only' => :'count_only',
        :'total_amount_min' => :'total_amount_min',
        :'total_amount_max' => :'total_amount_max',
        :'interval_pattern' => :'interval_pattern',
        :'update_date_from' => :'update_date_from',
        :'update_date_to' => :'update_date_to',
        :'plan_name' => :'plan_name',
        :'delete_flag' => :'delete_flag',
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
        :'page' => :'Integer',
        :'limit' => :'Integer',
        :'count_only' => :'Boolean',
        :'total_amount_min' => :'Integer',
        :'total_amount_max' => :'Integer',
        :'interval_pattern' => :'String',
        :'update_date_from' => :'String',
        :'update_date_to' => :'String',
        :'plan_name' => :'String',
        :'delete_flag' => :'String',
        :'sort' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'page',
        :'limit',
        :'count_only',
        :'plan_name',
        :'delete_flag',
        :'sort'
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'PaginationQueryParams',
      :'PlanListRetrievingQueryParams'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FincodeApiClient::RetrievePlanListQueryParameter` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FincodeApiClient::RetrievePlanListQueryParameter`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'page')
        self.page = attributes[:'page']
      end

      if attributes.key?(:'limit')
        self.limit = attributes[:'limit']
      end

      if attributes.key?(:'count_only')
        self.count_only = attributes[:'count_only']
      end

      if attributes.key?(:'total_amount_min')
        self.total_amount_min = attributes[:'total_amount_min']
      end

      if attributes.key?(:'total_amount_max')
        self.total_amount_max = attributes[:'total_amount_max']
      end

      if attributes.key?(:'interval_pattern')
        self.interval_pattern = attributes[:'interval_pattern']
      end

      if attributes.key?(:'update_date_from')
        self.update_date_from = attributes[:'update_date_from']
      end

      if attributes.key?(:'update_date_to')
        self.update_date_to = attributes[:'update_date_to']
      end

      if attributes.key?(:'plan_name')
        self.plan_name = attributes[:'plan_name']
      end

      if attributes.key?(:'delete_flag')
        self.delete_flag = attributes[:'delete_flag']
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
      if !@plan_name.nil? && @plan_name.to_s.length > 25
        invalid_properties.push('invalid value for "plan_name", the character length must be smaller than or equal to 25.')
      end

      if !@plan_name.nil? && @plan_name.to_s.length < 1
        invalid_properties.push('invalid value for "plan_name", the character length must be great than or equal to 1.')
      end

      if !@delete_flag.nil? && @delete_flag.to_s.length > 1
        invalid_properties.push('invalid value for "delete_flag", the character length must be smaller than or equal to 1.')
      end

      if !@delete_flag.nil? && @delete_flag.to_s.length < 1
        invalid_properties.push('invalid value for "delete_flag", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      interval_pattern_validator = EnumAttributeValidator.new('String', ["month", "year"])
      return false unless interval_pattern_validator.valid?(@interval_pattern)
      return false if !@plan_name.nil? && @plan_name.to_s.length > 25
      return false if !@plan_name.nil? && @plan_name.to_s.length < 1
      delete_flag_validator = EnumAttributeValidator.new('String', ["0", "1"])
      return false unless delete_flag_validator.valid?(@delete_flag)
      return false if !@delete_flag.nil? && @delete_flag.to_s.length > 1
      return false if !@delete_flag.nil? && @delete_flag.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] page Value to be assigned
    def page=(page)
      @page = page
    end

    # Custom attribute writer method with validation
    # @param [Object] limit Value to be assigned
    def limit=(limit)
      @limit = limit
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

    # Custom attribute writer method with validation
    # @param [Object] plan_name Value to be assigned
    def plan_name=(plan_name)
      if !plan_name.nil? && plan_name.to_s.length > 25
        fail ArgumentError, 'invalid value for "plan_name", the character length must be smaller than or equal to 25.'
      end

      if !plan_name.nil? && plan_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "plan_name", the character length must be great than or equal to 1.'
      end

      @plan_name = plan_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] delete_flag Object to be assigned
    def delete_flag=(delete_flag)
      validator = EnumAttributeValidator.new('String', ["0", "1"])
      unless validator.valid?(delete_flag)
        fail ArgumentError, "invalid value for \"delete_flag\", must be one of #{validator.allowable_values}."
      end
      @delete_flag = delete_flag
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          page == o.page &&
          limit == o.limit &&
          count_only == o.count_only &&
          total_amount_min == o.total_amount_min &&
          total_amount_max == o.total_amount_max &&
          interval_pattern == o.interval_pattern &&
          update_date_from == o.update_date_from &&
          update_date_to == o.update_date_to &&
          plan_name == o.plan_name &&
          delete_flag == o.delete_flag &&
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
      [page, limit, count_only, total_amount_min, total_amount_max, interval_pattern, update_date_from, update_date_to, plan_name, delete_flag, sort].hash
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
