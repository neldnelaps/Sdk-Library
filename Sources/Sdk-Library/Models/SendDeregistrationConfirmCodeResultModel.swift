//
// SendDeregistrationConfirmCodeResultModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель результат обработки отправки кода для выхода из ПЛ. */
public struct SendDeregistrationConfirmCodeResultModel: Codable, JSONEncodable, Hashable {

    /** Длина кода подтверждения. */
    public var confirmCodeLength: Int?

    public init(confirmCodeLength: Int? = nil) {
        self.confirmCodeLength = confirmCodeLength
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case confirmCodeLength
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(confirmCodeLength, forKey: .confirmCodeLength)
    }
}
