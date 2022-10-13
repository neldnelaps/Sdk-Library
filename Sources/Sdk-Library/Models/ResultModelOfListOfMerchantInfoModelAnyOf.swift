//
// ResultModelOfListOfMerchantInfoModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ResultModelOfListOfMerchantInfoModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Данные. */
    public var data: [MerchantInfoModel]?

    public init(data: [MerchantInfoModel]? = nil) {
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(data, forKey: .data)
    }
}

