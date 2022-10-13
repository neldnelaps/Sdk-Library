//
// ProbabilityFilterDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Фильтр \&quot;Вероятность\&quot;. */
public struct ProbabilityFilterDto: Codable, JSONEncodable, Hashable {

    /** Имя фильтра. */
    public var name: String?
    /** Параметры обработки. */
    public var processParameters: String?
    /** Вероятность (от 0 до 1). */
    public var probabilityValue: Double?

    public init(name: String? = nil, processParameters: String? = nil, probabilityValue: Double? = nil) {
        self.name = name
        self.processParameters = processParameters
        self.probabilityValue = probabilityValue
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case processParameters
        case probabilityValue
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(processParameters, forKey: .processParameters)
        try container.encodeIfPresent(probabilityValue, forKey: .probabilityValue)
    }
}
