//
// IngestionError.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct IngestionError: Codable, JSONEncodable, Hashable {

    /** Request ID optionally generated from the service. It can be communicated to xayn to help debugging. */
    public var requestId: String
    /** What kind of error this is. */
    public var kind: String
    public var details: IngestionErrorAllOfDetails

    public init(requestId: String, kind: String, details: IngestionErrorAllOfDetails) {
        self.requestId = requestId
        self.kind = kind
        self.details = details
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case requestId = "request_id"
        case kind
        case details
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(requestId, forKey: .requestId)
        try container.encode(kind, forKey: .kind)
        try container.encode(details, forKey: .details)
    }
}
