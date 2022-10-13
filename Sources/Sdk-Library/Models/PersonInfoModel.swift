//
// PersonInfoModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PersonInfoModel: Codable, JSONEncodable, Hashable {

    public var id: Int?
    public var uid: UUID?
    public var firstName: String?
    public var lastName: String?
    public var patronymicName: String?
    public var phone: NotifierInfoModel?
    public var email: NotifierInfoModel?
    public var registrationDate: Date?
    public var birthDay: Date?
    public var balance: MoneyViewModel?
    public var notActivated: MoneyViewModel?
    public var isRequiredActions: Bool?
    public var state: PersonState?
    public var subscribeToAllAcceptDate: Date?
    public var tenderOfferAcceptDate: Date?
    public var personalDataProcessingAcceptDate: Date?
    public var groupId: Int?
    public var accountGroup: String?
    public var timeZone: Int?
    public var displayName: String?
    public var creationDate: Date?
    public var loyaltyProgramName: String?
    public var loyaltyProgramId: Int?
    public var balances: [MoneyViewModel]?

    public init(id: Int? = nil, uid: UUID? = nil, firstName: String? = nil, lastName: String? = nil, patronymicName: String? = nil, phone: NotifierInfoModel? = nil, email: NotifierInfoModel? = nil, registrationDate: Date? = nil, birthDay: Date? = nil, balance: MoneyViewModel? = nil, notActivated: MoneyViewModel? = nil, isRequiredActions: Bool? = nil, state: PersonState? = nil, subscribeToAllAcceptDate: Date? = nil, tenderOfferAcceptDate: Date? = nil, personalDataProcessingAcceptDate: Date? = nil, groupId: Int? = nil, accountGroup: String? = nil, timeZone: Int? = nil, displayName: String? = nil, creationDate: Date? = nil, loyaltyProgramName: String? = nil, loyaltyProgramId: Int? = nil, balances: [MoneyViewModel]? = nil) {
        self.id = id
        self.uid = uid
        self.firstName = firstName
        self.lastName = lastName
        self.patronymicName = patronymicName
        self.phone = phone
        self.email = email
        self.registrationDate = registrationDate
        self.birthDay = birthDay
        self.balance = balance
        self.notActivated = notActivated
        self.isRequiredActions = isRequiredActions
        self.state = state
        self.subscribeToAllAcceptDate = subscribeToAllAcceptDate
        self.tenderOfferAcceptDate = tenderOfferAcceptDate
        self.personalDataProcessingAcceptDate = personalDataProcessingAcceptDate
        self.groupId = groupId
        self.accountGroup = accountGroup
        self.timeZone = timeZone
        self.displayName = displayName
        self.creationDate = creationDate
        self.loyaltyProgramName = loyaltyProgramName
        self.loyaltyProgramId = loyaltyProgramId
        self.balances = balances
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case uid
        case firstName
        case lastName
        case patronymicName
        case phone
        case email
        case registrationDate
        case birthDay
        case balance
        case notActivated
        case isRequiredActions
        case state
        case subscribeToAllAcceptDate
        case tenderOfferAcceptDate
        case personalDataProcessingAcceptDate
        case groupId
        case accountGroup
        case timeZone
        case displayName
        case creationDate
        case loyaltyProgramName
        case loyaltyProgramId
        case balances
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(uid, forKey: .uid)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(patronymicName, forKey: .patronymicName)
        try container.encodeIfPresent(phone, forKey: .phone)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(registrationDate, forKey: .registrationDate)
        try container.encodeIfPresent(birthDay, forKey: .birthDay)
        try container.encodeIfPresent(balance, forKey: .balance)
        try container.encodeIfPresent(notActivated, forKey: .notActivated)
        try container.encodeIfPresent(isRequiredActions, forKey: .isRequiredActions)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(subscribeToAllAcceptDate, forKey: .subscribeToAllAcceptDate)
        try container.encodeIfPresent(tenderOfferAcceptDate, forKey: .tenderOfferAcceptDate)
        try container.encodeIfPresent(personalDataProcessingAcceptDate, forKey: .personalDataProcessingAcceptDate)
        try container.encodeIfPresent(groupId, forKey: .groupId)
        try container.encodeIfPresent(accountGroup, forKey: .accountGroup)
        try container.encodeIfPresent(timeZone, forKey: .timeZone)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(creationDate, forKey: .creationDate)
        try container.encodeIfPresent(loyaltyProgramName, forKey: .loyaltyProgramName)
        try container.encodeIfPresent(loyaltyProgramId, forKey: .loyaltyProgramId)
        try container.encodeIfPresent(balances, forKey: .balances)
    }
}

