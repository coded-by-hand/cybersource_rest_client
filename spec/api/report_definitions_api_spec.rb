=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for CyberSource::ReportDefinitionsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ReportDefinitionsApi' do
  before do
    # run before each test
    @instance = CyberSource::ReportDefinitionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReportDefinitionsApi' do
    it 'should create an instance of ReportDefinitionsApi' do
      expect(@instance).to be_instance_of(CyberSource::ReportDefinitionsApi)
    end
  end

  # unit tests for get_resource_info_by_report_definition
  # Get a single report definition information
  # The report definition name must be used as path parameter exclusive of each other
  # @param report_definition_name Name of the Report definition to retrieve
  # @param [Hash] opts the optional parameters
  # @option opts [String] :organization_id Valid Cybersource Organization Id
  # @return [ReportingV3ReportDefinitionsNameGet200Response]
  describe 'get_resource_info_by_report_definition test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_resource_v2_info
  # Get reporting resource information
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :organization_id Valid Cybersource Organization Id
  # @return [ReportingV3ReportDefinitionsGet200Response]
  describe 'get_resource_v2_info test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
