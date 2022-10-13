//
// OfferActionChainViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** ViewModel цепочки событий. */
public struct OfferActionChainViewModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор цепочки. */
    public var id: Int?
    public var eventType: OfferEventType?
    /** Название цепочки. */
    public var name: String?
    /** Порядковый номер цепочки. */
    public var order: Int?
    /** Ссылка на действие-владельца цепочки. */
    public var parentActionId: Int?

    public init(id: Int? = nil, eventType: OfferEventType? = nil, name: String? = nil, order: Int? = nil, parentActionId: Int? = nil) {
        self.id = id
        self.eventType = eventType
        self.name = name
        self.order = order
        self.parentActionId = parentActionId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case eventType
        case name
        case order
        case parentActionId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(eventType, forKey: .eventType)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(order, forKey: .order)
        try container.encodeIfPresent(parentActionId, forKey: .parentActionId)
    }
}

