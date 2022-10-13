//
// DeviceEmulationCreateChequePositionModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DeviceEmulationCreateChequePositionModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Идентификатор товара. */
    public var goodID: Int?

    public init(goodID: Int? = nil) {
        self.goodID = goodID
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case goodID
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(goodID, forKey: .goodID)
    }
}

