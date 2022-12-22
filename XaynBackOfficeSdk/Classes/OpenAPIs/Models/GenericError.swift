//
// GenericError.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GenericError: Codable, JSONEncodable, Hashable {

    /** Request ID optionally generated from the service. It can be communicated to xayn to help debugging. */
    public var requestId: String?
    /** What kind of error this is. */
    public var kind: String?
    /** Additional error details. Might differ depending on debug options. */
    public var details: AnyCodable?

    public init(requestId: String? = nil, kind: String? = nil, details: AnyCodable? = nil) {
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
        try container.encodeIfPresent(requestId, forKey: .requestId)
        try container.encodeIfPresent(kind, forKey: .kind)
        try container.encodeIfPresent(details, forKey: .details)
    }
}
