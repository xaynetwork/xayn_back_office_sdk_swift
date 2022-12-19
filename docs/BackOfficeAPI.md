# BackOfficeAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteDocument**](BackOfficeAPI.md#deletedocument) | **DELETE** /documents/{document_id} | Delete the document from the system.
[**deleteDocumentProperties**](BackOfficeAPI.md#deletedocumentproperties) | **DELETE** /documents/{document_id}/properties | Delete all document properties
[**deleteDocumentProperty**](BackOfficeAPI.md#deletedocumentproperty) | **DELETE** /documents/{document_id}/properties/{property_id} | Delete a document property
[**deleteDocuments**](BackOfficeAPI.md#deletedocuments) | **DELETE** /documents | Delete all listed documents.
[**getDocumentProperties**](BackOfficeAPI.md#getdocumentproperties) | **GET** /documents/{document_id}/properties | Get all document properties
[**getDocumentProperty**](BackOfficeAPI.md#getdocumentproperty) | **GET** /documents/{document_id}/properties/{property_id} | Get a document property
[**ingestDocuments**](BackOfficeAPI.md#ingestdocuments) | **POST** /documents | Add documents to the system
[**setDocumentProperties**](BackOfficeAPI.md#setdocumentproperties) | **PUT** /documents/{document_id}/properties | Set all document properties
[**setDocumentProperty**](BackOfficeAPI.md#setdocumentproperty) | **PUT** /documents/{document_id}/properties/{property_id} | Set a document property


# **deleteDocument**
```swift
    open class func deleteDocument(documentId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete the document from the system.

Permanently deletes the document from the system. The endpoint is idempotent. Deleting a non-existing document does not produce an error.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let documentId = "documentId_example" // String | Id of the document

// Delete the document from the system.
BackOfficeAPI.deleteDocument(documentId: documentId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String** | Id of the document | 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDocumentProperties**
```swift
    open class func deleteDocumentProperties(documentId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete all document properties

Deletes all the properties of the document.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let documentId = "documentId_example" // String | Id of the document

// Delete all document properties
BackOfficeAPI.deleteDocumentProperties(documentId: documentId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String** | Id of the document | 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDocumentProperty**
```swift
    open class func deleteDocumentProperty(documentId: String, propertyId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a document property

Deletes the property of the document.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let documentId = "documentId_example" // String | Id of the document
let propertyId = "propertyId_example" // String | Id of the document property

// Delete a document property
BackOfficeAPI.deleteDocumentProperty(documentId: documentId, propertyId: propertyId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String** | Id of the document | 
 **propertyId** | **String** | Id of the document property | 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDocuments**
```swift
    open class func deleteDocuments(deleteDocumentsRequest: DeleteDocumentsRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete all listed documents.

Delete all documents listed in the request body. The endpoint is idempotent. I.e. if the list contains one or multiple non-existing documents, no error is produced.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let deleteDocumentsRequest = DeleteDocumentsRequest(documents: ["documents_example"]) // DeleteDocumentsRequest |  (optional)

// Delete all listed documents.
BackOfficeAPI.deleteDocuments(deleteDocumentsRequest: deleteDocumentsRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deleteDocumentsRequest** | [**DeleteDocumentsRequest**](DeleteDocumentsRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDocumentProperties**
```swift
    open class func getDocumentProperties(documentId: String, completion: @escaping (_ data: DocumentPropertiesResponse?, _ error: Error?) -> Void)
```

Get all document properties

Gets all the properties of the document.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let documentId = "documentId_example" // String | Id of the document

// Get all document properties
BackOfficeAPI.getDocumentProperties(documentId: documentId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String** | Id of the document | 

### Return type

[**DocumentPropertiesResponse**](DocumentPropertiesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDocumentProperty**
```swift
    open class func getDocumentProperty(documentId: String, propertyId: String, completion: @escaping (_ data: DocumentPropertyResponse?, _ error: Error?) -> Void)
```

Get a document property

Gets the property of the document.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let documentId = "documentId_example" // String | Id of the document
let propertyId = "propertyId_example" // String | Id of the document property

// Get a document property
BackOfficeAPI.getDocumentProperty(documentId: documentId, propertyId: propertyId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String** | Id of the document | 
 **propertyId** | **String** | Id of the document property | 

### Return type

[**DocumentPropertyResponse**](DocumentPropertyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ingestDocuments**
```swift
    open class func ingestDocuments(ingestionRequest: IngestionRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Add documents to the system

Add documents to the system. The system will create a representation of the document that will be used to match it against the preferences of a user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ingestionRequest = IngestionRequest(documents: [IngestedDocument(id: "id_example", snippet: "snippet_example", properties: "TODO")]) // IngestionRequest |  (optional)

// Add documents to the system
BackOfficeAPI.ingestDocuments(ingestionRequest: ingestionRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingestionRequest** | [**IngestionRequest**](IngestionRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setDocumentProperties**
```swift
    open class func setDocumentProperties(documentId: String, documentPropertiesRequest: DocumentPropertiesRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Set all document properties

Sets or replaces all the properties of the document.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let documentId = "documentId_example" // String | Id of the document
let documentPropertiesRequest = DocumentPropertiesRequest(properties: "TODO") // DocumentPropertiesRequest |  (optional)

// Set all document properties
BackOfficeAPI.setDocumentProperties(documentId: documentId, documentPropertiesRequest: documentPropertiesRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String** | Id of the document | 
 **documentPropertiesRequest** | [**DocumentPropertiesRequest**](DocumentPropertiesRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setDocumentProperty**
```swift
    open class func setDocumentProperty(documentId: String, propertyId: String, documentPropertyRequest: DocumentPropertyRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Set a document property

Sets or replaces the property of the document.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let documentId = "documentId_example" // String | Id of the document
let propertyId = "propertyId_example" // String | Id of the document property
let documentPropertyRequest = DocumentPropertyRequest(property: "TODO") // DocumentPropertyRequest |  (optional)

// Set a document property
BackOfficeAPI.setDocumentProperty(documentId: documentId, propertyId: propertyId, documentPropertyRequest: documentPropertyRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String** | Id of the document | 
 **propertyId** | **String** | Id of the document property | 
 **documentPropertyRequest** | [**DocumentPropertyRequest**](DocumentPropertyRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

