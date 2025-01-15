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
  class RetrievePaymentListQueryParameterOneOf2
    # 決済種別\\ 一覧で取得する対象の決済種別を指定します。  - `Card`: カード - `Konbini`: コンビニ決済 - `Paypay`: PayPay - `Applepay`: Apple Pay - `Googlepay`: Google Pay - `Directdebit`: 口座振替 
    attr_accessor :pay_type

    # 加盟店自由項目1 ~ 3（`client_field_*`）を対象とした部分一致検索を行います。 
    attr_accessor :keyword

    # 合計金額（始値）\\ 利用金額と税送料の合計額（`total_amount`）を対象に範囲検索を行います。この値以上の合計金額を持つ決済情報を取得します。 
    attr_accessor :total_amount_min

    # 合計金額（終値）\\ 利用金額と税送料の合計額（`total_amount`）を対象に範囲検索を行います。この値以下の合計金額を持つ決済情報を取得します。 
    attr_accessor :total_amount_max

    # 顧客ID\\ 指定した顧客IDに紐づく決済情報から一覧で取得します。 
    attr_accessor :customer_id

    # 処理日時（始値）\\ 処理日時（`process_date`）を対象に範囲検索を行います。この日付以降に処理された決済情報を取得します。\\ \\ 形式：`yyyy/MM/dd` 
    attr_accessor :process_date_from

    # 処理日時（終値）\\ 処理日時（`process_date`）を対象に範囲検索を行います。この日付以前に処理された決済情報を取得します。\\ \\ 形式：`yyyy/MM/dd` 
    attr_accessor :process_date_to

    # 振替指定日（始値）\\ 振替指定日（`target_date`）を対象に範囲検索を行います。この日付以降に振替指定日が設定されている決済情報を取得します。\\ \\ 形式： `yyyy/MM/dd` 
    attr_accessor :target_date_from

    # 振替指定日（終値）\\ 振替指定日（`target_date`）を対象に範囲検索を行います。この日付以前に振替指定日が設定されている決済情報を取得します。\\ \\ 形式： `yyyy/MM/dd` 
    attr_accessor :target_date_to

    # 引き落とし日（始値）\\ 引き落とし日（`withdrawal_date`）を対象に範囲検索を行います。この日付以降に引き落としが行われた決済情報を取得します。\\ \\ 形式： `yyyy/MM/dd` 
    attr_accessor :withdrawal_date_from

    # 引き落とし日（終値）\\ 引き落とし日（`withdrawal_date`）を対象に範囲検索を行います。この日付以前に引き落としが行われた決済情報を取得します。\\ \\ 形式： `yyyy/MM/dd` 
    attr_accessor :withdrawal_date_to

    # 振替結果コード\\ 指定した振替結果の決済情報を取得します。カンマ区切りにすることで複数指定（OR検索）できます。  - `0`: 振替成功 - `1`: 残高不足（失敗） - `2`: 預金取引無し（失敗） - `3`: 購入者事由（失敗） - `4`: 依頼書未着・不備（失敗） - `8`: ショップ事由（失敗） - `9`: その他（失敗） - `E`: データエラー（失敗） - `N`: 振替結果未着（失敗） 
    attr_accessor :result_code

    # 課金種別\\ 指定した課金種別の決済情報を取得します。カンマ区切りにすることで複数指定（OR検索）できます。  - `onetime`: サブスクリプションでない都度払い - `subscription`: サブスクリプション 
    attr_accessor :pay_pattern

    # サブスクリプションID\\ サブスクリプションIDを指定して、指定したサブスクリプションによって作成された決済情報を取得します。 
    attr_accessor :subscription_id

    # 更新日（始値）\\ \\ 更新日時（`updated`）を対象に範囲検索を行います。この日付以降に更新された決済情報を取得します。\\ 形式：`yyyy/MM/dd` 
    attr_accessor :updated_from

    # 更新日（終値）\\ \\ 更新日時（`updated`）を対象に範囲検索を行います。この日付以前に更新された決済情報を取得します。\\ 形式：`yyyy/MM/dd` 
    attr_accessor :updated_to

    # ソートする項目と順序を指定します。\\ 例： `?sort=updated␣desc,created␣asc`\\ \\ ソート可能な項目  - `status`: ステータス - `process_date`: 処理日時 - `total_amount`: 合計金額 - `target_date`: 振替指定日 - `withdrawal_date`: 引き落とし日 - `created`: 作成日時 - `updated`: 更新日時 
    attr_accessor :sort

    # ページ番号
    attr_accessor :page

    # 1回で取得するデータの最大件数
    attr_accessor :limit

    # 総件数のみ取得するか。\\ `true`を指定した場合、検索結果の総件数（`total_count`）のみ取得します。 
    attr_accessor :count_only

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
        :'pay_type' => :'pay_type',
        :'keyword' => :'keyword',
        :'total_amount_min' => :'total_amount_min',
        :'total_amount_max' => :'total_amount_max',
        :'customer_id' => :'customer_id',
        :'process_date_from' => :'process_date_from',
        :'process_date_to' => :'process_date_to',
        :'target_date_from' => :'target_date_from',
        :'target_date_to' => :'target_date_to',
        :'withdrawal_date_from' => :'withdrawal_date_from',
        :'withdrawal_date_to' => :'withdrawal_date_to',
        :'result_code' => :'result_code',
        :'pay_pattern' => :'pay_pattern',
        :'subscription_id' => :'subscription_id',
        :'updated_from' => :'updated_from',
        :'updated_to' => :'updated_to',
        :'sort' => :'sort',
        :'page' => :'page',
        :'limit' => :'limit',
        :'count_only' => :'count_only'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'pay_type' => :'PayType',
        :'keyword' => :'String',
        :'total_amount_min' => :'Integer',
        :'total_amount_max' => :'Integer',
        :'customer_id' => :'String',
        :'process_date_from' => :'String',
        :'process_date_to' => :'String',
        :'target_date_from' => :'String',
        :'target_date_to' => :'String',
        :'withdrawal_date_from' => :'String',
        :'withdrawal_date_to' => :'String',
        :'result_code' => :'DirectDebitResultCode',
        :'pay_pattern' => :'String',
        :'subscription_id' => :'String',
        :'updated_from' => :'String',
        :'updated_to' => :'String',
        :'sort' => :'String',
        :'page' => :'Integer',
        :'limit' => :'Integer',
        :'count_only' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'keyword',
        :'target_date_from',
        :'target_date_to',
        :'withdrawal_date_from',
        :'withdrawal_date_to',
        :'sort',
        :'page',
        :'limit',
        :'count_only'
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'PaginationQueryParams',
      :'PaymentListRetrievingDirectDebitQueryParams',
      :'PaymentListRetrievingQueryParams'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FincodeApiClient::RetrievePaymentListQueryParameterOneOf2` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FincodeApiClient::RetrievePaymentListQueryParameterOneOf2`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'pay_type')
        self.pay_type = attributes[:'pay_type']
      else
        self.pay_type = nil
      end

      if attributes.key?(:'keyword')
        self.keyword = attributes[:'keyword']
      end

      if attributes.key?(:'total_amount_min')
        self.total_amount_min = attributes[:'total_amount_min']
      end

      if attributes.key?(:'total_amount_max')
        self.total_amount_max = attributes[:'total_amount_max']
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'process_date_from')
        self.process_date_from = attributes[:'process_date_from']
      end

      if attributes.key?(:'process_date_to')
        self.process_date_to = attributes[:'process_date_to']
      end

      if attributes.key?(:'target_date_from')
        self.target_date_from = attributes[:'target_date_from']
      end

      if attributes.key?(:'target_date_to')
        self.target_date_to = attributes[:'target_date_to']
      end

      if attributes.key?(:'withdrawal_date_from')
        self.withdrawal_date_from = attributes[:'withdrawal_date_from']
      end

      if attributes.key?(:'withdrawal_date_to')
        self.withdrawal_date_to = attributes[:'withdrawal_date_to']
      end

      if attributes.key?(:'result_code')
        self.result_code = attributes[:'result_code']
      end

      if attributes.key?(:'pay_pattern')
        self.pay_pattern = attributes[:'pay_pattern']
      end

      if attributes.key?(:'subscription_id')
        self.subscription_id = attributes[:'subscription_id']
      end

      if attributes.key?(:'updated_from')
        self.updated_from = attributes[:'updated_from']
      end

      if attributes.key?(:'updated_to')
        self.updated_to = attributes[:'updated_to']
      end

      if attributes.key?(:'sort')
        self.sort = attributes[:'sort']
      end

      if attributes.key?(:'page')
        self.page = attributes[:'page']
      end

      if attributes.key?(:'limit')
        self.limit = attributes[:'limit']
      end

      if attributes.key?(:'count_only')
        self.count_only = attributes[:'count_only']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @pay_type.nil?
        invalid_properties.push('invalid value for "pay_type", pay_type cannot be nil.')
      end

      if !@keyword.nil? && @keyword.to_s.length > 100
        invalid_properties.push('invalid value for "keyword", the character length must be smaller than or equal to 100.')
      end

      if !@keyword.nil? && @keyword.to_s.length < 1
        invalid_properties.push('invalid value for "keyword", the character length must be great than or equal to 1.')
      end

      if !@customer_id.nil? && @customer_id.to_s.length > 60
        invalid_properties.push('invalid value for "customer_id", the character length must be smaller than or equal to 60.')
      end

      if !@customer_id.nil? && @customer_id.to_s.length < 1
        invalid_properties.push('invalid value for "customer_id", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @pay_type.nil?
      return false if !@keyword.nil? && @keyword.to_s.length > 100
      return false if !@keyword.nil? && @keyword.to_s.length < 1
      return false if !@customer_id.nil? && @customer_id.to_s.length > 60
      return false if !@customer_id.nil? && @customer_id.to_s.length < 1
      pay_pattern_validator = EnumAttributeValidator.new('String', ["onetime", "subscription"])
      return false unless pay_pattern_validator.valid?(@pay_pattern)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] keyword Value to be assigned
    def keyword=(keyword)
      if !keyword.nil? && keyword.to_s.length > 100
        fail ArgumentError, 'invalid value for "keyword", the character length must be smaller than or equal to 100.'
      end

      if !keyword.nil? && keyword.to_s.length < 1
        fail ArgumentError, 'invalid value for "keyword", the character length must be great than or equal to 1.'
      end

      @keyword = keyword
    end

    # Custom attribute writer method with validation
    # @param [Object] total_amount_min Value to be assigned
    def total_amount_min=(total_amount_min)
      if total_amount_min.nil?
        fail ArgumentError, 'total_amount_min cannot be nil'
      end

      @total_amount_min = total_amount_min
    end

    # Custom attribute writer method with validation
    # @param [Object] total_amount_max Value to be assigned
    def total_amount_max=(total_amount_max)
      if total_amount_max.nil?
        fail ArgumentError, 'total_amount_max cannot be nil'
      end

      @total_amount_max = total_amount_max
    end

    # Custom attribute writer method with validation
    # @param [Object] customer_id Value to be assigned
    def customer_id=(customer_id)
      if customer_id.nil?
        fail ArgumentError, 'customer_id cannot be nil'
      end

      if customer_id.to_s.length > 60
        fail ArgumentError, 'invalid value for "customer_id", the character length must be smaller than or equal to 60.'
      end

      if customer_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "customer_id", the character length must be great than or equal to 1.'
      end

      @customer_id = customer_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pay_pattern Object to be assigned
    def pay_pattern=(pay_pattern)
      validator = EnumAttributeValidator.new('String', ["onetime", "subscription"])
      unless validator.valid?(pay_pattern)
        fail ArgumentError, "invalid value for \"pay_pattern\", must be one of #{validator.allowable_values}."
      end
      @pay_pattern = pay_pattern
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          pay_type == o.pay_type &&
          keyword == o.keyword &&
          total_amount_min == o.total_amount_min &&
          total_amount_max == o.total_amount_max &&
          customer_id == o.customer_id &&
          process_date_from == o.process_date_from &&
          process_date_to == o.process_date_to &&
          target_date_from == o.target_date_from &&
          target_date_to == o.target_date_to &&
          withdrawal_date_from == o.withdrawal_date_from &&
          withdrawal_date_to == o.withdrawal_date_to &&
          result_code == o.result_code &&
          pay_pattern == o.pay_pattern &&
          subscription_id == o.subscription_id &&
          updated_from == o.updated_from &&
          updated_to == o.updated_to &&
          sort == o.sort &&
          page == o.page &&
          limit == o.limit &&
          count_only == o.count_only
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [pay_type, keyword, total_amount_min, total_amount_max, customer_id, process_date_from, process_date_to, target_date_from, target_date_to, withdrawal_date_from, withdrawal_date_to, result_code, pay_pattern, subscription_id, updated_from, updated_to, sort, page, limit, count_only].hash
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
