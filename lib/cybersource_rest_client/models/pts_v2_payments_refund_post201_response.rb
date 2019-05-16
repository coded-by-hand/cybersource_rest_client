=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class PtsV2PaymentsRefundPost201Response
    attr_accessor :_links

    # An unique identification number assigned by CyberSource to identify the submitted request. It is also appended to the endpoint of the resource.
    attr_accessor :id

    # Time of request in UTC. Format: `YYYY-MM-DDThh:mm:ssZ` Example `2016-08-11T22:47:57Z` equals August 11, 2016, at 22:47:57 (10:47:57 p.m.). The `T` separates the date and the time. The `Z` indicates UTC. 
    attr_accessor :submit_time_utc

    # The status of the submitted transaction.  Possible values:  - PENDING 
    attr_accessor :status

    # The reconciliation id for the submitted transaction. This value is not returned for all processors. 
    attr_accessor :reconciliation_id

    attr_accessor :client_reference_information

    attr_accessor :refund_amount_details

    attr_accessor :processor_information

    attr_accessor :order_information

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
        :'_links' => :'_links',
        :'id' => :'id',
        :'submit_time_utc' => :'submitTimeUtc',
        :'status' => :'status',
        :'reconciliation_id' => :'reconciliationId',
        :'client_reference_information' => :'clientReferenceInformation',
        :'refund_amount_details' => :'refundAmountDetails',
        :'processor_information' => :'processorInformation',
        :'order_information' => :'orderInformation'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'_links' => :'PtsV2PaymentsRefundPost201ResponseLinks',
        :'id' => :'String',
        :'submit_time_utc' => :'String',
        :'status' => :'String',
        :'reconciliation_id' => :'String',
        :'client_reference_information' => :'PtsV2PaymentsPost201ResponseClientReferenceInformation',
        :'refund_amount_details' => :'PtsV2PaymentsRefundPost201ResponseRefundAmountDetails',
        :'processor_information' => :'PtsV2PaymentsRefundPost201ResponseProcessorInformation',
        :'order_information' => :'PtsV2PaymentsRefundPost201ResponseOrderInformation'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'_links')
        self._links = attributes[:'_links']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'submitTimeUtc')
        self.submit_time_utc = attributes[:'submitTimeUtc']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'reconciliationId')
        self.reconciliation_id = attributes[:'reconciliationId']
      end

      if attributes.has_key?(:'clientReferenceInformation')
        self.client_reference_information = attributes[:'clientReferenceInformation']
      end

      if attributes.has_key?(:'refundAmountDetails')
        self.refund_amount_details = attributes[:'refundAmountDetails']
      end

      if attributes.has_key?(:'processorInformation')
        self.processor_information = attributes[:'processorInformation']
      end

      if attributes.has_key?(:'orderInformation')
        self.order_information = attributes[:'orderInformation']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@id.nil? && @id.to_s.length > 26
        invalid_properties.push('invalid value for "id", the character length must be smaller than or equal to 26.')
      end

      if !@reconciliation_id.nil? && @reconciliation_id.to_s.length > 60
        invalid_properties.push('invalid value for "reconciliation_id", the character length must be smaller than or equal to 60.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@id.nil? && @id.to_s.length > 26
      status_validator = EnumAttributeValidator.new('String', ['PENDING'])
      return false unless status_validator.valid?(@status)
      return false if !@reconciliation_id.nil? && @reconciliation_id.to_s.length > 60
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if !id.nil? && id.to_s.length > 26
        fail ArgumentError, 'invalid value for "id", the character length must be smaller than or equal to 26.'
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ['PENDING'])
      unless validator.valid?(status)
        fail ArgumentError, 'invalid value for "status", must be one of #{validator.allowable_values}.'
      end
      @status = status
    end

    # Custom attribute writer method with validation
    # @param [Object] reconciliation_id Value to be assigned
    def reconciliation_id=(reconciliation_id)
      if !reconciliation_id.nil? && reconciliation_id.to_s.length > 60
        fail ArgumentError, 'invalid value for "reconciliation_id", the character length must be smaller than or equal to 60.'
      end

      @reconciliation_id = reconciliation_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _links == o._links &&
          id == o.id &&
          submit_time_utc == o.submit_time_utc &&
          status == o.status &&
          reconciliation_id == o.reconciliation_id &&
          client_reference_information == o.client_reference_information &&
          refund_amount_details == o.refund_amount_details &&
          processor_information == o.processor_information &&
          order_information == o.order_information
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_links, id, submit_time_utc, status, reconciliation_id, client_reference_information, refund_amount_details, processor_information, order_information].hash
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
