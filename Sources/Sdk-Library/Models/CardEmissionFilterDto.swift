//
// CardEmissionFilterDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Фильтр \&quot;Карта из указанного выпуска\&quot;. */
public struct CardEmissionFilterDto: Codable, JSONEncodable, Hashable {

    /** Имя фильтра. */
    public var name: String?
    /** Параметры обработки. */
    public var processParameters: String?
    /** Выбранные выпуски. */
    public var emissionIds: [Int]?

    public init(name: String? = nil, processParameters: String? = nil, emissionIds: [Int]? = nil) {
        self.name = name
        self.processParameters = processParameters
        self.emissionIds = emissionIds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case processParameters
        case emissionIds
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(processParameters, forKey: .processParameters)
        try container.encodeIfPresent(emissionIds, forKey: .emissionIds)
    }
}

