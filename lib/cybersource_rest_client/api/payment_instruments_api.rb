=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class PaymentInstrumentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
      @api_client.set_configuration(config)
    end
    # Retrieve all Payment Instruments associated with an Instrument Identifier
    # @param profile_id The id of a profile containing user specific TMS configuration.
    # @param token_id The TokenId of an Instrument Identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :offset Starting Payment Instrument record in zero-based dataset that should be returned as the first object in the array. Default is 0.
    # @option opts [String] :limit The maximum number of Payment Instruments that can be returned in the array starting from the offset record in zero-based dataset. Default is 20, maximum is 100. (default to 20)
    # @return [TmsV1InstrumentidentifiersPaymentinstrumentsGet200Response]
    def tms_v1_instrumentidentifiers_token_id_paymentinstruments_get(profile_id, token_id, opts = {})
      data, _status_code, _headers = tms_v1_instrumentidentifiers_token_id_paymentinstruments_get_with_http_info(profile_id, token_id, opts)
      return data, _status_code, _headers
    end

    # Retrieve all Payment Instruments associated with an Instrument Identifier
    # @param profile_id The id of a profile containing user specific TMS configuration.
    # @param token_id The TokenId of an Instrument Identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :offset Starting Payment Instrument record in zero-based dataset that should be returned as the first object in the array. Default is 0.
    # @option opts [String] :limit The maximum number of Payment Instruments that can be returned in the array starting from the offset record in zero-based dataset. Default is 20, maximum is 100.
    # @return [Array<(TmsV1InstrumentidentifiersPaymentinstrumentsGet200Response, Fixnum, Hash)>] TmsV1InstrumentidentifiersPaymentinstrumentsGet200Response data, response status code and response headers
    def tms_v1_instrumentidentifiers_token_id_paymentinstruments_get_with_http_info(profile_id, token_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentInstrumentsApi.tms_v1_instrumentidentifiers_token_id_paymentinstruments_get ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling PaymentInstrumentsApi.tms_v1_instrumentidentifiers_token_id_paymentinstruments_get"
      end
      # if @api_client.config.client_side_validation && profile_id > 36
      #   fail ArgumentError, 'invalid value for "profile_id" when calling PaymentInstrumentsApi.tms_v1_instrumentidentifiers_token_id_paymentinstruments_get, must be smaller than or equal to 36.'
      # end

      # if @api_client.config.client_side_validation && profile_id < 36
      #   fail ArgumentError, 'invalid value for "profile_id" when calling PaymentInstrumentsApi.tms_v1_instrumentidentifiers_token_id_paymentinstruments_get, must be greater than or equal to 36.'
      # end

      # verify the required parameter 'token_id' is set
      if @api_client.config.client_side_validation && token_id.nil?
        fail ArgumentError, "Missing the required parameter 'token_id' when calling PaymentInstrumentsApi.tms_v1_instrumentidentifiers_token_id_paymentinstruments_get"
      end
      # if @api_client.config.client_side_validation && token_id > 32
      #   fail ArgumentError, 'invalid value for "token_id" when calling PaymentInstrumentsApi.tms_v1_instrumentidentifiers_token_id_paymentinstruments_get, must be smaller than or equal to 32.'
      # end

      # if @api_client.config.client_side_validation && token_id < 16
      #   fail ArgumentError, 'invalid value for "token_id" when calling PaymentInstrumentsApi.tms_v1_instrumentidentifiers_token_id_paymentinstruments_get, must be greater than or equal to 16.'
      # end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling PaymentInstrumentsApi.tms_v1_instrumentidentifiers_token_id_paymentinstruments_get, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PaymentInstrumentsApi.tms_v1_instrumentidentifiers_token_id_paymentinstruments_get, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PaymentInstrumentsApi.tms_v1_instrumentidentifiers_token_id_paymentinstruments_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = 'tms/v1/instrumentidentifiers/{tokenId}/paymentinstruments'.sub('{' + 'tokenId' + '}', token_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])
      header_params[:'profile-id'] = profile_id

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TmsV1InstrumentidentifiersPaymentinstrumentsGet200Response')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentInstrumentsApi#tms_v1_instrumentidentifiers_token_id_paymentinstruments_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a Payment Instrument
    # @param profile_id The id of a profile containing user specific TMS configuration.
    # @param body Please specify the customers payment details for card or bank account.
    # @param [Hash] opts the optional parameters
    # @return [TmsV1PaymentinstrumentsPost201Response]
    def tms_v1_paymentinstruments_post(profile_id, body, opts = {})
      data, _status_code, _headers = tms_v1_paymentinstruments_post_with_http_info(profile_id, body, opts)
      return data, _status_code, _headers
    end

    # Create a Payment Instrument
    # @param profile_id The id of a profile containing user specific TMS configuration.
    # @param body Please specify the customers payment details for card or bank account.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TmsV1PaymentinstrumentsPost201Response, Fixnum, Hash)>] TmsV1PaymentinstrumentsPost201Response data, response status code and response headers
    def tms_v1_paymentinstruments_post_with_http_info(profile_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentInstrumentsApi.tms_v1_paymentinstruments_post ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling PaymentInstrumentsApi.tms_v1_paymentinstruments_post"
      end
      # if @api_client.config.client_side_validation && profile_id > 36
      #   fail ArgumentError, 'invalid value for "profile_id" when calling PaymentInstrumentsApi.tms_v1_paymentinstruments_post, must be smaller than or equal to 36.'
      # end

      # if @api_client.config.client_side_validation && profile_id < 36
      #   fail ArgumentError, 'invalid value for "profile_id" when calling PaymentInstrumentsApi.tms_v1_paymentinstruments_post, must be greater than or equal to 36.'
      # end

      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PaymentInstrumentsApi.tms_v1_paymentinstruments_post"
      end
      # resource path
      local_var_path = 'tms/v1/paymentinstruments'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])
      header_params[:'profile-id'] = profile_id

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TmsV1PaymentinstrumentsPost201Response')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentInstrumentsApi#tms_v1_paymentinstruments_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a Payment Instrument
    # @param profile_id The id of a profile containing user specific TMS configuration.
    # @param token_id The TokenId of a Payment Instrument.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def tms_v1_paymentinstruments_token_id_delete(profile_id, token_id, opts = {})
      data, status_code, headers = tms_v1_paymentinstruments_token_id_delete_with_http_info(profile_id, token_id, opts)
      return data, status_code, headers
    end

    # Delete a Payment Instrument
    # @param profile_id The id of a profile containing user specific TMS configuration.
    # @param token_id The TokenId of a Payment Instrument.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def tms_v1_paymentinstruments_token_id_delete_with_http_info(profile_id, token_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentInstrumentsApi.tms_v1_paymentinstruments_token_id_delete ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling PaymentInstrumentsApi.tms_v1_paymentinstruments_token_id_delete"
      end
      # if @api_client.config.client_side_validation && profile_id > 36
      #   fail ArgumentError, 'invalid value for "profile_id" when calling PaymentInstrumentsApi.tms_v1_paymentinstruments_token_id_delete, must be smaller than or equal to 36.'
      # end

      # if @api_client.config.client_side_validation && profile_id < 36
      #   fail ArgumentError, 'invalid value for "profile_id" when calling PaymentInstrumentsApi.tms_v1_paymentinstruments_token_id_delete, must be greater than or equal to 36.'
      # end

      # verify the required parameter 'token_id' is set
      if @api_client.config.client_side_validation && token_id.nil?
        fail ArgumentError, "Missing the required parameter 'token_id' when calling PaymentInstrumentsApi.tms_v1_paymentinstruments_token_id_delete"
      end
      # if @api_client.config.client_side_validation && token_id > 32
      #   fail ArgumentError, 'invalid value for "token_id" when calling PaymentInstrumentsApi.tms_v1_paymentinstruments_token_id_delete, must be smaller than or equal to 32.'
      # end

      # if @api_client.config.client_side_validation && token_id < 16
      #   fail ArgumentError, 'invalid value for "token_id" when calling PaymentInstrumentsApi.tms_v1_paymentinstruments_token_id_delete, must be greater than or equal to 16.'
      # end

      # resource path
      local_var_path = 'tms/v1/paymentinstruments/{tokenId}'.sub('{' + 'tokenId' + '}', token_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])
      header_params[:'profile-id'] = profile_id

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentInstrumentsApi#tms_v1_paymentinstruments_token_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve a Payment Instrument
    # @param profile_id The id of a profile containing user specific TMS configuration.
    # @param token_id The TokenId of a Payment Instrument.
    # @param [Hash] opts the optional parameters
    # @return [TmsV1PaymentinstrumentsPost201Response]
    def tms_v1_paymentinstruments_token_id_get(profile_id, token_id, opts = {})
      data, _status_code, _headers = tms_v1_paymentinstruments_token_id_get_with_http_info(profile_id, token_id, opts)
      return data, _status_code, _headers
    end

    # Retrieve a Payment Instrument
    # @param profile_id The id of a profile containing user specific TMS configuration.
    # @param token_id The TokenId of a Payment Instrument.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TmsV1PaymentinstrumentsPost201Response, Fixnum, Hash)>] TmsV1PaymentinstrumentsPost201Response data, response status code and response headers
    def tms_v1_paymentinstruments_token_id_get_with_http_info(profile_id, token_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentInstrumentsApi.tms_v1_paymentinstruments_token_id_get ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling PaymentInstrumentsApi.tms_v1_paymentinstruments_token_id_get"
      end
      # if @api_client.config.client_side_validation && profile_id > 36
      #   fail ArgumentError, 'invalid value for "profile_id" when calling PaymentInstrumentsApi.tms_v1_paymentinstruments_token_id_get, must be smaller than or equal to 36.'
      # end

      # if @api_client.config.client_side_validation && profile_id < 36
      #   fail ArgumentError, 'invalid value for "profile_id" when calling PaymentInstrumentsApi.tms_v1_paymentinstruments_token_id_get, must be greater than or equal to 36.'
      # end

      # verify the required parameter 'token_id' is set
      if @api_client.config.client_side_validation && token_id.nil?
        fail ArgumentError, "Missing the required parameter 'token_id' when calling PaymentInstrumentsApi.tms_v1_paymentinstruments_token_id_get"
      end
      # if @api_client.config.client_side_validation && token_id > 32
      #   fail ArgumentError, 'invalid value for "token_id" when calling PaymentInstrumentsApi.tms_v1_paymentinstruments_token_id_get, must be smaller than or equal to 32.'
      # end

      # if @api_client.config.client_side_validation && token_id < 16
      #   fail ArgumentError, 'invalid value for "token_id" when calling PaymentInstrumentsApi.tms_v1_paymentinstruments_token_id_get, must be greater than or equal to 16.'
      # end

      # resource path
      local_var_path = 'tms/v1/paymentinstruments/{tokenId}'.sub('{' + 'tokenId' + '}', token_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])
      header_params[:'profile-id'] = profile_id

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TmsV1PaymentinstrumentsPost201Response')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentInstrumentsApi#tms_v1_paymentinstruments_token_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a Payment Instrument
    # @param profile_id The id of a profile containing user specific TMS configuration.
    # @param token_id The TokenId of a Payment Instrument.
    # @param body Please specify the customers payment details.
    # @param [Hash] opts the optional parameters
    # @return [TmsV1PaymentinstrumentsPost201Response]
    def tms_v1_paymentinstruments_token_id_patch(profile_id, token_id, body, opts = {})
      data, _status_code, _headers = tms_v1_paymentinstruments_token_id_patch_with_http_info(profile_id, token_id, body, opts)
      return data, _status_code, _headers
    end

    # Update a Payment Instrument
    # @param profile_id The id of a profile containing user specific TMS configuration.
    # @param token_id The TokenId of a Payment Instrument.
    # @param body Please specify the customers payment details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TmsV1PaymentinstrumentsPost201Response, Fixnum, Hash)>] TmsV1PaymentinstrumentsPost201Response data, response status code and response headers
    def tms_v1_paymentinstruments_token_id_patch_with_http_info(profile_id, token_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentInstrumentsApi.tms_v1_paymentinstruments_token_id_patch ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling PaymentInstrumentsApi.tms_v1_paymentinstruments_token_id_patch"
      end
      # if @api_client.config.client_side_validation && profile_id > 36
      #   fail ArgumentError, 'invalid value for "profile_id" when calling PaymentInstrumentsApi.tms_v1_paymentinstruments_token_id_patch, must be smaller than or equal to 36.'
      # end

      # if @api_client.config.client_side_validation && profile_id < 36
      #   fail ArgumentError, 'invalid value for "profile_id" when calling PaymentInstrumentsApi.tms_v1_paymentinstruments_token_id_patch, must be greater than or equal to 36.'
      # end

      # verify the required parameter 'token_id' is set
      if @api_client.config.client_side_validation && token_id.nil?
        fail ArgumentError, "Missing the required parameter 'token_id' when calling PaymentInstrumentsApi.tms_v1_paymentinstruments_token_id_patch"
      end
      # if @api_client.config.client_side_validation && token_id > 32
      #   fail ArgumentError, 'invalid value for "token_id" when calling PaymentInstrumentsApi.tms_v1_paymentinstruments_token_id_patch, must be smaller than or equal to 32.'
      # end

      # if @api_client.config.client_side_validation && token_id < 16
      #   fail ArgumentError, 'invalid value for "token_id" when calling PaymentInstrumentsApi.tms_v1_paymentinstruments_token_id_patch, must be greater than or equal to 16.'
      # end

      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PaymentInstrumentsApi.tms_v1_paymentinstruments_token_id_patch"
      end
      # resource path
      local_var_path = 'tms/v1/paymentinstruments/{tokenId}'.sub('{' + 'tokenId' + '}', token_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])
      header_params[:'profile-id'] = profile_id

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TmsV1PaymentinstrumentsPost201Response')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentInstrumentsApi#tms_v1_paymentinstruments_token_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
