//
// UserInfoResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Информация о пользователе. */
public struct UserInfoResult: Codable, JSONEncodable, Hashable {

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
    /** День рождения. */
    public var birthDay: Date?
    public var state: PersonState?
    public var addressInfo: AddressInfo?
    public var cardShortInfo: CardShortInfo?
    public var balanceShortInfo: BalanceShortInfo?
    /** Атрибуты. */
    public var attributes: [String: AnyCodable]?
    /** Карты. */
    public var cards: [CardCompactInfoModel]?
    /** Номер телефона. */
    public var phoneNumber: String?
    /** Email. */
    public var email: String?
    /** DetailedBalanceInfo. */
    public var balanceDetailedInfo: [AccountBalanceModel]?
    public var emailDetailedInfo: UserEmailInfo?

    public init(id: Int? = nil, personUid: UUID? = nil, firstName: String? = nil, lastName: String? = nil, patronymicName: String? = nil, birthDay: Date? = nil, state: PersonState? = nil, addressInfo: AddressInfo? = nil, cardShortInfo: CardShortInfo? = nil, balanceShortInfo: BalanceShortInfo? = nil, attributes: [String: AnyCodable]? = nil, cards: [CardCompactInfoModel]? = nil, phoneNumber: String? = nil, email: String? = nil, balanceDetailedInfo: [AccountBalanceModel]? = nil, emailDetailedInfo: UserEmailInfo? = nil) {
        self.id = id
        self.personUid = personUid
        self.firstName = firstName
        self.lastName = lastName
        self.patronymicName = patronymicName
        self.birthDay = birthDay
        self.state = state
        self.addressInfo = addressInfo
        self.cardShortInfo = cardShortInfo
        self.balanceShortInfo = balanceShortInfo
        self.attributes = attributes
        self.cards = cards
        self.phoneNumber = phoneNumber
        self.email = email
        self.balanceDetailedInfo = balanceDetailedInfo
        self.emailDetailedInfo = emailDetailedInfo
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case personUid
        case firstName
        case lastName
        case patronymicName
        case birthDay
        case state
        case addressInfo
        case cardShortInfo
        case balanceShortInfo
        case attributes
        case cards
        case phoneNumber
        case email
        case balanceDetailedInfo
        case emailDetailedInfo
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(personUid, forKey: .personUid)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(patronymicName, forKey: .patronymicName)
        try container.encodeIfPresent(birthDay, forKey: .birthDay)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(addressInfo, forKey: .addressInfo)
        try container.encodeIfPresent(cardShortInfo, forKey: .cardShortInfo)
        try container.encodeIfPresent(balanceShortInfo, forKey: .balanceShortInfo)
        try container.encodeIfPresent(attributes, forKey: .attributes)
        try container.encodeIfPresent(cards, forKey: .cards)
        try container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(balanceDetailedInfo, forKey: .balanceDetailedInfo)
        try container.encodeIfPresent(emailDetailedInfo, forKey: .emailDetailedInfo)
    }
}
