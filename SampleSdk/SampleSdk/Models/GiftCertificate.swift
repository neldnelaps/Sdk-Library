//
// GiftCertificate.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GiftCertificate: Codable, JSONEncodable, Hashable {

    public var chequeLinePosId: String?
    public var data: [ItemData]?

    public init(chequeLinePosId: String? = nil, data: [ItemData]? = nil) {
        self.chequeLinePosId = chequeLinePosId
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case chequeLinePosId
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(chequeLinePosId, forKey: .chequeLinePosId)
        try container.encodeIfPresent(data, forKey: .data)
    }
}

