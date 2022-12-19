//
// DocumentPropertiesRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DocumentPropertiesRequest: Codable, JSONEncodable, Hashable {

    /** Arbitrary properties that can be attached to a document. A key must be a valid `DocumentPropertyId`. */
    public var properties: [String: AnyCodable]

    public init(properties: [String: AnyCodable]) {
        self.properties = properties
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case properties
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(properties, forKey: .properties)
    }
}
