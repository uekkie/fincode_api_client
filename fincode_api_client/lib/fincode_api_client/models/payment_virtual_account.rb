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
  class PaymentVirtualAccount
    # 決済種別\\ この決済で利用する決済手段です。  - `Virtualaccount`: 銀行振込 
    attr_accessor :pay_type

    # 決済ステータス  - `UNPROCESSED`: 未処理<br /><span class=\"smallText\">請求はまだ実行されていません。</span> - `AWAITING_CUSTOMER_PAYMENT`: 購入者の支払い待ち<br /><span class=\"smallText\">購入者によるバーチャル口座への振込を待っている状態。</span> - `CAPTURED`: 売上確定<br /><span class=\"smallText\">振込が完了し、売上が確定しています。</span> - `CANCELED`: キャンセル<br /><span class=\"smallText\">この決済はキャンセルされました。</span> - `EXPIRED`: 決済の期限切れ<br /><span class=\"smallText\">この決済は期限が切れています。</span> 
    attr_accessor :status

    # 振込依頼金額 
    attr_accessor :billing_amount

    # 振込依頼金額（税送料） 
    attr_accessor :billing_tax

    # 振込依頼金額 合計\\ 振込依頼金額と振込依頼金額（税送料）の合計金額です。 
    attr_accessor :billing_total_amount

    # 支払期限日数\\ \\ `1`～`90`日の範囲でバーチャル口座で振り込み可能な期限日数を指定します。\\ 決済実行の翌日を起算日とし、期限日の23:59:59.999までが支払期限となります。 
    attr_accessor :payment_term_day

    # 支払期限\\ 形式： `yyyy/MM/dd HH:mm:ss.SSS` 
    attr_accessor :payment_term

    # 決済手段ID
    attr_accessor :payment_method_id

    # 支店コード\\ \\ 発行されたバーチャル口座の支店コードです。 
    attr_accessor :va_branch_code

    # 支店名\\ \\ 発行されたバーチャル口座の支店名です。 
    attr_accessor :va_branch_name

    # 口座番号\\ \\ 発行されたバーチャル口座の口座番号です。 
    attr_accessor :va_account_number

    # 口座名義\\ \\ 発行されたバーチャル口座の口座名義です。 
    attr_accessor :va_account_name

    # バーチャル口座ID\\ \\ 発行されたバーチャル口座のIDです。 
    attr_accessor :virtual_account_id

    # バーチャル口座 割当日時\\ 形式： `yyyy/MM/dd HH:mm:ss.SSS` 
    attr_accessor :account_assignment_date

    # 取引日\\ \\ 形式： `yyyy/MM/dd` 
    attr_accessor :transaction_date

    # 起算日\\ \\ 銀行で入金が処理された営業日\\ 形式： `yyyy/MM/dd` 
    attr_accessor :value_date

    # 振込依頼人 氏名\\ \\ 振込依頼人（購入者）の氏名です。 
    attr_accessor :remitter_account_name

    # 振込依頼人 銀行名\\ \\ 振込依頼人（購入者）の銀行名です。 
    attr_accessor :remitter_bank_name

    # 振込依頼人 支店名\\ \\ 振込依頼人（購入者）の支店名です。 
    attr_accessor :remitter_branch_name

    # 多重支払フラグ\\ この決済に対して複数回支払いが行われた場合`1`になります。  - `0`: 0回、または1回の支払いが行われた - `1`: 2回以上、同一のバーチャル口座に対して支払いが行われた 
    attr_accessor :overpayment_flag

    # キャンセル後支払フラグ\\ この決済をキャンセルした後に購入者がバーチャル口座に対して支払いを行った場合`1`になります。  - `0`: キャンセル後支払は行われていない - `1`: キャンセル後支払が行われた 
    attr_accessor :cancel_overpayment_flag

    # 期限切れ後支払フラグ\\ この決済の支払期限が過ぎた後に購入者がバーチャル口座に対して支払いを行った場合`1`になります。  - `0`: 期限切れ後支払は行われていない - `1`: 期限切れ後支払が行われた 
    attr_accessor :expire_overpayment_flag

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
        :'status' => :'status',
        :'billing_amount' => :'billing_amount',
        :'billing_tax' => :'billing_tax',
        :'billing_total_amount' => :'billing_total_amount',
        :'payment_term_day' => :'payment_term_day',
        :'payment_term' => :'payment_term',
        :'payment_method_id' => :'payment_method_id',
        :'va_branch_code' => :'va_branch_code',
        :'va_branch_name' => :'va_branch_name',
        :'va_account_number' => :'va_account_number',
        :'va_account_name' => :'va_account_name',
        :'virtual_account_id' => :'virtual_account_id',
        :'account_assignment_date' => :'account_assignment_date',
        :'transaction_date' => :'transaction_date',
        :'value_date' => :'value_date',
        :'remitter_account_name' => :'remitter_account_name',
        :'remitter_bank_name' => :'remitter_bank_name',
        :'remitter_branch_name' => :'remitter_branch_name',
        :'overpayment_flag' => :'overpayment_flag',
        :'cancel_overpayment_flag' => :'cancel_overpayment_flag',
        :'expire_overpayment_flag' => :'expire_overpayment_flag'
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
        :'status' => :'PaymentStatus',
        :'billing_amount' => :'Integer',
        :'billing_tax' => :'Integer',
        :'billing_total_amount' => :'Integer',
        :'payment_term_day' => :'Integer',
        :'payment_term' => :'String',
        :'payment_method_id' => :'String',
        :'va_branch_code' => :'String',
        :'va_branch_name' => :'String',
        :'va_account_number' => :'String',
        :'va_account_name' => :'String',
        :'virtual_account_id' => :'String',
        :'account_assignment_date' => :'String',
        :'transaction_date' => :'String',
        :'value_date' => :'String',
        :'remitter_account_name' => :'String',
        :'remitter_bank_name' => :'String',
        :'remitter_branch_name' => :'String',
        :'overpayment_flag' => :'String',
        :'cancel_overpayment_flag' => :'String',
        :'expire_overpayment_flag' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'billing_tax',
        :'payment_term',
        :'va_branch_code',
        :'va_branch_name',
        :'va_account_number',
        :'va_account_name',
        :'virtual_account_id',
        :'account_assignment_date',
        :'transaction_date',
        :'value_date',
        :'remitter_account_name',
        :'remitter_bank_name',
        :'remitter_branch_name',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FincodeApiClient::PaymentVirtualAccount` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FincodeApiClient::PaymentVirtualAccount`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'pay_type')
        self.pay_type = attributes[:'pay_type']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'billing_amount')
        self.billing_amount = attributes[:'billing_amount']
      end

      if attributes.key?(:'billing_tax')
        self.billing_tax = attributes[:'billing_tax']
      end

      if attributes.key?(:'billing_total_amount')
        self.billing_total_amount = attributes[:'billing_total_amount']
      end

      if attributes.key?(:'payment_term_day')
        self.payment_term_day = attributes[:'payment_term_day']
      end

      if attributes.key?(:'payment_term')
        self.payment_term = attributes[:'payment_term']
      end

      if attributes.key?(:'payment_method_id')
        self.payment_method_id = attributes[:'payment_method_id']
      end

      if attributes.key?(:'va_branch_code')
        self.va_branch_code = attributes[:'va_branch_code']
      end

      if attributes.key?(:'va_branch_name')
        self.va_branch_name = attributes[:'va_branch_name']
      end

      if attributes.key?(:'va_account_number')
        self.va_account_number = attributes[:'va_account_number']
      end

      if attributes.key?(:'va_account_name')
        self.va_account_name = attributes[:'va_account_name']
      end

      if attributes.key?(:'virtual_account_id')
        self.virtual_account_id = attributes[:'virtual_account_id']
      end

      if attributes.key?(:'account_assignment_date')
        self.account_assignment_date = attributes[:'account_assignment_date']
      end

      if attributes.key?(:'transaction_date')
        self.transaction_date = attributes[:'transaction_date']
      end

      if attributes.key?(:'value_date')
        self.value_date = attributes[:'value_date']
      end

      if attributes.key?(:'remitter_account_name')
        self.remitter_account_name = attributes[:'remitter_account_name']
      end

      if attributes.key?(:'remitter_bank_name')
        self.remitter_bank_name = attributes[:'remitter_bank_name']
      end

      if attributes.key?(:'remitter_branch_name')
        self.remitter_branch_name = attributes[:'remitter_branch_name']
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
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@payment_method_id.nil? && @payment_method_id.to_s.length > 25
        invalid_properties.push('invalid value for "payment_method_id", the character length must be smaller than or equal to 25.')
      end

      if !@payment_method_id.nil? && @payment_method_id.to_s.length < 25
        invalid_properties.push('invalid value for "payment_method_id", the character length must be great than or equal to 25.')
      end

      if !@va_branch_code.nil? && @va_branch_code.to_s.length > 3
        invalid_properties.push('invalid value for "va_branch_code", the character length must be smaller than or equal to 3.')
      end

      if !@va_branch_code.nil? && @va_branch_code.to_s.length < 1
        invalid_properties.push('invalid value for "va_branch_code", the character length must be great than or equal to 1.')
      end

      if !@va_branch_name.nil? && @va_branch_name.to_s.length > 15
        invalid_properties.push('invalid value for "va_branch_name", the character length must be smaller than or equal to 15.')
      end

      if !@va_account_number.nil? && @va_account_number.to_s.length > 7
        invalid_properties.push('invalid value for "va_account_number", the character length must be smaller than or equal to 7.')
      end

      if !@va_account_number.nil? && @va_account_number.to_s.length < 7
        invalid_properties.push('invalid value for "va_account_number", the character length must be great than or equal to 7.')
      end

      if !@va_account_name.nil? && @va_account_name.to_s.length > 40
        invalid_properties.push('invalid value for "va_account_name", the character length must be smaller than or equal to 40.')
      end

      if !@virtual_account_id.nil? && @virtual_account_id.to_s.length > 10
        invalid_properties.push('invalid value for "virtual_account_id", the character length must be smaller than or equal to 10.')
      end

      if !@virtual_account_id.nil? && @virtual_account_id.to_s.length < 10
        invalid_properties.push('invalid value for "virtual_account_id", the character length must be great than or equal to 10.')
      end

      if !@remitter_account_name.nil? && @remitter_account_name.to_s.length > 48
        invalid_properties.push('invalid value for "remitter_account_name", the character length must be smaller than or equal to 48.')
      end

      if !@remitter_bank_name.nil? && @remitter_bank_name.to_s.length > 30
        invalid_properties.push('invalid value for "remitter_bank_name", the character length must be smaller than or equal to 30.')
      end

      if !@remitter_branch_name.nil? && @remitter_branch_name.to_s.length > 15
        invalid_properties.push('invalid value for "remitter_branch_name", the character length must be smaller than or equal to 15.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@payment_method_id.nil? && @payment_method_id.to_s.length > 25
      return false if !@payment_method_id.nil? && @payment_method_id.to_s.length < 25
      return false if !@va_branch_code.nil? && @va_branch_code.to_s.length > 3
      return false if !@va_branch_code.nil? && @va_branch_code.to_s.length < 1
      return false if !@va_branch_name.nil? && @va_branch_name.to_s.length > 15
      return false if !@va_account_number.nil? && @va_account_number.to_s.length > 7
      return false if !@va_account_number.nil? && @va_account_number.to_s.length < 7
      return false if !@va_account_name.nil? && @va_account_name.to_s.length > 40
      return false if !@virtual_account_id.nil? && @virtual_account_id.to_s.length > 10
      return false if !@virtual_account_id.nil? && @virtual_account_id.to_s.length < 10
      return false if !@remitter_account_name.nil? && @remitter_account_name.to_s.length > 48
      return false if !@remitter_bank_name.nil? && @remitter_bank_name.to_s.length > 30
      return false if !@remitter_branch_name.nil? && @remitter_branch_name.to_s.length > 15
      overpayment_flag_validator = EnumAttributeValidator.new('String', ["0", "1"])
      return false unless overpayment_flag_validator.valid?(@overpayment_flag)
      cancel_overpayment_flag_validator = EnumAttributeValidator.new('String', ["0", "1"])
      return false unless cancel_overpayment_flag_validator.valid?(@cancel_overpayment_flag)
      expire_overpayment_flag_validator = EnumAttributeValidator.new('String', ["0", "1"])
      return false unless expire_overpayment_flag_validator.valid?(@expire_overpayment_flag)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] billing_amount Value to be assigned
    def billing_amount=(billing_amount)
      if billing_amount.nil?
        fail ArgumentError, 'billing_amount cannot be nil'
      end

      @billing_amount = billing_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] billing_tax Value to be assigned
    def billing_tax=(billing_tax)
      @billing_tax = billing_tax
    end

    # Custom attribute writer method with validation
    # @param [Object] billing_total_amount Value to be assigned
    def billing_total_amount=(billing_total_amount)
      if billing_total_amount.nil?
        fail ArgumentError, 'billing_total_amount cannot be nil'
      end

      @billing_total_amount = billing_total_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_term_day Value to be assigned
    def payment_term_day=(payment_term_day)
      if payment_term_day.nil?
        fail ArgumentError, 'payment_term_day cannot be nil'
      end

      @payment_term_day = payment_term_day
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_method_id Value to be assigned
    def payment_method_id=(payment_method_id)
      if payment_method_id.nil?
        fail ArgumentError, 'payment_method_id cannot be nil'
      end

      if payment_method_id.to_s.length > 25
        fail ArgumentError, 'invalid value for "payment_method_id", the character length must be smaller than or equal to 25.'
      end

      if payment_method_id.to_s.length < 25
        fail ArgumentError, 'invalid value for "payment_method_id", the character length must be great than or equal to 25.'
      end

      @payment_method_id = payment_method_id
    end

    # Custom attribute writer method with validation
    # @param [Object] va_branch_code Value to be assigned
    def va_branch_code=(va_branch_code)
      if !va_branch_code.nil? && va_branch_code.to_s.length > 3
        fail ArgumentError, 'invalid value for "va_branch_code", the character length must be smaller than or equal to 3.'
      end

      if !va_branch_code.nil? && va_branch_code.to_s.length < 1
        fail ArgumentError, 'invalid value for "va_branch_code", the character length must be great than or equal to 1.'
      end

      @va_branch_code = va_branch_code
    end

    # Custom attribute writer method with validation
    # @param [Object] va_branch_name Value to be assigned
    def va_branch_name=(va_branch_name)
      if !va_branch_name.nil? && va_branch_name.to_s.length > 15
        fail ArgumentError, 'invalid value for "va_branch_name", the character length must be smaller than or equal to 15.'
      end

      @va_branch_name = va_branch_name
    end

    # Custom attribute writer method with validation
    # @param [Object] va_account_number Value to be assigned
    def va_account_number=(va_account_number)
      if !va_account_number.nil? && va_account_number.to_s.length > 7
        fail ArgumentError, 'invalid value for "va_account_number", the character length must be smaller than or equal to 7.'
      end

      if !va_account_number.nil? && va_account_number.to_s.length < 7
        fail ArgumentError, 'invalid value for "va_account_number", the character length must be great than or equal to 7.'
      end

      @va_account_number = va_account_number
    end

    # Custom attribute writer method with validation
    # @param [Object] va_account_name Value to be assigned
    def va_account_name=(va_account_name)
      if !va_account_name.nil? && va_account_name.to_s.length > 40
        fail ArgumentError, 'invalid value for "va_account_name", the character length must be smaller than or equal to 40.'
      end

      @va_account_name = va_account_name
    end

    # Custom attribute writer method with validation
    # @param [Object] virtual_account_id Value to be assigned
    def virtual_account_id=(virtual_account_id)
      if !virtual_account_id.nil? && virtual_account_id.to_s.length > 10
        fail ArgumentError, 'invalid value for "virtual_account_id", the character length must be smaller than or equal to 10.'
      end

      if !virtual_account_id.nil? && virtual_account_id.to_s.length < 10
        fail ArgumentError, 'invalid value for "virtual_account_id", the character length must be great than or equal to 10.'
      end

      @virtual_account_id = virtual_account_id
    end

    # Custom attribute writer method with validation
    # @param [Object] remitter_account_name Value to be assigned
    def remitter_account_name=(remitter_account_name)
      if !remitter_account_name.nil? && remitter_account_name.to_s.length > 48
        fail ArgumentError, 'invalid value for "remitter_account_name", the character length must be smaller than or equal to 48.'
      end

      @remitter_account_name = remitter_account_name
    end

    # Custom attribute writer method with validation
    # @param [Object] remitter_bank_name Value to be assigned
    def remitter_bank_name=(remitter_bank_name)
      if !remitter_bank_name.nil? && remitter_bank_name.to_s.length > 30
        fail ArgumentError, 'invalid value for "remitter_bank_name", the character length must be smaller than or equal to 30.'
      end

      @remitter_bank_name = remitter_bank_name
    end

    # Custom attribute writer method with validation
    # @param [Object] remitter_branch_name Value to be assigned
    def remitter_branch_name=(remitter_branch_name)
      if !remitter_branch_name.nil? && remitter_branch_name.to_s.length > 15
        fail ArgumentError, 'invalid value for "remitter_branch_name", the character length must be smaller than or equal to 15.'
      end

      @remitter_branch_name = remitter_branch_name
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          pay_type == o.pay_type &&
          status == o.status &&
          billing_amount == o.billing_amount &&
          billing_tax == o.billing_tax &&
          billing_total_amount == o.billing_total_amount &&
          payment_term_day == o.payment_term_day &&
          payment_term == o.payment_term &&
          payment_method_id == o.payment_method_id &&
          va_branch_code == o.va_branch_code &&
          va_branch_name == o.va_branch_name &&
          va_account_number == o.va_account_number &&
          va_account_name == o.va_account_name &&
          virtual_account_id == o.virtual_account_id &&
          account_assignment_date == o.account_assignment_date &&
          transaction_date == o.transaction_date &&
          value_date == o.value_date &&
          remitter_account_name == o.remitter_account_name &&
          remitter_bank_name == o.remitter_bank_name &&
          remitter_branch_name == o.remitter_branch_name &&
          overpayment_flag == o.overpayment_flag &&
          cancel_overpayment_flag == o.cancel_overpayment_flag &&
          expire_overpayment_flag == o.expire_overpayment_flag
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [pay_type, status, billing_amount, billing_tax, billing_total_amount, payment_term_day, payment_term, payment_method_id, va_branch_code, va_branch_name, va_account_number, va_account_name, virtual_account_id, account_assignment_date, transaction_date, value_date, remitter_account_name, remitter_bank_name, remitter_branch_name, overpayment_flag, cancel_overpayment_flag, expire_overpayment_flag].hash
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
