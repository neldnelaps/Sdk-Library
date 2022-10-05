//
// ResetPasswordStartModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Параметры для запуска процесса \&quot;Сброс пароля\&quot;. */
public struct ResetPasswordStartModel: Codable, JSONEncodable, Hashable {

    /** Нотификатор (номер телефона/адрес email).  По нему осуществлялся поиск возможных идентификаторов. */
    public var notifierIdentity: String?

    public init(notifierIdentity: String? = nil) {
        self.notifierIdentity = notifierIdentity
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case notifierIdentity
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(notifierIdentity, forKey: .notifierIdentity)
    }
}
