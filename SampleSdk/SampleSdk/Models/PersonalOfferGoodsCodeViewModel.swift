//
// PersonalOfferGoodsCodeViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Идентификатор товара для персонального предложения. */
public struct PersonalOfferGoodsCodeViewModel: Codable, JSONEncodable, Hashable {

    /** Значение идентификатора. */
    public var value: String?

    public init(value: String? = nil) {
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(value, forKey: .value)
    }
}

