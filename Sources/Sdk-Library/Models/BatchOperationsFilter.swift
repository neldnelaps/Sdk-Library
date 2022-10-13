//
// BatchOperationsFilter.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель для фильтра пакетного начисления/списания. */
public struct BatchOperationsFilter: Codable, JSONEncodable, Hashable {

    /** Начальная дата периода в формате 0000-00-00T00:00:00Z. */
    public var fromDate: Date?
    /** Конечная дата периода в формате 0000-00-00T00:00:00Z. */
    public var toDate: Date?
    public var type: BatchType?
    public var state: BatchState?
    /** Значение идентификатора клиента. */
    public var identifier: String?
    public var identifierType: IdentifierType?
    /** Список программ лояльности. */
    public var loyaltyPrograms: [Int]?
    /** Список маркетинговых компаний. */
    public var marketingCampaigns: [Int]?
    /** Целевая аудитория. */
    public var targetGroup: Int?

    public init(fromDate: Date? = nil, toDate: Date? = nil, type: BatchType? = nil, state: BatchState? = nil, identifier: String? = nil, identifierType: IdentifierType? = nil, loyaltyPrograms: [Int]? = nil, marketingCampaigns: [Int]? = nil, targetGroup: Int? = nil) {
        self.fromDate = fromDate
        self.toDate = toDate
        self.type = type
        self.state = state
        self.identifier = identifier
        self.identifierType = identifierType
        self.loyaltyPrograms = loyaltyPrograms
        self.marketingCampaigns = marketingCampaigns
        self.targetGroup = targetGroup
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case fromDate
        case toDate
        case type
        case state
        case identifier
        case identifierType
        case loyaltyPrograms
        case marketingCampaigns
        case targetGroup
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(fromDate, forKey: .fromDate)
        try container.encodeIfPresent(toDate, forKey: .toDate)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(identifier, forKey: .identifier)
        try container.encodeIfPresent(identifierType, forKey: .identifierType)
        try container.encodeIfPresent(loyaltyPrograms, forKey: .loyaltyPrograms)
        try container.encodeIfPresent(marketingCampaigns, forKey: .marketingCampaigns)
        try container.encodeIfPresent(targetGroup, forKey: .targetGroup)
    }
}
