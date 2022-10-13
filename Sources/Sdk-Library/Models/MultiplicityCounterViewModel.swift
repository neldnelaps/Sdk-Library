//
// MultiplicityCounterViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель представления для счетчика, связанного с кратностью. */
public struct MultiplicityCounterViewModel: Codable, JSONEncodable, Hashable {

    /** Внутренний идентификатор счетчика. */
    public var id: Int?
    /** Внешний идентификатор счетчика. */
    public var uid: UUID?
    /** Название счетчика. */
    public var name: String?
    public var author: CreatorModel?
    /** Дата создания счетчика. */
    public var creationDate: Date?
    public var partner: PartnerViewModel?
    /** Список моделей для счетчика. */
    public var targets: [CounterTarget]?
    public var loyaltyProgram: LoyaltyProgramModel?
    public var aggregationStrategy: CounterAggregationStrategy?
    /** Доступность редактирования счетчика (true - можно редактировать, false - нельзя). */
    public var editable: Bool?

    public init(id: Int? = nil, uid: UUID? = nil, name: String? = nil, author: CreatorModel? = nil, creationDate: Date? = nil, partner: PartnerViewModel? = nil, targets: [CounterTarget]? = nil, loyaltyProgram: LoyaltyProgramModel? = nil, aggregationStrategy: CounterAggregationStrategy? = nil, editable: Bool? = nil) {
        self.id = id
        self.uid = uid
        self.name = name
        self.author = author
        self.creationDate = creationDate
        self.partner = partner
        self.targets = targets
        self.loyaltyProgram = loyaltyProgram
        self.aggregationStrategy = aggregationStrategy
        self.editable = editable
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case uid
        case name
        case author
        case creationDate
        case partner
        case targets
        case loyaltyProgram
        case aggregationStrategy
        case editable
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(uid, forKey: .uid)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(author, forKey: .author)
        try container.encodeIfPresent(creationDate, forKey: .creationDate)
        try container.encodeIfPresent(partner, forKey: .partner)
        try container.encodeIfPresent(targets, forKey: .targets)
        try container.encodeIfPresent(loyaltyProgram, forKey: .loyaltyProgram)
        try container.encodeIfPresent(aggregationStrategy, forKey: .aggregationStrategy)
        try container.encodeIfPresent(editable, forKey: .editable)
    }
}
