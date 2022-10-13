//
// CommunicationOfferCategoryFilter.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Фильтр для поиска категорий рекламных материалов. */
public struct CommunicationOfferCategoryFilter: Codable, JSONEncodable, Hashable {

    /** Название категории. */
    public var name: String?
    public var state: ArchivedState?
    /** Список идентификаторов партнеров. */
    public var partnersIds: [Int]?
    /** Идентификаторы, которые будут выбираться первыми. */
    public var sortingIds: [Int]?

    public init(name: String? = nil, state: ArchivedState? = nil, partnersIds: [Int]? = nil, sortingIds: [Int]? = nil) {
        self.name = name
        self.state = state
        self.partnersIds = partnersIds
        self.sortingIds = sortingIds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case state
        case partnersIds
        case sortingIds
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(partnersIds, forKey: .partnersIds)
        try container.encodeIfPresent(sortingIds, forKey: .sortingIds)
    }
}

