//
// TimePeriodFilterDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Фильтр \&quot;Временной промежуток\&quot;. */
public struct TimePeriodFilterDto: Codable, JSONEncodable, Hashable {

    /** Имя фильтра. */
    public var name: String?
    /** Параметры обработки. */
    public var processParameters: String?
    /** Часы начала. */
    public var beginHour: Int?
    /** Минуты начала. */
    public var beginMinute: Int?
    /** Часы окончания. */
    public var endHour: Int?
    /** Минуты окончания. */
    public var endMinute: Int?

    public init(name: String? = nil, processParameters: String? = nil, beginHour: Int? = nil, beginMinute: Int? = nil, endHour: Int? = nil, endMinute: Int? = nil) {
        self.name = name
        self.processParameters = processParameters
        self.beginHour = beginHour
        self.beginMinute = beginMinute
        self.endHour = endHour
        self.endMinute = endMinute
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case processParameters
        case beginHour
        case beginMinute
        case endHour
        case endMinute
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(processParameters, forKey: .processParameters)
        try container.encodeIfPresent(beginHour, forKey: .beginHour)
        try container.encodeIfPresent(beginMinute, forKey: .beginMinute)
        try container.encodeIfPresent(endHour, forKey: .endHour)
        try container.encodeIfPresent(endMinute, forKey: .endMinute)
    }
}
