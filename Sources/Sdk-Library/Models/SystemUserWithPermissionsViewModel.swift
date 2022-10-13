//
// SystemUserWithPermissionsViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель пользователя АРМ. */
public struct SystemUserWithPermissionsViewModel: Codable, JSONEncodable, Hashable {

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
    /** Внутренний идентификатор пользователя АРМ. */
    public var id: Int?
    /** Признак состояния пользователя АРМ (true — удален, false — не удален). */
    public var isDeleted: Bool?
    /** Логин. */
    public var login: String?
    /** Признак ограниченного количества сеансов. */
    public var isLimited: Bool?
    /** Набор ролей, закрепленные за идентификатором. */
    public var roles: [UserRoleModel]?
    /** Набор прав доступа, закрепленные за идентификатором вне роли. */
    public var permissions: [UserPermissionModel]?

    public init(firstName: String? = nil, lastName: String? = nil, patronymicName: String? = nil, phone: String? = nil, email: String? = nil, timeZone: Int? = nil, id: Int? = nil, isDeleted: Bool? = nil, login: String? = nil, isLimited: Bool? = nil, roles: [UserRoleModel]? = nil, permissions: [UserPermissionModel]? = nil) {
        self.firstName = firstName
        self.lastName = lastName
        self.patronymicName = patronymicName
        self.phone = phone
        self.email = email
        self.timeZone = timeZone
        self.id = id
        self.isDeleted = isDeleted
        self.login = login
        self.isLimited = isLimited
        self.roles = roles
        self.permissions = permissions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case firstName
        case lastName
        case patronymicName
        case phone
        case email
        case timeZone
        case id
        case isDeleted
        case login
        case isLimited
        case roles
        case permissions
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
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(isDeleted, forKey: .isDeleted)
        try container.encodeIfPresent(login, forKey: .login)
        try container.encodeIfPresent(isLimited, forKey: .isLimited)
        try container.encodeIfPresent(roles, forKey: .roles)
        try container.encodeIfPresent(permissions, forKey: .permissions)
    }
}

