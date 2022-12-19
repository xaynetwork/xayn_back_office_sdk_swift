# Swift5 API client for OpenAPIClient

# Back Office
For this system, a document is anything that has an id, a snippet, and an arbitrary set of properties.
The id uniquely identifies the document in the system.
The system uses the snippet to create a document representation that can be matched against user interests.

It is possible to attach any properties to a document; the system will not use them but will be returned together with the document when asking for personalized documents for a user. They could help store information like a title and the URL where it is possible to find the document. Each document can have its own set of properties.

The API offers an endpoint that allows uploading the documents to the system. After a successful upload, it will be possible to use the document in other endpoints.

# Auth
To authenticate with the API, a token will be provided.

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: 1.0.0
- Package version: 
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BackOfficeAPI* | [**deleteDocument**](docs/BackOfficeAPI.md#deletedocument) | **DELETE** /documents/{document_id} | Delete the document from the system.
*BackOfficeAPI* | [**deleteDocumentProperties**](docs/BackOfficeAPI.md#deletedocumentproperties) | **DELETE** /documents/{document_id}/properties | Delete all document properties
*BackOfficeAPI* | [**deleteDocumentProperty**](docs/BackOfficeAPI.md#deletedocumentproperty) | **DELETE** /documents/{document_id}/properties/{property_id} | Delete a document property
*BackOfficeAPI* | [**deleteDocuments**](docs/BackOfficeAPI.md#deletedocuments) | **DELETE** /documents | Delete all listed documents.
*BackOfficeAPI* | [**getDocumentProperties**](docs/BackOfficeAPI.md#getdocumentproperties) | **GET** /documents/{document_id}/properties | Get all document properties
*BackOfficeAPI* | [**getDocumentProperty**](docs/BackOfficeAPI.md#getdocumentproperty) | **GET** /documents/{document_id}/properties/{property_id} | Get a document property
*BackOfficeAPI* | [**ingestDocuments**](docs/BackOfficeAPI.md#ingestdocuments) | **POST** /documents | Add documents to the system
*BackOfficeAPI* | [**setDocumentProperties**](docs/BackOfficeAPI.md#setdocumentproperties) | **PUT** /documents/{document_id}/properties | Set all document properties
*BackOfficeAPI* | [**setDocumentProperty**](docs/BackOfficeAPI.md#setdocumentproperty) | **PUT** /documents/{document_id}/properties/{property_id} | Set a document property


## Documentation For Models

 - [BaseError](docs/BaseError.md)
 - [DeleteDocumentsRequest](docs/DeleteDocumentsRequest.md)
 - [DocumentPropertiesRequest](docs/DocumentPropertiesRequest.md)
 - [DocumentPropertiesResponse](docs/DocumentPropertiesResponse.md)
 - [DocumentPropertyRequest](docs/DocumentPropertyRequest.md)
 - [DocumentPropertyResponse](docs/DocumentPropertyResponse.md)
 - [IngestedDocument](docs/IngestedDocument.md)
 - [IngestionError](docs/IngestionError.md)
 - [IngestionErrorAllOf](docs/IngestionErrorAllOf.md)
 - [IngestionErrorAllOfDetails](docs/IngestionErrorAllOfDetails.md)
 - [IngestionErrorAllOfDetailsDocuments](docs/IngestionErrorAllOfDetailsDocuments.md)
 - [IngestionRequest](docs/IngestionRequest.md)


## Documentation For Authorization


## ApiKeyAuth

- **Type**: API key
- **API key parameter name**: authorizationToken
- **Location**: HTTP header


## Author


