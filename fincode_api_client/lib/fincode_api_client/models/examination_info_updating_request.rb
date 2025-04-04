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
  class ExaminationInfoUpdatingRequest
    # 契約情報更新フラグ\\ \\ 契約情報の更新を行うかどうか  - `true`: 更新を行う 
    attr_accessor :update_contract_detail

    # ショップ情報更新フラグ\\ \\ ショップ情報の更新を行うかどうか  - `true`: 更新を行う 
    attr_accessor :update_shop

    # 入金用銀行口座情報更新フラグ\\ \\ fincodeの売上の入金先となる銀行口座情報の更新を行うかどうか  - `true`: 更新を行う 
    attr_accessor :update_bank_account

    # 入金サイクル情報更新フラグ\\ \\ fincodeの売上の入金サイクル情報の更新を行うかどうか  - `true`: 更新を行う 
    attr_accessor :update_deposit_cycle

    attr_accessor :deposit_cycle_master_id

    attr_accessor :contract_detail

    # ショップ 取扱商材情報\\ \\ fincodeに登録するショップの取扱商材情報 
    attr_accessor :shop_item_detail

    # 銀行口座情報\\ \\ fincode上での売上入金を受け取るための銀行口座情報 
    attr_accessor :contract_bank_account

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
        :'update_contract_detail' => :'update_contract_detail',
        :'update_shop' => :'update_shop',
        :'update_bank_account' => :'update_bank_account',
        :'update_deposit_cycle' => :'update_deposit_cycle',
        :'deposit_cycle_master_id' => :'deposit_cycle_master_id',
        :'contract_detail' => :'contract_detail',
        :'shop_item_detail' => :'shop_item_detail',
        :'contract_bank_account' => :'contract_bank_account'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'update_contract_detail' => :'Boolean',
        :'update_shop' => :'Boolean',
        :'update_bank_account' => :'Boolean',
        :'update_deposit_cycle' => :'Boolean',
        :'deposit_cycle_master_id' => :'DepositCycleMasterId',
        :'contract_detail' => :'ExaminationInfoUpdatingRequestContractDetail',
        :'shop_item_detail' => :'Array<ContentInfo>',
        :'contract_bank_account' => :'ContractBankAccountInfo'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'update_contract_detail',
        :'update_shop',
        :'update_bank_account',
        :'update_deposit_cycle',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FincodeApiClient::ExaminationInfoUpdatingRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FincodeApiClient::ExaminationInfoUpdatingRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'update_contract_detail')
        self.update_contract_detail = attributes[:'update_contract_detail']
      end

      if attributes.key?(:'update_shop')
        self.update_shop = attributes[:'update_shop']
      end

      if attributes.key?(:'update_bank_account')
        self.update_bank_account = attributes[:'update_bank_account']
      end

      if attributes.key?(:'update_deposit_cycle')
        self.update_deposit_cycle = attributes[:'update_deposit_cycle']
      end

      if attributes.key?(:'deposit_cycle_master_id')
        self.deposit_cycle_master_id = attributes[:'deposit_cycle_master_id']
      end

      if attributes.key?(:'contract_detail')
        self.contract_detail = attributes[:'contract_detail']
      end

      if attributes.key?(:'shop_item_detail')
        if (value = attributes[:'shop_item_detail']).is_a?(Array)
          self.shop_item_detail = value
        end
      end

      if attributes.key?(:'contract_bank_account')
        self.contract_bank_account = attributes[:'contract_bank_account']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          update_contract_detail == o.update_contract_detail &&
          update_shop == o.update_shop &&
          update_bank_account == o.update_bank_account &&
          update_deposit_cycle == o.update_deposit_cycle &&
          deposit_cycle_master_id == o.deposit_cycle_master_id &&
          contract_detail == o.contract_detail &&
          shop_item_detail == o.shop_item_detail &&
          contract_bank_account == o.contract_bank_account
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [update_contract_detail, update_shop, update_bank_account, update_deposit_cycle, deposit_cycle_master_id, contract_detail, shop_item_detail, contract_bank_account].hash
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
