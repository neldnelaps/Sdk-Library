//
// SetEmailViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Информация о привязке email. */
public struct SetEmailViewModel: Codable, JSONEncodable, Hashable {

    /** Привязываемый адрес электронной почты. */
    public var emailAddress: String?
    public var emailAttachType: CustomerActionType?
    /** Источник привязки электронной почты. */
    public var emailAttachSourceId: String?

    public init(emailAddress: String? = nil, emailAttachType: CustomerActionType? = nil, emailAttachSourceId: String? = nil) {
        self.emailAddress = emailAddress
        self.emailAttachType = emailAttachType
        self.emailAttachSourceId = emailAttachSourceId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case emailAddress
        case emailAttachType
        case emailAttachSourceId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(emailAttachType, forKey: .emailAttachType)
        try container.encodeIfPresent(emailAttachSourceId, forKey: .emailAttachSourceId)
    }
}

