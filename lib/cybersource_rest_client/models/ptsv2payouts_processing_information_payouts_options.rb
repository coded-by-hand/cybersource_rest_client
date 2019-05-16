=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Ptsv2payoutsProcessingInformationPayoutsOptions
    # This field identifies the card acceptor for defining the point of service terminal in both local and interchange environments. An acquirer-assigned code identifying the card acceptor for the transaction.  Depending on the acquirer and merchant billing and reporting requirements, the code can represent a merchant, a specific merchant location, or a specific merchant location terminal. Acquiring Institution Identification Code uniquely identifies the merchant. The value from the original is required in any subsequent messages, including reversals, chargebacks, and representments. * Applicable only for CTV for Payouts. 
    attr_accessor :acquirer_merchant_id

    # This code identifies the financial institution acting as the acquirer of this customer transaction. The acquirer is the member or system user that signed the merchant or ADM or dispensed cash.  This number is usually Visa-assigned. * Applicable only for CTV for Payouts. 
    attr_accessor :acquirer_bin

    # This field contains a number that is used with other data elements as a key to identify and track all messages related to a given cardholder transaction; that is, to a given transaction set. * Applicable only for CTV for Payouts. 
    attr_accessor :retrieval_reference_number

    # Visa-generated transaction identifier (TID) that is unique for each original authorization and financial request. * Applicable only for CTV for Payouts. 
    attr_accessor :account_funding_reference_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'acquirer_merchant_id' => :'acquirerMerchantId',
        :'acquirer_bin' => :'acquirerBin',
        :'retrieval_reference_number' => :'retrievalReferenceNumber',
        :'account_funding_reference_id' => :'accountFundingReferenceId'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'acquirer_merchant_id' => :'String',
        :'acquirer_bin' => :'String',
        :'retrieval_reference_number' => :'String',
        :'account_funding_reference_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'acquirerMerchantId')
        self.acquirer_merchant_id = attributes[:'acquirerMerchantId']
      end

      if attributes.has_key?(:'acquirerBin')
        self.acquirer_bin = attributes[:'acquirerBin']
      end

      if attributes.has_key?(:'retrievalReferenceNumber')
        self.retrieval_reference_number = attributes[:'retrievalReferenceNumber']
      end

      if attributes.has_key?(:'accountFundingReferenceId')
        self.account_funding_reference_id = attributes[:'accountFundingReferenceId']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@acquirer_merchant_id.nil? && @acquirer_merchant_id.to_s.length > 15
        invalid_properties.push('invalid value for "acquirer_merchant_id", the character length must be smaller than or equal to 15.')
      end

      if !@acquirer_bin.nil? && @acquirer_bin.to_s.length > 11
        invalid_properties.push('invalid value for "acquirer_bin", the character length must be smaller than or equal to 11.')
      end

      if !@retrieval_reference_number.nil? && @retrieval_reference_number.to_s.length > 12
        invalid_properties.push('invalid value for "retrieval_reference_number", the character length must be smaller than or equal to 12.')
      end

      if !@account_funding_reference_id.nil? && @account_funding_reference_id.to_s.length > 15
        invalid_properties.push('invalid value for "account_funding_reference_id", the character length must be smaller than or equal to 15.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@acquirer_merchant_id.nil? && @acquirer_merchant_id.to_s.length > 15
      return false if !@acquirer_bin.nil? && @acquirer_bin.to_s.length > 11
      return false if !@retrieval_reference_number.nil? && @retrieval_reference_number.to_s.length > 12
      return false if !@account_funding_reference_id.nil? && @account_funding_reference_id.to_s.length > 15
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] acquirer_merchant_id Value to be assigned
    def acquirer_merchant_id=(acquirer_merchant_id)
      if !acquirer_merchant_id.nil? && acquirer_merchant_id.to_s.length > 15
        fail ArgumentError, 'invalid value for "acquirer_merchant_id", the character length must be smaller than or equal to 15.'
      end

      @acquirer_merchant_id = acquirer_merchant_id
    end

    # Custom attribute writer method with validation
    # @param [Object] acquirer_bin Value to be assigned
    def acquirer_bin=(acquirer_bin)
      if !acquirer_bin.nil? && acquirer_bin.to_s.length > 11
        fail ArgumentError, 'invalid value for "acquirer_bin", the character length must be smaller than or equal to 11.'
      end

      @acquirer_bin = acquirer_bin
    end

    # Custom attribute writer method with validation
    # @param [Object] retrieval_reference_number Value to be assigned
    def retrieval_reference_number=(retrieval_reference_number)
      if !retrieval_reference_number.nil? && retrieval_reference_number.to_s.length > 12
        fail ArgumentError, 'invalid value for "retrieval_reference_number", the character length must be smaller than or equal to 12.'
      end

      @retrieval_reference_number = retrieval_reference_number
    end

    # Custom attribute writer method with validation
    # @param [Object] account_funding_reference_id Value to be assigned
    def account_funding_reference_id=(account_funding_reference_id)
      if !account_funding_reference_id.nil? && account_funding_reference_id.to_s.length > 15
        fail ArgumentError, 'invalid value for "account_funding_reference_id", the character length must be smaller than or equal to 15.'
      end

      @account_funding_reference_id = account_funding_reference_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          acquirer_merchant_id == o.acquirer_merchant_id &&
          acquirer_bin == o.acquirer_bin &&
          retrieval_reference_number == o.retrieval_reference_number &&
          account_funding_reference_id == o.account_funding_reference_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [acquirer_merchant_id, acquirer_bin, retrieval_reference_number, account_funding_reference_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
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
        temp_model = CyberSource.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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
