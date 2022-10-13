//
// PositionDirectDiscountFilterViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** View-модель фильтра \&quot;Наличие прямой скидки\&quot;. */
public struct PositionDirectDiscountFilterViewModel: Codable, JSONEncodable, Hashable {

    public var id: Int?
    public var name: String?
    public var isDeletedFilterType: Bool?
    public var processParameters: String?
    public var offer: OfferInfoShortViewModel?

    public init(id: Int? = nil, name: String? = nil, isDeletedFilterType: Bool? = nil, processParameters: String? = nil, offer: OfferInfoShortViewModel? = nil) {
        self.id = id
        self.name = name
        self.isDeletedFilterType = isDeletedFilterType
        self.processParameters = processParameters
        self.offer = offer
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case isDeletedFilterType
        case processParameters
        case offer
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(isDeletedFilterType, forKey: .isDeletedFilterType)
        try container.encodeIfPresent(processParameters, forKey: .processParameters)
        try container.encodeIfPresent(offer, forKey: .offer)
    }
}

