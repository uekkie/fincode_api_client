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
  class PlatformAccountRetrievingResponse
    # プラットフォーム利用料収入ID 
    attr_accessor :id

    # 精算ID 
    attr_accessor :account_id

    # ショップID 
    attr_accessor :shop_id

    # プラットフォーム利用料収入 入金額\\ \\ プラットフォームショップに入金される（入金が予定されている）プラットフォーム利用料による売上金の額です。\\ 精算金額（`settlement_amount`）から振込手数料（`bank_transfer_fee`）を引いた金額に一致します。 
    attr_accessor :deposit_amount

    # プラットフォーム利用料収入 入金実績日\\ 形式： `yyyy/MM/dd HH:MM` 
    attr_accessor :deposit_date

    # プラットフォーム利用料収入 入金予定日\\ 形式： `yyyy/MM/dd HH:MM` 
    attr_accessor :scheduled_deposit_date

    # プラットフォーム利用料収入 集計期間 開始日\\ 形式： `yyyy/MM/dd HH:MM` 
    attr_accessor :aggregate_term_start

    # プラットフォーム利用料収入 集計期間 終了日\\ 形式： `yyyy/MM/dd HH:MM` 
    attr_accessor :aggregate_term_end

    # （請求が発生した場合）支払期限日\\ 形式： `yyyy/MM/dd HH:MM` 
    attr_accessor :payment_deadline

    # （請求が発生した場合）請求日\\ 形式： `yyyy/MM/dd HH:MM` 
    attr_accessor :payment_completion_date

    attr_accessor :status_code

    # このプラットフォーム利用料収入に含まれる決済の件数 
    attr_accessor :count

    # 精算金額 
    attr_accessor :settlement_amount

    # 振込手数料 
    attr_accessor :bank_transfer_fee

    # このプラットフォーム利用料入金において精算の対象となった取引の総額。 
    attr_accessor :total_amount

    # このプラットフォーム利用料入金において精算の対象となった取引にかかるfincodeへの手数料 
    attr_accessor :fee_amount

    # 決済手数料 課税対象額 
    attr_accessor :taxable_fee_amount

    # 決済手数料 非課税対象額 
    attr_accessor :nontaxable_fee_amount

    # 決済手数料 消費税額 
    attr_accessor :tax_amount

    # このプラットフォーム利用料入金の精算期間中に発生した振替口座のWeb登録手数料\\ ※ 口座振替のみ 
    attr_accessor :web_registration_fee_amount

    # このプラットフォーム利用料入金において精算の対象となった取引にかかるプラットフォーム利用料 
    attr_accessor :platform_fee_amount

    # このプラットフォーム利用料入金において精算の対象となった取引にかかるプラットフォーム利用料の消費税 
    attr_accessor :platform_fee_tax_amount

    # このプラットフォーム利用料入金の精算期間中に発生した、プラットフォームが設定した振替口座のWeb登録手数料 
    attr_accessor :platform_web_registration_fee_amount

    # 作成日\\ 形式：`yyyy/MM/dd HH:mm:ss.SSS` 
    attr_accessor :created

    # 更新日\\ 形式：`yyyy/MM/dd HH:mm:ss.SSS` 
    attr_accessor :updated

    # プラットフォーム利用料収入 入金先口座情報 
    attr_accessor :deposit_destination

    # 検証確認フラグ 
    attr_accessor :verified

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
        :'account_id' => :'account_id',
        :'shop_id' => :'shop_id',
        :'deposit_amount' => :'deposit_amount',
        :'deposit_date' => :'deposit_date',
        :'scheduled_deposit_date' => :'scheduled_deposit_date',
        :'aggregate_term_start' => :'aggregate_term_start',
        :'aggregate_term_end' => :'aggregate_term_end',
        :'payment_deadline' => :'payment_deadline',
        :'payment_completion_date' => :'payment_completion_date',
        :'status_code' => :'status_code',
        :'count' => :'count',
        :'settlement_amount' => :'settlement_amount',
        :'bank_transfer_fee' => :'bank_transfer_fee',
        :'total_amount' => :'total_amount',
        :'fee_amount' => :'fee_amount',
        :'taxable_fee_amount' => :'taxable_fee_amount',
        :'nontaxable_fee_amount' => :'nontaxable_fee_amount',
        :'tax_amount' => :'tax_amount',
        :'web_registration_fee_amount' => :'web_registration_fee_amount',
        :'platform_fee_amount' => :'platform_fee_amount',
        :'platform_fee_tax_amount' => :'platform_fee_tax_amount',
        :'platform_web_registration_fee_amount' => :'platform_web_registration_fee_amount',
        :'created' => :'created',
        :'updated' => :'updated',
        :'deposit_destination' => :'deposit_destination',
        :'verified' => :'verified'
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
        :'account_id' => :'Integer',
        :'shop_id' => :'String',
        :'deposit_amount' => :'Integer',
        :'deposit_date' => :'String',
        :'scheduled_deposit_date' => :'String',
        :'aggregate_term_start' => :'String',
        :'aggregate_term_end' => :'String',
        :'payment_deadline' => :'String',
        :'payment_completion_date' => :'String',
        :'status_code' => :'DepositStatusCode',
        :'count' => :'Integer',
        :'settlement_amount' => :'Integer',
        :'bank_transfer_fee' => :'Integer',
        :'total_amount' => :'Integer',
        :'fee_amount' => :'Integer',
        :'taxable_fee_amount' => :'Integer',
        :'nontaxable_fee_amount' => :'Integer',
        :'tax_amount' => :'Integer',
        :'web_registration_fee_amount' => :'Integer',
        :'platform_fee_amount' => :'Integer',
        :'platform_fee_tax_amount' => :'Integer',
        :'platform_web_registration_fee_amount' => :'Integer',
        :'created' => :'String',
        :'updated' => :'String',
        :'deposit_destination' => :'DepositTargetBankAccountInfo',
        :'verified' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'deposit_amount',
        :'deposit_date',
        :'scheduled_deposit_date',
        :'aggregate_term_start',
        :'aggregate_term_end',
        :'payment_deadline',
        :'payment_completion_date',
        :'count',
        :'settlement_amount',
        :'bank_transfer_fee',
        :'total_amount',
        :'fee_amount',
        :'taxable_fee_amount',
        :'nontaxable_fee_amount',
        :'tax_amount',
        :'web_registration_fee_amount',
        :'platform_fee_amount',
        :'platform_fee_tax_amount',
        :'platform_web_registration_fee_amount',
        :'updated',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'PlatformAccount'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FincodeApiClient::PlatformAccountRetrievingResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FincodeApiClient::PlatformAccountRetrievingResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'shop_id')
        self.shop_id = attributes[:'shop_id']
      end

      if attributes.key?(:'deposit_amount')
        self.deposit_amount = attributes[:'deposit_amount']
      end

      if attributes.key?(:'deposit_date')
        self.deposit_date = attributes[:'deposit_date']
      end

      if attributes.key?(:'scheduled_deposit_date')
        self.scheduled_deposit_date = attributes[:'scheduled_deposit_date']
      end

      if attributes.key?(:'aggregate_term_start')
        self.aggregate_term_start = attributes[:'aggregate_term_start']
      end

      if attributes.key?(:'aggregate_term_end')
        self.aggregate_term_end = attributes[:'aggregate_term_end']
      end

      if attributes.key?(:'payment_deadline')
        self.payment_deadline = attributes[:'payment_deadline']
      end

      if attributes.key?(:'payment_completion_date')
        self.payment_completion_date = attributes[:'payment_completion_date']
      end

      if attributes.key?(:'status_code')
        self.status_code = attributes[:'status_code']
      end

      if attributes.key?(:'count')
        self.count = attributes[:'count']
      end

      if attributes.key?(:'settlement_amount')
        self.settlement_amount = attributes[:'settlement_amount']
      end

      if attributes.key?(:'bank_transfer_fee')
        self.bank_transfer_fee = attributes[:'bank_transfer_fee']
      end

      if attributes.key?(:'total_amount')
        self.total_amount = attributes[:'total_amount']
      end

      if attributes.key?(:'fee_amount')
        self.fee_amount = attributes[:'fee_amount']
      end

      if attributes.key?(:'taxable_fee_amount')
        self.taxable_fee_amount = attributes[:'taxable_fee_amount']
      end

      if attributes.key?(:'nontaxable_fee_amount')
        self.nontaxable_fee_amount = attributes[:'nontaxable_fee_amount']
      end

      if attributes.key?(:'tax_amount')
        self.tax_amount = attributes[:'tax_amount']
      end

      if attributes.key?(:'web_registration_fee_amount')
        self.web_registration_fee_amount = attributes[:'web_registration_fee_amount']
      end

      if attributes.key?(:'platform_fee_amount')
        self.platform_fee_amount = attributes[:'platform_fee_amount']
      end

      if attributes.key?(:'platform_fee_tax_amount')
        self.platform_fee_tax_amount = attributes[:'platform_fee_tax_amount']
      end

      if attributes.key?(:'platform_web_registration_fee_amount')
        self.platform_web_registration_fee_amount = attributes[:'platform_web_registration_fee_amount']
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'updated')
        self.updated = attributes[:'updated']
      end

      if attributes.key?(:'deposit_destination')
        self.deposit_destination = attributes[:'deposit_destination']
      end

      if attributes.key?(:'verified')
        self.verified = attributes[:'verified']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@id.nil? && @id.to_s.length > 20
        invalid_properties.push('invalid value for "id", the character length must be smaller than or equal to 20.')
      end

      if !@id.nil? && @id.to_s.length < 1
        invalid_properties.push('invalid value for "id", the character length must be great than or equal to 1.')
      end

      if !@shop_id.nil? && @shop_id.to_s.length > 13
        invalid_properties.push('invalid value for "shop_id", the character length must be smaller than or equal to 13.')
      end

      if !@shop_id.nil? && @shop_id.to_s.length < 13
        invalid_properties.push('invalid value for "shop_id", the character length must be great than or equal to 13.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@id.nil? && @id.to_s.length > 20
      return false if !@id.nil? && @id.to_s.length < 1
      return false if !@shop_id.nil? && @shop_id.to_s.length > 13
      return false if !@shop_id.nil? && @shop_id.to_s.length < 13
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      if id.to_s.length > 20
        fail ArgumentError, 'invalid value for "id", the character length must be smaller than or equal to 20.'
      end

      if id.to_s.length < 1
        fail ArgumentError, 'invalid value for "id", the character length must be great than or equal to 1.'
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] account_id Value to be assigned
    def account_id=(account_id)
      if account_id.nil?
        fail ArgumentError, 'account_id cannot be nil'
      end

      @account_id = account_id
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          account_id == o.account_id &&
          shop_id == o.shop_id &&
          deposit_amount == o.deposit_amount &&
          deposit_date == o.deposit_date &&
          scheduled_deposit_date == o.scheduled_deposit_date &&
          aggregate_term_start == o.aggregate_term_start &&
          aggregate_term_end == o.aggregate_term_end &&
          payment_deadline == o.payment_deadline &&
          payment_completion_date == o.payment_completion_date &&
          status_code == o.status_code &&
          count == o.count &&
          settlement_amount == o.settlement_amount &&
          bank_transfer_fee == o.bank_transfer_fee &&
          total_amount == o.total_amount &&
          fee_amount == o.fee_amount &&
          taxable_fee_amount == o.taxable_fee_amount &&
          nontaxable_fee_amount == o.nontaxable_fee_amount &&
          tax_amount == o.tax_amount &&
          web_registration_fee_amount == o.web_registration_fee_amount &&
          platform_fee_amount == o.platform_fee_amount &&
          platform_fee_tax_amount == o.platform_fee_tax_amount &&
          platform_web_registration_fee_amount == o.platform_web_registration_fee_amount &&
          created == o.created &&
          updated == o.updated &&
          deposit_destination == o.deposit_destination &&
          verified == o.verified
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, account_id, shop_id, deposit_amount, deposit_date, scheduled_deposit_date, aggregate_term_start, aggregate_term_end, payment_deadline, payment_completion_date, status_code, count, settlement_amount, bank_transfer_fee, total_amount, fee_amount, taxable_fee_amount, nontaxable_fee_amount, tax_amount, web_registration_fee_amount, platform_fee_amount, platform_fee_tax_amount, platform_web_registration_fee_amount, created, updated, deposit_destination, verified].hash
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
