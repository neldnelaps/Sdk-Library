//
// OffersImportResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Ответ на запрос импорта акций. */
public struct OffersImportResponse: Codable, JSONEncodable, Hashable {

    /** Количество новых акций. */
    public var inserted: Int?
    /** Количество обновленных акций. */
    public var updated: Int?
    /** Количество неизмененных акций. */
    public var skipped: Int?
    /** Ошибки импорта по акциям. */
    public var errors: [OfferImportError]?
    /** Предупреждения, возникшие при импорте, с идентификаторами акций. */
    public var offerImportWarnings: [OfferImportWarning]?

    public init(inserted: Int? = nil, updated: Int? = nil, skipped: Int? = nil, errors: [OfferImportError]? = nil, offerImportWarnings: [OfferImportWarning]? = nil) {
        self.inserted = inserted
        self.updated = updated
        self.skipped = skipped
        self.errors = errors
        self.offerImportWarnings = offerImportWarnings
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case inserted
        case updated
        case skipped
        case errors
        case offerImportWarnings
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(inserted, forKey: .inserted)
        try container.encodeIfPresent(updated, forKey: .updated)
        try container.encodeIfPresent(skipped, forKey: .skipped)
        try container.encodeIfPresent(errors, forKey: .errors)
        try container.encodeIfPresent(offerImportWarnings, forKey: .offerImportWarnings)
    }
}
