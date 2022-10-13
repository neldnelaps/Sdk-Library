//
// DeregisterPersonModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель для удаления Участника из ПЛ. */
public struct DeregisterPersonModel: Codable, JSONEncodable, Hashable {

    /** Внутренний идентификатор удаляемого Участника ПЛ. */
    public var personId: Int?
    /** Причина выхода Участника из ПЛ. */
    public var reason: String?
    /** Номер телефона Участника ПЛ. */
    public var callerPhone: String?

    public init(personId: Int? = nil, reason: String? = nil, callerPhone: String? = nil) {
        self.personId = personId
        self.reason = reason
        self.callerPhone = callerPhone
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case personId
        case reason
        case callerPhone
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(personId, forKey: .personId)
        try container.encodeIfPresent(reason, forKey: .reason)
        try container.encodeIfPresent(callerPhone, forKey: .callerPhone)
    }
}

