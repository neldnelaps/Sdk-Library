//
// EmitVirtualCardInfoModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Информация о возможности выпуска виртуальной карты. */
public struct EmitVirtualCardInfoModel: Codable, JSONEncodable, Hashable {

    /** Текущее количество виртуальных карт у клиента. */
    public var currentCountOfVirtualCards: Int?
    /** Возможность выпуска виртуальной карты (true-возможно выпустить, false-невозможно выпустить). */
    public var isVirtualCardEmissionAllowed: Bool?

    public init(currentCountOfVirtualCards: Int? = nil, isVirtualCardEmissionAllowed: Bool? = nil) {
        self.currentCountOfVirtualCards = currentCountOfVirtualCards
        self.isVirtualCardEmissionAllowed = isVirtualCardEmissionAllowed
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case currentCountOfVirtualCards
        case isVirtualCardEmissionAllowed
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(currentCountOfVirtualCards, forKey: .currentCountOfVirtualCards)
        try container.encodeIfPresent(isVirtualCardEmissionAllowed, forKey: .isVirtualCardEmissionAllowed)
    }
}

