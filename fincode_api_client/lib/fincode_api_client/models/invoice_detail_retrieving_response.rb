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
  class InvoiceDetailRetrievingResponse
    # インボイスID 
    attr_accessor :id

    # インボイス請求書のステータス      - `DRAFT`: 下書き - `AWAITING_CUSTOMER_PAYMENT`: 支払い待ち - `PAID`: 支払い完了 - `CANCELED`: キャンセル済 
    attr_accessor :status

    # インボイス 請求ページURL 
    attr_accessor :invoice_url

    # 請求書メール送信フラグ (0: メールを送信しない 1: メールを送信する) 
    attr_accessor :bill_mail_send_flag

    # [非推奨] インボイス請求書PDFダウンロードURL\\ ※ 2024年10月現在、請求書を表示するWebページのURLがレスポンスされます。このページへはインボイス 請求ページからアクセスできます。 
    attr_accessor :bill_pdf_url

    # 領収書メール送信フラグ (0: メールを送信しない 1: メールを送信する) 
    attr_accessor :receipt_mail_send_flag

    # 差額請求メール送信フラグ (0: メールを送信しない 1: メールを送信する) 
    attr_accessor :underpayment_mail_send_flag

    # [非推奨] インボイス領収書PDFダウンロードURL\\ ※ 2024年10月現在、領収書を表示するWebページのURLがレスポンスされます。このページへは支払い完了後にインボイス 請求ページからアクセスできます。 
    attr_accessor :receipt_pdf_url

    # 請求番号 
    attr_accessor :invoice_number

    # 顧客（請求先）ID 
    attr_accessor :customer_id

    # 顧客（請求先）敬称 
    attr_accessor :customer_honorific

    attr_accessor :customer

    attr_accessor :customer_overwrite

    attr_accessor :issuer

    attr_accessor :issuer_overwrite

    # 発行年月日   形式： `yyyy/MM/dd` 
    attr_accessor :issue_date

    # 取引内容レコード 
    attr_accessor :lines

    # 合計金額 
    attr_accessor :total_amount

    # 請求金額合計 
    attr_accessor :billing_total_amount

    # 利用可能な決済種別リスト      - `\"Virtualaccount\"`: バーチャル口座振込 - `\"Card\"`: カード決済 
    attr_accessor :pay_types

    attr_accessor :card

    attr_accessor :virtual_account

    attr_accessor :embedded_virtual_account

    # 内税表記有無      - `true`: 内税表記   - `false`: 外税表記 
    attr_accessor :is_tax_included

    # 支払期日   yyyy/MM/dd形式 
    attr_accessor :due_date

    # 備考
    attr_accessor :memo

    # 加盟店自由項目1
    attr_accessor :client_field_1

    # 加盟店自由項目2
    attr_accessor :client_field_2

    # 加盟店自由項目3
    attr_accessor :client_field_3

    # 回収困難フラグ 
    attr_accessor :is_uncollectible

    # fincode外支払フラグ 
    attr_accessor :is_paid_externally

    # 支払完了日
    attr_accessor :transaction_date

    # 作成日時
    attr_accessor :created

    # 更新日時
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
        :'status' => :'status',
        :'invoice_url' => :'invoice_url',
        :'bill_mail_send_flag' => :'bill_mail_send_flag',
        :'bill_pdf_url' => :'bill_pdf_url',
        :'receipt_mail_send_flag' => :'receipt_mail_send_flag',
        :'underpayment_mail_send_flag' => :'underpayment_mail_send_flag',
        :'receipt_pdf_url' => :'receipt_pdf_url',
        :'invoice_number' => :'invoice_number',
        :'customer_id' => :'customer_id',
        :'customer_honorific' => :'customer_honorific',
        :'customer' => :'customer',
        :'customer_overwrite' => :'customer_overwrite',
        :'issuer' => :'issuer',
        :'issuer_overwrite' => :'issuer_overwrite',
        :'issue_date' => :'issue_date',
        :'lines' => :'lines',
        :'total_amount' => :'total_amount',
        :'billing_total_amount' => :'billing_total_amount',
        :'pay_types' => :'pay_types',
        :'card' => :'card',
        :'virtual_account' => :'virtual_account',
        :'embedded_virtual_account' => :'embedded_virtual_account',
        :'is_tax_included' => :'is_tax_included',
        :'due_date' => :'due_date',
        :'memo' => :'memo',
        :'client_field_1' => :'client_field_1',
        :'client_field_2' => :'client_field_2',
        :'client_field_3' => :'client_field_3',
        :'is_uncollectible' => :'is_uncollectible',
        :'is_paid_externally' => :'is_paid_externally',
        :'transaction_date' => :'transaction_date',
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
        :'status' => :'String',
        :'invoice_url' => :'String',
        :'bill_mail_send_flag' => :'String',
        :'bill_pdf_url' => :'String',
        :'receipt_mail_send_flag' => :'String',
        :'underpayment_mail_send_flag' => :'String',
        :'receipt_pdf_url' => :'String',
        :'invoice_number' => :'String',
        :'customer_id' => :'String',
        :'customer_honorific' => :'String',
        :'customer' => :'InvoiceCustomer',
        :'customer_overwrite' => :'InvoiceCustomerOverwrite',
        :'issuer' => :'InvoiceIssuer',
        :'issuer_overwrite' => :'InvoiceIssuerOverwrite',
        :'issue_date' => :'String',
        :'lines' => :'Array<InvoiceLinesInner>',
        :'total_amount' => :'Float',
        :'billing_total_amount' => :'Float',
        :'pay_types' => :'Array<String>',
        :'card' => :'InvoiceCard',
        :'virtual_account' => :'InvoiceVirtualAccount',
        :'embedded_virtual_account' => :'InvoiceEmbeddedVirtualAccount',
        :'is_tax_included' => :'Boolean',
        :'due_date' => :'String',
        :'memo' => :'String',
        :'client_field_1' => :'String',
        :'client_field_2' => :'String',
        :'client_field_3' => :'String',
        :'is_uncollectible' => :'Boolean',
        :'is_paid_externally' => :'Boolean',
        :'transaction_date' => :'String',
        :'created' => :'String',
        :'updated' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'Invoice'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FincodeApiClient::InvoiceDetailRetrievingResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FincodeApiClient::InvoiceDetailRetrievingResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'invoice_url')
        self.invoice_url = attributes[:'invoice_url']
      end

      if attributes.key?(:'bill_mail_send_flag')
        self.bill_mail_send_flag = attributes[:'bill_mail_send_flag']
      end

      if attributes.key?(:'bill_pdf_url')
        self.bill_pdf_url = attributes[:'bill_pdf_url']
      end

      if attributes.key?(:'receipt_mail_send_flag')
        self.receipt_mail_send_flag = attributes[:'receipt_mail_send_flag']
      end

      if attributes.key?(:'underpayment_mail_send_flag')
        self.underpayment_mail_send_flag = attributes[:'underpayment_mail_send_flag']
      end

      if attributes.key?(:'receipt_pdf_url')
        self.receipt_pdf_url = attributes[:'receipt_pdf_url']
      end

      if attributes.key?(:'invoice_number')
        self.invoice_number = attributes[:'invoice_number']
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'customer_honorific')
        self.customer_honorific = attributes[:'customer_honorific']
      end

      if attributes.key?(:'customer')
        self.customer = attributes[:'customer']
      end

      if attributes.key?(:'customer_overwrite')
        self.customer_overwrite = attributes[:'customer_overwrite']
      end

      if attributes.key?(:'issuer')
        self.issuer = attributes[:'issuer']
      end

      if attributes.key?(:'issuer_overwrite')
        self.issuer_overwrite = attributes[:'issuer_overwrite']
      end

      if attributes.key?(:'issue_date')
        self.issue_date = attributes[:'issue_date']
      end

      if attributes.key?(:'lines')
        if (value = attributes[:'lines']).is_a?(Array)
          self.lines = value
        end
      end

      if attributes.key?(:'total_amount')
        self.total_amount = attributes[:'total_amount']
      end

      if attributes.key?(:'billing_total_amount')
        self.billing_total_amount = attributes[:'billing_total_amount']
      end

      if attributes.key?(:'pay_types')
        if (value = attributes[:'pay_types']).is_a?(Array)
          self.pay_types = value
        end
      end

      if attributes.key?(:'card')
        self.card = attributes[:'card']
      end

      if attributes.key?(:'virtual_account')
        self.virtual_account = attributes[:'virtual_account']
      end

      if attributes.key?(:'embedded_virtual_account')
        self.embedded_virtual_account = attributes[:'embedded_virtual_account']
      end

      if attributes.key?(:'is_tax_included')
        self.is_tax_included = attributes[:'is_tax_included']
      end

      if attributes.key?(:'due_date')
        self.due_date = attributes[:'due_date']
      end

      if attributes.key?(:'memo')
        self.memo = attributes[:'memo']
      end

      if attributes.key?(:'client_field_1')
        self.client_field_1 = attributes[:'client_field_1']
      end

      if attributes.key?(:'client_field_2')
        self.client_field_2 = attributes[:'client_field_2']
      end

      if attributes.key?(:'client_field_3')
        self.client_field_3 = attributes[:'client_field_3']
      end

      if attributes.key?(:'is_uncollectible')
        self.is_uncollectible = attributes[:'is_uncollectible']
      end

      if attributes.key?(:'is_paid_externally')
        self.is_paid_externally = attributes[:'is_paid_externally']
      end

      if attributes.key?(:'transaction_date')
        self.transaction_date = attributes[:'transaction_date']
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
      if !@id.nil? && @id.to_s.length > 30
        invalid_properties.push('invalid value for "id", the character length must be smaller than or equal to 30.')
      end

      if !@id.nil? && @id.to_s.length < 1
        invalid_properties.push('invalid value for "id", the character length must be great than or equal to 1.')
      end

      if !@status.nil? && @status.to_s.length > 25
        invalid_properties.push('invalid value for "status", the character length must be smaller than or equal to 25.')
      end

      if !@status.nil? && @status.to_s.length < 1
        invalid_properties.push('invalid value for "status", the character length must be great than or equal to 1.')
      end

      if !@invoice_url.nil? && @invoice_url.to_s.length > 256
        invalid_properties.push('invalid value for "invoice_url", the character length must be smaller than or equal to 256.')
      end

      if !@invoice_url.nil? && @invoice_url.to_s.length < 1
        invalid_properties.push('invalid value for "invoice_url", the character length must be great than or equal to 1.')
      end

      if !@bill_pdf_url.nil? && @bill_pdf_url.to_s.length > 256
        invalid_properties.push('invalid value for "bill_pdf_url", the character length must be smaller than or equal to 256.')
      end

      if !@bill_pdf_url.nil? && @bill_pdf_url.to_s.length < 1
        invalid_properties.push('invalid value for "bill_pdf_url", the character length must be great than or equal to 1.')
      end

      if !@receipt_pdf_url.nil? && @receipt_pdf_url.to_s.length > 256
        invalid_properties.push('invalid value for "receipt_pdf_url", the character length must be smaller than or equal to 256.')
      end

      if !@receipt_pdf_url.nil? && @receipt_pdf_url.to_s.length < 1
        invalid_properties.push('invalid value for "receipt_pdf_url", the character length must be great than or equal to 1.')
      end

      if !@invoice_number.nil? && @invoice_number.to_s.length > 30
        invalid_properties.push('invalid value for "invoice_number", the character length must be smaller than or equal to 30.')
      end

      if !@invoice_number.nil? && @invoice_number.to_s.length < 1
        invalid_properties.push('invalid value for "invoice_number", the character length must be great than or equal to 1.')
      end

      if !@customer_id.nil? && @customer_id.to_s.length > 60
        invalid_properties.push('invalid value for "customer_id", the character length must be smaller than or equal to 60.')
      end

      if !@customer_id.nil? && @customer_id.to_s.length < 1
        invalid_properties.push('invalid value for "customer_id", the character length must be great than or equal to 1.')
      end

      if !@customer_honorific.nil? && @customer_honorific.to_s.length > 20
        invalid_properties.push('invalid value for "customer_honorific", the character length must be smaller than or equal to 20.')
      end

      if !@customer_honorific.nil? && @customer_honorific.to_s.length < 1
        invalid_properties.push('invalid value for "customer_honorific", the character length must be great than or equal to 1.')
      end

      if !@issue_date.nil? && @issue_date.to_s.length > 10
        invalid_properties.push('invalid value for "issue_date", the character length must be smaller than or equal to 10.')
      end

      if !@issue_date.nil? && @issue_date.to_s.length < 1
        invalid_properties.push('invalid value for "issue_date", the character length must be great than or equal to 1.')
      end

      if !@total_amount.nil? && @total_amount > 99999999999999
        invalid_properties.push('invalid value for "total_amount", must be smaller than or equal to 99999999999999.')
      end

      if !@total_amount.nil? && @total_amount < 0
        invalid_properties.push('invalid value for "total_amount", must be greater than or equal to 0.')
      end

      if !@billing_total_amount.nil? && @billing_total_amount > 99999999999999
        invalid_properties.push('invalid value for "billing_total_amount", must be smaller than or equal to 99999999999999.')
      end

      if !@billing_total_amount.nil? && @billing_total_amount < 0
        invalid_properties.push('invalid value for "billing_total_amount", must be greater than or equal to 0.')
      end

      if !@due_date.nil? && @due_date.to_s.length > 10
        invalid_properties.push('invalid value for "due_date", the character length must be smaller than or equal to 10.')
      end

      if !@client_field_1.nil? && @client_field_1.to_s.length > 100
        invalid_properties.push('invalid value for "client_field_1", the character length must be smaller than or equal to 100.')
      end

      if !@client_field_2.nil? && @client_field_2.to_s.length > 100
        invalid_properties.push('invalid value for "client_field_2", the character length must be smaller than or equal to 100.')
      end

      if !@client_field_3.nil? && @client_field_3.to_s.length > 100
        invalid_properties.push('invalid value for "client_field_3", the character length must be smaller than or equal to 100.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@id.nil? && @id.to_s.length > 30
      return false if !@id.nil? && @id.to_s.length < 1
      return false if !@status.nil? && @status.to_s.length > 25
      return false if !@status.nil? && @status.to_s.length < 1
      return false if !@invoice_url.nil? && @invoice_url.to_s.length > 256
      return false if !@invoice_url.nil? && @invoice_url.to_s.length < 1
      bill_mail_send_flag_validator = EnumAttributeValidator.new('String', ["0", "1"])
      return false unless bill_mail_send_flag_validator.valid?(@bill_mail_send_flag)
      return false if !@bill_pdf_url.nil? && @bill_pdf_url.to_s.length > 256
      return false if !@bill_pdf_url.nil? && @bill_pdf_url.to_s.length < 1
      receipt_mail_send_flag_validator = EnumAttributeValidator.new('String', ["0", "1"])
      return false unless receipt_mail_send_flag_validator.valid?(@receipt_mail_send_flag)
      underpayment_mail_send_flag_validator = EnumAttributeValidator.new('String', ["0", "1"])
      return false unless underpayment_mail_send_flag_validator.valid?(@underpayment_mail_send_flag)
      return false if !@receipt_pdf_url.nil? && @receipt_pdf_url.to_s.length > 256
      return false if !@receipt_pdf_url.nil? && @receipt_pdf_url.to_s.length < 1
      return false if !@invoice_number.nil? && @invoice_number.to_s.length > 30
      return false if !@invoice_number.nil? && @invoice_number.to_s.length < 1
      return false if !@customer_id.nil? && @customer_id.to_s.length > 60
      return false if !@customer_id.nil? && @customer_id.to_s.length < 1
      return false if !@customer_honorific.nil? && @customer_honorific.to_s.length > 20
      return false if !@customer_honorific.nil? && @customer_honorific.to_s.length < 1
      return false if !@issue_date.nil? && @issue_date.to_s.length > 10
      return false if !@issue_date.nil? && @issue_date.to_s.length < 1
      return false if !@total_amount.nil? && @total_amount > 99999999999999
      return false if !@total_amount.nil? && @total_amount < 0
      return false if !@billing_total_amount.nil? && @billing_total_amount > 99999999999999
      return false if !@billing_total_amount.nil? && @billing_total_amount < 0
      return false if !@due_date.nil? && @due_date.to_s.length > 10
      return false if !@client_field_1.nil? && @client_field_1.to_s.length > 100
      return false if !@client_field_2.nil? && @client_field_2.to_s.length > 100
      return false if !@client_field_3.nil? && @client_field_3.to_s.length > 100
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      if id.to_s.length > 30
        fail ArgumentError, 'invalid value for "id", the character length must be smaller than or equal to 30.'
      end

      if id.to_s.length < 1
        fail ArgumentError, 'invalid value for "id", the character length must be great than or equal to 1.'
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] status Value to be assigned
    def status=(status)
      if status.nil?
        fail ArgumentError, 'status cannot be nil'
      end

      if status.to_s.length > 25
        fail ArgumentError, 'invalid value for "status", the character length must be smaller than or equal to 25.'
      end

      if status.to_s.length < 1
        fail ArgumentError, 'invalid value for "status", the character length must be great than or equal to 1.'
      end

      @status = status
    end

    # Custom attribute writer method with validation
    # @param [Object] invoice_url Value to be assigned
    def invoice_url=(invoice_url)
      if invoice_url.nil?
        fail ArgumentError, 'invoice_url cannot be nil'
      end

      if invoice_url.to_s.length > 256
        fail ArgumentError, 'invalid value for "invoice_url", the character length must be smaller than or equal to 256.'
      end

      if invoice_url.to_s.length < 1
        fail ArgumentError, 'invalid value for "invoice_url", the character length must be great than or equal to 1.'
      end

      @invoice_url = invoice_url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bill_mail_send_flag Object to be assigned
    def bill_mail_send_flag=(bill_mail_send_flag)
      validator = EnumAttributeValidator.new('String', ["0", "1"])
      unless validator.valid?(bill_mail_send_flag)
        fail ArgumentError, "invalid value for \"bill_mail_send_flag\", must be one of #{validator.allowable_values}."
      end
      @bill_mail_send_flag = bill_mail_send_flag
    end

    # Custom attribute writer method with validation
    # @param [Object] bill_pdf_url Value to be assigned
    def bill_pdf_url=(bill_pdf_url)
      if bill_pdf_url.nil?
        fail ArgumentError, 'bill_pdf_url cannot be nil'
      end

      if bill_pdf_url.to_s.length > 256
        fail ArgumentError, 'invalid value for "bill_pdf_url", the character length must be smaller than or equal to 256.'
      end

      if bill_pdf_url.to_s.length < 1
        fail ArgumentError, 'invalid value for "bill_pdf_url", the character length must be great than or equal to 1.'
      end

      @bill_pdf_url = bill_pdf_url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] receipt_mail_send_flag Object to be assigned
    def receipt_mail_send_flag=(receipt_mail_send_flag)
      validator = EnumAttributeValidator.new('String', ["0", "1"])
      unless validator.valid?(receipt_mail_send_flag)
        fail ArgumentError, "invalid value for \"receipt_mail_send_flag\", must be one of #{validator.allowable_values}."
      end
      @receipt_mail_send_flag = receipt_mail_send_flag
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] underpayment_mail_send_flag Object to be assigned
    def underpayment_mail_send_flag=(underpayment_mail_send_flag)
      validator = EnumAttributeValidator.new('String', ["0", "1"])
      unless validator.valid?(underpayment_mail_send_flag)
        fail ArgumentError, "invalid value for \"underpayment_mail_send_flag\", must be one of #{validator.allowable_values}."
      end
      @underpayment_mail_send_flag = underpayment_mail_send_flag
    end

    # Custom attribute writer method with validation
    # @param [Object] receipt_pdf_url Value to be assigned
    def receipt_pdf_url=(receipt_pdf_url)
      if receipt_pdf_url.nil?
        fail ArgumentError, 'receipt_pdf_url cannot be nil'
      end

      if receipt_pdf_url.to_s.length > 256
        fail ArgumentError, 'invalid value for "receipt_pdf_url", the character length must be smaller than or equal to 256.'
      end

      if receipt_pdf_url.to_s.length < 1
        fail ArgumentError, 'invalid value for "receipt_pdf_url", the character length must be great than or equal to 1.'
      end

      @receipt_pdf_url = receipt_pdf_url
    end

    # Custom attribute writer method with validation
    # @param [Object] invoice_number Value to be assigned
    def invoice_number=(invoice_number)
      if invoice_number.nil?
        fail ArgumentError, 'invoice_number cannot be nil'
      end

      if invoice_number.to_s.length > 30
        fail ArgumentError, 'invalid value for "invoice_number", the character length must be smaller than or equal to 30.'
      end

      if invoice_number.to_s.length < 1
        fail ArgumentError, 'invalid value for "invoice_number", the character length must be great than or equal to 1.'
      end

      @invoice_number = invoice_number
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
    # @param [Object] customer_honorific Value to be assigned
    def customer_honorific=(customer_honorific)
      if customer_honorific.nil?
        fail ArgumentError, 'customer_honorific cannot be nil'
      end

      if customer_honorific.to_s.length > 20
        fail ArgumentError, 'invalid value for "customer_honorific", the character length must be smaller than or equal to 20.'
      end

      if customer_honorific.to_s.length < 1
        fail ArgumentError, 'invalid value for "customer_honorific", the character length must be great than or equal to 1.'
      end

      @customer_honorific = customer_honorific
    end

    # Custom attribute writer method with validation
    # @param [Object] issue_date Value to be assigned
    def issue_date=(issue_date)
      if issue_date.nil?
        fail ArgumentError, 'issue_date cannot be nil'
      end

      if issue_date.to_s.length > 10
        fail ArgumentError, 'invalid value for "issue_date", the character length must be smaller than or equal to 10.'
      end

      if issue_date.to_s.length < 1
        fail ArgumentError, 'invalid value for "issue_date", the character length must be great than or equal to 1.'
      end

      @issue_date = issue_date
    end

    # Custom attribute writer method with validation
    # @param [Object] total_amount Value to be assigned
    def total_amount=(total_amount)
      if total_amount.nil?
        fail ArgumentError, 'total_amount cannot be nil'
      end

      if total_amount > 99999999999999
        fail ArgumentError, 'invalid value for "total_amount", must be smaller than or equal to 99999999999999.'
      end

      if total_amount < 0
        fail ArgumentError, 'invalid value for "total_amount", must be greater than or equal to 0.'
      end

      @total_amount = total_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] billing_total_amount Value to be assigned
    def billing_total_amount=(billing_total_amount)
      if billing_total_amount.nil?
        fail ArgumentError, 'billing_total_amount cannot be nil'
      end

      if billing_total_amount > 99999999999999
        fail ArgumentError, 'invalid value for "billing_total_amount", must be smaller than or equal to 99999999999999.'
      end

      if billing_total_amount < 0
        fail ArgumentError, 'invalid value for "billing_total_amount", must be greater than or equal to 0.'
      end

      @billing_total_amount = billing_total_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] due_date Value to be assigned
    def due_date=(due_date)
      if due_date.nil?
        fail ArgumentError, 'due_date cannot be nil'
      end

      if due_date.to_s.length > 10
        fail ArgumentError, 'invalid value for "due_date", the character length must be smaller than or equal to 10.'
      end

      @due_date = due_date
    end

    # Custom attribute writer method with validation
    # @param [Object] client_field_1 Value to be assigned
    def client_field_1=(client_field_1)
      if client_field_1.nil?
        fail ArgumentError, 'client_field_1 cannot be nil'
      end

      if client_field_1.to_s.length > 100
        fail ArgumentError, 'invalid value for "client_field_1", the character length must be smaller than or equal to 100.'
      end

      @client_field_1 = client_field_1
    end

    # Custom attribute writer method with validation
    # @param [Object] client_field_2 Value to be assigned
    def client_field_2=(client_field_2)
      if client_field_2.nil?
        fail ArgumentError, 'client_field_2 cannot be nil'
      end

      if client_field_2.to_s.length > 100
        fail ArgumentError, 'invalid value for "client_field_2", the character length must be smaller than or equal to 100.'
      end

      @client_field_2 = client_field_2
    end

    # Custom attribute writer method with validation
    # @param [Object] client_field_3 Value to be assigned
    def client_field_3=(client_field_3)
      if client_field_3.nil?
        fail ArgumentError, 'client_field_3 cannot be nil'
      end

      if client_field_3.to_s.length > 100
        fail ArgumentError, 'invalid value for "client_field_3", the character length must be smaller than or equal to 100.'
      end

      @client_field_3 = client_field_3
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          status == o.status &&
          invoice_url == o.invoice_url &&
          bill_mail_send_flag == o.bill_mail_send_flag &&
          bill_pdf_url == o.bill_pdf_url &&
          receipt_mail_send_flag == o.receipt_mail_send_flag &&
          underpayment_mail_send_flag == o.underpayment_mail_send_flag &&
          receipt_pdf_url == o.receipt_pdf_url &&
          invoice_number == o.invoice_number &&
          customer_id == o.customer_id &&
          customer_honorific == o.customer_honorific &&
          customer == o.customer &&
          customer_overwrite == o.customer_overwrite &&
          issuer == o.issuer &&
          issuer_overwrite == o.issuer_overwrite &&
          issue_date == o.issue_date &&
          lines == o.lines &&
          total_amount == o.total_amount &&
          billing_total_amount == o.billing_total_amount &&
          pay_types == o.pay_types &&
          card == o.card &&
          virtual_account == o.virtual_account &&
          embedded_virtual_account == o.embedded_virtual_account &&
          is_tax_included == o.is_tax_included &&
          due_date == o.due_date &&
          memo == o.memo &&
          client_field_1 == o.client_field_1 &&
          client_field_2 == o.client_field_2 &&
          client_field_3 == o.client_field_3 &&
          is_uncollectible == o.is_uncollectible &&
          is_paid_externally == o.is_paid_externally &&
          transaction_date == o.transaction_date &&
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
      [id, status, invoice_url, bill_mail_send_flag, bill_pdf_url, receipt_mail_send_flag, underpayment_mail_send_flag, receipt_pdf_url, invoice_number, customer_id, customer_honorific, customer, customer_overwrite, issuer, issuer_overwrite, issue_date, lines, total_amount, billing_total_amount, pay_types, card, virtual_account, embedded_virtual_account, is_tax_included, due_date, memo, client_field_1, client_field_2, client_field_3, is_uncollectible, is_paid_externally, transaction_date, created, updated].hash
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
