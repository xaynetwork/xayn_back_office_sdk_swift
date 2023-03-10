//
// IngestionErrorAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct IngestionErrorAllOf: Codable, JSONEncodable, Hashable {

    public var details: IngestionErrorAllOfDetails

    public init(details: IngestionErrorAllOfDetails) {
        self.details = details
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case details
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(details, forKey: .details)
    }
}

