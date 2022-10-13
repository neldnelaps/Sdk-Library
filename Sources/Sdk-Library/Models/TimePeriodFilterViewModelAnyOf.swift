//
// TimePeriodFilterViewModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TimePeriodFilterViewModelAnyOf: Codable, JSONEncodable, Hashable {

    public var beginTime: HourMinuteModel?
    public var endTime: HourMinuteModel?

    public init(beginTime: HourMinuteModel? = nil, endTime: HourMinuteModel? = nil) {
        self.beginTime = beginTime
        self.endTime = endTime
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case beginTime
        case endTime
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(beginTime, forKey: .beginTime)
        try container.encodeIfPresent(endTime, forKey: .endTime)
    }
}

