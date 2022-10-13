//
// TargetGroupSegmentFilterViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** View модель набора фильтров сегмента ЦА. */
public struct TargetGroupSegmentFilterViewModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор. */
    public var id: Int?
    /** Название. */
    public var name: String?
    /** Признак архивного фильтра. */
    public var isArchived: Bool?
    public var type: TargetGroupSegmentationType?
    public var filter: FilterViewModel?
    public var calculationInfo: CalculationModel?

    public init(id: Int? = nil, name: String? = nil, isArchived: Bool? = nil, type: TargetGroupSegmentationType? = nil, filter: FilterViewModel? = nil, calculationInfo: CalculationModel? = nil) {
        self.id = id
        self.name = name
        self.isArchived = isArchived
        self.type = type
        self.filter = filter
        self.calculationInfo = calculationInfo
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case isArchived
        case type
        case filter
        case calculationInfo
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(isArchived, forKey: .isArchived)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(filter, forKey: .filter)
        try container.encodeIfPresent(calculationInfo, forKey: .calculationInfo)
    }
}
