//
// UserInfoBase.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Информация о пользователе. */
public struct UserInfoBase: Codable, JSONEncodable, Hashable {

    /** Идентификатор пользователя. */
    public var id: Int?
    /** Уникальный идентификатор пользователя. */
    public var personUid: UUID?
    /** Имя. */
    public var firstName: String?
    /** Фамилия. */
    public var lastName: String?
    /** Отчество. */
    public var patronymicName: String?
    /** Номер телефона. */
    public var phoneNumber: String?
    /** Email. */
    public var email: String?

    public init(id: Int? = nil, personUid: UUID? = nil, firstName: String? = nil, lastName: String? = nil, patronymicName: String? = nil, phoneNumber: String? = nil, email: String? = nil) {
        self.id = id
        self.personUid = personUid
        self.firstName = firstName
        self.lastName = lastName
        self.patronymicName = patronymicName
        self.phoneNumber = phoneNumber
        self.email = email
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case personUid
        case firstName
        case lastName
        case patronymicName
        case phoneNumber
        case email
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(personUid, forKey: .personUid)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(patronymicName, forKey: .patronymicName)
        try container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        try container.encodeIfPresent(email, forKey: .email)
    }
}

