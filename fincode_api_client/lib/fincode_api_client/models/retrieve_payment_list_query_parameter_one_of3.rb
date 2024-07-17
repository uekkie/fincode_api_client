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
  class RetrievePaymentListQueryParameterOneOf3
    # 決済種別\\ 一覧で取得する対象の決済種別を指定します。  - `Card`: カード - `Konbini`: コンビニ決済 - `Paypay`: PayPay - `Applepay`: Apple Pay - `Directdebit`: 口座振替 
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

    # 決済ステータス\\ 指定したステータスの決済情報を取得します。カンマ区切りにすることで複数指定（OR検索）できます。  - `UNPROCESSED`: 未処理 - `AWAITING_CUSTOMER_PAYMENT`: 購入者の振込待ち - `CAPTURED`: 売上確定 - `CANCELED`: キャンセル - `EXPIRED`: 決済の期限切れ 
    attr_accessor :status

    # 振込依頼金額 合計（始値）\\ 振込依頼金額 合計（`billing_total_amount`）を対象に範囲検索を行います。この値以上の合計 振込依頼金額を持つ決済情報を取得します。 
    attr_accessor :billing_total_amount_min

    # 振込依頼金額 合計（終値）\\ 振込依頼金額 合計（`billing_total_amount`）を対象に範囲検索を行います。この値以下の合計 振込依頼金額を持つ決済情報を取得します。 
    attr_accessor :billing_total_amount_max

    # 支払い期限（始値）\\ 支払い期限（`payment_term`）を対象に範囲検索を行います。この日付以降に支払い期限が到来する決済情報を取得します。\\ 形式：`yyyy/MM/dd` 
    attr_accessor :payment_term_from

    # 支払い期限（終値）\\ 支払い期限（`payment_term`）を対象に範囲検索を行います。この日付以前に支払い期限が到来する決済情報を取得します。\\ 形式：`yyyy/MM/dd` 
    attr_accessor :payment_term_to

    # 取引日（始値）\\ \\ 取引日（`transaction_date`）を対象に範囲検索を行います。この日付以降に振込が行われた決済情報を取得します。\\ 形式：`yyyy/MM/dd` 
    attr_accessor :transaction_date_from

    # 取引日（終値）\\ \\ 取引日（`transaction_date`）を対象に範囲検索を行います。この日付以前に振込が行われた決済情報を取得します。\\ 形式：`yyyy/MM/dd` 
    attr_accessor :transaction_date_to

    # 更新日（始値）\\ \\ 更新日時（`updated`）を対象に範囲検索を行います。この日付以降に更新された決済情報を取得します。\\ 形式：`yyyy/MM/dd` 
    attr_accessor :updated_from

    # 更新日（終値）\\ \\ 更新日時（`updated`）を対象に範囲検索を行います。この日付以前に更新された決済情報を取得します。\\ 形式：`yyyy/MM/dd` 
    attr_accessor :updated_to

    # 多重支払フラグ\\ 同一のバーチャル口座に対して複数回支払いが行われた決済を検索する場合`1`を指定します。 
    attr_accessor :overpayment_flag

    # キャンセル後支払フラグ\\ キャンセルされた決済に対して支払いが行われた決済を検索する場合`1`を指定します。 
    attr_accessor :cancel_overpayment_flag

    # 期限切れ後支払フラグ\\ 期限切れになった決済に対して支払いが行われた決済を検索する場合`1`を指定します。 
    attr_accessor :expire_overpayment_flag

    # 利用金額パターン  - `null`: 全件取得 - `1`: 振込依頼金額 合計 = 利用金額 合計 である決済を取得 - `2`: 振込依頼金額 合計 != 利用金額 合計 である決済を取得 - `3`: 振込依頼金額 合計 < 利用金額 合計 である決済を取得 - `4`: 振込依頼金額 合計 <= 利用金額 合計 である決済を取得 - `5`: 振込依頼金額 合計 > 利用金額 合計 である決済を取得 - `6`: 振込依頼金額 合計 >= 利用金額 合計 である決済を取得 
    attr_accessor :amount_pattern

    # ソートする項目と順序を指定します。\\ 例： `?sort=updated␣desc,created␣asc`\\ \\ ソート可能な項目  - `status`: ステータス - `process_data`: 処理日時 - `total_amount`: 合計金額 - `payment_term`: 支払い期限 - `payment_date`: 支払い日時 - `created`: 作成日時 - `updated`: 更新日時 
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
        :'status' => :'status',
        :'billing_total_amount_min' => :'billing_total_amount_min',
        :'billing_total_amount_max' => :'billing_total_amount_max',
        :'payment_term_from' => :'payment_term_from',
        :'payment_term_to' => :'payment_term_to',
        :'transaction_date_from' => :'transaction_date_from',
        :'transaction_date_to' => :'transaction_date_to',
        :'updated_from' => :'updated_from',
        :'updated_to' => :'updated_to',
        :'overpayment_flag' => :'overpayment_flag',
        :'cancel_overpayment_flag' => :'cancel_overpayment_flag',
        :'expire_overpayment_flag' => :'expire_overpayment_flag',
        :'amount_pattern' => :'amount_pattern',
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
        :'status' => :'PaymentStatus',
        :'billing_total_amount_min' => :'String',
        :'billing_total_amount_max' => :'String',
        :'payment_term_from' => :'String',
        :'payment_term_to' => :'String',
        :'transaction_date_from' => :'String',
        :'transaction_date_to' => :'String',
        :'updated_from' => :'String',
        :'updated_to' => :'String',
        :'overpayment_flag' => :'String',
        :'cancel_overpayment_flag' => :'String',
        :'expire_overpayment_flag' => :'String',
        :'amount_pattern' => :'String',
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
      :'PaymentListRetrievingQueryParams',
      :'PaymentListRetrievingVirtualAccountQueryParams'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FincodeApiClient::RetrievePaymentListQueryParameterOneOf3` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FincodeApiClient::RetrievePaymentListQueryParameterOneOf3`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'billing_total_amount_min')
        self.billing_total_amount_min = attributes[:'billing_total_amount_min']
      end

      if attributes.key?(:'billing_total_amount_max')
        self.billing_total_amount_max = attributes[:'billing_total_amount_max']
      end

      if attributes.key?(:'payment_term_from')
        self.payment_term_from = attributes[:'payment_term_from']
      end

      if attributes.key?(:'payment_term_to')
        self.payment_term_to = attributes[:'payment_term_to']
      end

      if attributes.key?(:'transaction_date_from')
        self.transaction_date_from = attributes[:'transaction_date_from']
      end

      if attributes.key?(:'transaction_date_to')
        self.transaction_date_to = attributes[:'transaction_date_to']
      end

      if attributes.key?(:'updated_from')
        self.updated_from = attributes[:'updated_from']
      end

      if attributes.key?(:'updated_to')
        self.updated_to = attributes[:'updated_to']
      end

      if attributes.key?(:'overpayment_flag')
        self.overpayment_flag = attributes[:'overpayment_flag']
      end

      if attributes.key?(:'cancel_overpayment_flag')
        self.cancel_overpayment_flag = attributes[:'cancel_overpayment_flag']
      end

      if attributes.key?(:'expire_overpayment_flag')
        self.expire_overpayment_flag = attributes[:'expire_overpayment_flag']
      end

      if attributes.key?(:'amount_pattern')
        self.amount_pattern = attributes[:'amount_pattern']
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

      if !@billing_total_amount_min.nil? && @billing_total_amount_min.to_s.length > 10
        invalid_properties.push('invalid value for "billing_total_amount_min", the character length must be smaller than or equal to 10.')
      end

      if !@billing_total_amount_min.nil? && @billing_total_amount_min.to_s.length < 1
        invalid_properties.push('invalid value for "billing_total_amount_min", the character length must be great than or equal to 1.')
      end

      if !@billing_total_amount_max.nil? && @billing_total_amount_max.to_s.length > 10
        invalid_properties.push('invalid value for "billing_total_amount_max", the character length must be smaller than or equal to 10.')
      end

      if !@billing_total_amount_max.nil? && @billing_total_amount_max.to_s.length < 1
        invalid_properties.push('invalid value for "billing_total_amount_max", the character length must be great than or equal to 1.')
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
      return false if !@billing_total_amount_min.nil? && @billing_total_amount_min.to_s.length > 10
      return false if !@billing_total_amount_min.nil? && @billing_total_amount_min.to_s.length < 1
      return false if !@billing_total_amount_max.nil? && @billing_total_amount_max.to_s.length > 10
      return false if !@billing_total_amount_max.nil? && @billing_total_amount_max.to_s.length < 1
      overpayment_flag_validator = EnumAttributeValidator.new('String', ["0", "1"])
      return false unless overpayment_flag_validator.valid?(@overpayment_flag)
      cancel_overpayment_flag_validator = EnumAttributeValidator.new('String', ["0", "1"])
      return false unless cancel_overpayment_flag_validator.valid?(@cancel_overpayment_flag)
      expire_overpayment_flag_validator = EnumAttributeValidator.new('String', ["0", "1"])
      return false unless expire_overpayment_flag_validator.valid?(@expire_overpayment_flag)
      amount_pattern_validator = EnumAttributeValidator.new('String', ["null", "1", "2", "3", "4", "5", "6"])
      return false unless amount_pattern_validator.valid?(@amount_pattern)
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

    # Custom attribute writer method with validation
    # @param [Object] billing_total_amount_min Value to be assigned
    def billing_total_amount_min=(billing_total_amount_min)
      if billing_total_amount_min.nil?
        fail ArgumentError, 'billing_total_amount_min cannot be nil'
      end

      if billing_total_amount_min.to_s.length > 10
        fail ArgumentError, 'invalid value for "billing_total_amount_min", the character length must be smaller than or equal to 10.'
      end

      if billing_total_amount_min.to_s.length < 1
        fail ArgumentError, 'invalid value for "billing_total_amount_min", the character length must be great than or equal to 1.'
      end

      @billing_total_amount_min = billing_total_amount_min
    end

    # Custom attribute writer method with validation
    # @param [Object] billing_total_amount_max Value to be assigned
    def billing_total_amount_max=(billing_total_amount_max)
      if billing_total_amount_max.nil?
        fail ArgumentError, 'billing_total_amount_max cannot be nil'
      end

      if billing_total_amount_max.to_s.length > 10
        fail ArgumentError, 'invalid value for "billing_total_amount_max", the character length must be smaller than or equal to 10.'
      end

      if billing_total_amount_max.to_s.length < 1
        fail ArgumentError, 'invalid value for "billing_total_amount_max", the character length must be great than or equal to 1.'
      end

      @billing_total_amount_max = billing_total_amount_max
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] overpayment_flag Object to be assigned
    def overpayment_flag=(overpayment_flag)
      validator = EnumAttributeValidator.new('String', ["0", "1"])
      unless validator.valid?(overpayment_flag)
        fail ArgumentError, "invalid value for \"overpayment_flag\", must be one of #{validator.allowable_values}."
      end
      @overpayment_flag = overpayment_flag
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cancel_overpayment_flag Object to be assigned
    def cancel_overpayment_flag=(cancel_overpayment_flag)
      validator = EnumAttributeValidator.new('String', ["0", "1"])
      unless validator.valid?(cancel_overpayment_flag)
        fail ArgumentError, "invalid value for \"cancel_overpayment_flag\", must be one of #{validator.allowable_values}."
      end
      @cancel_overpayment_flag = cancel_overpayment_flag
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expire_overpayment_flag Object to be assigned
    def expire_overpayment_flag=(expire_overpayment_flag)
      validator = EnumAttributeValidator.new('String', ["0", "1"])
      unless validator.valid?(expire_overpayment_flag)
        fail ArgumentError, "invalid value for \"expire_overpayment_flag\", must be one of #{validator.allowable_values}."
      end
      @expire_overpayment_flag = expire_overpayment_flag
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_pattern Object to be assigned
    def amount_pattern=(amount_pattern)
      validator = EnumAttributeValidator.new('String', ["null", "1", "2", "3", "4", "5", "6"])
      unless validator.valid?(amount_pattern)
        fail ArgumentError, "invalid value for \"amount_pattern\", must be one of #{validator.allowable_values}."
      end
      @amount_pattern = amount_pattern
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
          status == o.status &&
          billing_total_amount_min == o.billing_total_amount_min &&
          billing_total_amount_max == o.billing_total_amount_max &&
          payment_term_from == o.payment_term_from &&
          payment_term_to == o.payment_term_to &&
          transaction_date_from == o.transaction_date_from &&
          transaction_date_to == o.transaction_date_to &&
          updated_from == o.updated_from &&
          updated_to == o.updated_to &&
          overpayment_flag == o.overpayment_flag &&
          cancel_overpayment_flag == o.cancel_overpayment_flag &&
          expire_overpayment_flag == o.expire_overpayment_flag &&
          amount_pattern == o.amount_pattern &&
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
      [pay_type, keyword, total_amount_min, total_amount_max, customer_id, process_date_from, process_date_to, status, billing_total_amount_min, billing_total_amount_max, payment_term_from, payment_term_to, transaction_date_from, transaction_date_to, updated_from, updated_to, overpayment_flag, cancel_overpayment_flag, expire_overpayment_flag, amount_pattern, sort, page, limit, count_only].hash
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
