//
// BalanceRequestModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BalanceRequestModelAnyOf: Codable, JSONEncodable, Hashable {

    public var giftCertificateIdentifierModel: GiftCertificateIdentifierModel?

    public init(giftCertificateIdentifierModel: GiftCertificateIdentifierModel? = nil) {
        self.giftCertificateIdentifierModel = giftCertificateIdentifierModel
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case giftCertificateIdentifierModel
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(giftCertificateIdentifierModel, forKey: .giftCertificateIdentifierModel)
    }
}

