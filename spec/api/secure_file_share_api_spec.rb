=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for CyberSource::SecureFileShareApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SecureFileShareApi' do
  before do
    # run before each test
    @instance = CyberSource::SecureFileShareApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SecureFileShareApi' do
    it 'should create an instance of SecureFileShareApi' do
      expect(@instance).to be_instance_of(CyberSource::SecureFileShareApi)
    end
  end

  # unit tests for get_file
  # Download a file with file identifier
  # Download a file for the given file identifier
  # @param file_id Unique identifier for each file
  # @param [Hash] opts the optional parameters
  # @option opts [String] :organization_id Valid Cybersource Organization Id
  # @return [nil]
  describe 'get_file test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_file_detail
  # Get list of files
  # Get list of files and it&#39;s information of them available inside the report directory
  # @param start_date Valid start date in **ISO 8601 format** Please refer the following link to know more about ISO 8601 format. - https://xml2rfc.tools.ietf.org/public/rfc/html/rfc3339.html#anchor14   **Example date format:**   - yyyy-MM-dd 
  # @param end_date Valid end date in **ISO 8601 format** Please refer the following link to know more about ISO 8601 format. - https://xml2rfc.tools.ietf.org/public/rfc/html/rfc3339.html#anchor14   **Example date format:**   - yyyy-MM-dd 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :organization_id Valid Cybersource Organization Id
  # @return [V1FileDetailsGet200Response]
  describe 'get_file_detail test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
