//
// SystemUserBaseViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Базовая модель пользователя системы. */
public struct SystemUserBaseViewModel: Codable, JSONEncodable, Hashable {

    /** Имя. */
    public var firstName: String?
    /** Фамилия. */
    public var lastName: String?
    /** Отчество. */
    public var patronymicName: String?
    /** Телефон. */
    public var phone: String?
    /** Email. */
    public var email: String?
    /** Часовой пояс. */
    public var timeZone: Int?

    public init(firstName: String? = nil, lastName: String? = nil, patronymicName: String? = nil, phone: String? = nil, email: String? = nil, timeZone: Int? = nil) {
        self.firstName = firstName
        self.lastName = lastName
        self.patronymicName = patronymicName
        self.phone = phone
        self.email = email
        self.timeZone = timeZone
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case firstName
        case lastName
        case patronymicName
        case phone
        case email
        case timeZone
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(patronymicName, forKey: .patronymicName)
        try container.encodeIfPresent(phone, forKey: .phone)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(timeZone, forKey: .timeZone)
    }
}
