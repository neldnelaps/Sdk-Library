//
// AnnouncementFilter.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Фильтр для поиска рекламы. */
public struct AnnouncementFilter: Codable, JSONEncodable, Hashable {

    /** Подстрока для поиска по названию рекламы. */
    public var titleSubstr: String?
    /** Подстрока для поиска по названию рекламного места. */
    public var spaceName: String?
    /** Логическое имя рекламного места. */
    public var spaceLogicalName: String?
    public var state: AnnouncementState?
    /** Начальная дата выборки в формате 0000-00-00T00:00:00Z. */
    public var dateFrom: Date?
    /** Конечная дата выборки в формате 0000-00-00T00:00:00Z. */
    public var dateTo: Date?
    public var archivedState: ArchivedState?

    public init(titleSubstr: String? = nil, spaceName: String? = nil, spaceLogicalName: String? = nil, state: AnnouncementState? = nil, dateFrom: Date? = nil, dateTo: Date? = nil, archivedState: ArchivedState? = nil) {
        self.titleSubstr = titleSubstr
        self.spaceName = spaceName
        self.spaceLogicalName = spaceLogicalName
        self.state = state
        self.dateFrom = dateFrom
        self.dateTo = dateTo
        self.archivedState = archivedState
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case titleSubstr
        case spaceName
        case spaceLogicalName
        case state
        case dateFrom
        case dateTo
        case archivedState
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(titleSubstr, forKey: .titleSubstr)
        try container.encodeIfPresent(spaceName, forKey: .spaceName)
        try container.encodeIfPresent(spaceLogicalName, forKey: .spaceLogicalName)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(dateFrom, forKey: .dateFrom)
        try container.encodeIfPresent(dateTo, forKey: .dateTo)
        try container.encodeIfPresent(archivedState, forKey: .archivedState)
    }
}
