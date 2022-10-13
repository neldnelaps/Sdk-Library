//
// MarketingCampaignSimpleViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** View-модель маркетинговой кампании. */
public struct MarketingCampaignSimpleViewModel: Codable, JSONEncodable, Hashable {

    /** Id. */
    public var id: Int?
    /** Название. */
    public var name: String?
    /** ID партнера. */
    public var partnerId: Int?
    /** Значение, определяющее, находится ли кампания в архиве. */
    public var isDeleted: Bool?

    public init(id: Int? = nil, name: String? = nil, partnerId: Int? = nil, isDeleted: Bool? = nil) {
        self.id = id
        self.name = name
        self.partnerId = partnerId
        self.isDeleted = isDeleted
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case partnerId
        case isDeleted
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(partnerId, forKey: .partnerId)
        try container.encodeIfPresent(isDeleted, forKey: .isDeleted)
    }
}

