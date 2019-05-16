# CyberSource::Riskv1decisionsPaymentInformationCard

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number** | **String** | The customer’s payment card number, also knows as the Primary Account Nunmber (PAN). You can also use this field for encoded account numbers.  For processor-specific information, see the &#x60;customer_cc_number&#x60; field in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html)  | [optional] 
**type** | **String** | Type of card to authorize. - 001 Visa - 002 Mastercard - 003 Amex - 004 Discover - 005: Diners Club - 007: JCB - 024: Maestro (UK Domestic) - 039 Encoded account number - 042: Maestro (International)  | [optional] 
**bin** | **String** | description: The BIN is the first six digits of the card&#39;s Primary Account Number (PAN).  | [optional] 
**expiration_month** | **String** | Two-digit month in which the payment card expires.  Format: &#x60;MM&#x60;.  Valid values: &#x60;01&#x60; through &#x60;12&#x60;.  **Barclays and Streamline**\\ For Maestro (UK Domestic) and Maestro (International) cards on Barclays and Streamline, this must be a valid value (&#x60;01&#x60; through &#x60;12&#x60;) but is not required to be a valid expiration date. In other words, an expiration date that is in the past does not cause CyberSource to reject your request. However, an invalid expiration date might cause the issuer to reject your request.  **Encoded Account Numbers**\\ For encoded account numbers (_type_&#x3D;039), if there is no expiration date on the card, use &#x60;12&#x60;.  For processor-specific information, see the &#x60;customer_cc_expmo&#x60; field in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html)  | [optional] 
**expiration_year** | **String** | Four-digit year in which the credit card expires.  Format: &#x60;YYYY&#x60;.   **Barclays and Streamline**\\ For Maestro (UK Domestic) and Maestro (International) cards on Barclays and Streamline, this must be a valid value (&#x60;1900&#x60; through &#x60;3000&#x60;) but is not required to be a valid expiration date. In other words, an expiration date that is in the past does not cause CyberSource to reject your request. However, an invalid expiration date might cause the issuer to reject your request.  **FDC Nashville Global and FDMS South**\\ You can send in 2 digits or 4 digits. If you send in 2 digits, they must be the last 2 digits of the year.  **Encoded Account Numbers**\\ For encoded account numbers (_type_&#x3D;039), if there is no expiration date on the card, use &#x60;2021&#x60;.  For processor-specific information, see the &#x60;customer_cc_expyr&#x60; field in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html)  | [optional] 

