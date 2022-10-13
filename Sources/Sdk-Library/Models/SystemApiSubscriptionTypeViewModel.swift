//
// SystemApiSubscriptionTypeViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** ViewModel для типа подписки. */
public struct SystemApiSubscriptionTypeViewModel: Codable, JSONEncodable, Hashable {

    /** Id типа подписки. */
    public var id: Int?
    /** Название типа подписки. */
    public var name: String?
    public var type: MailingSubscriptionType?
    /** Оповещение по Sms. */
    public var smsEnable: Bool?
    /** Оповещение по Email. */
    public var emailEnable: Bool?
    /** Оповещение по Email. */
    public var pushEnable: Bool?
    /** Оповещение по Viber. */
    public var viberEnable: Bool?
    /** Оповещение по SocialNetworks. */
    public var socialNetworksEnable: Bool?
    public var timeLimitType: MailingTimeLimitType?
    /** Оповещение по ChatBot. */
    public var chatBotEnable: Bool?
    /** Время жизни рассылки. */
    public var lifeTime: Int?
    public var timeUnit: TimeUnitsLimit?
    /** Тип подписки скрыт в шаблонах. */
    public var hiddenTemplate: Bool?

    public init(id: Int? = nil, name: String? = nil, type: MailingSubscriptionType? = nil, smsEnable: Bool? = nil, emailEnable: Bool? = nil, pushEnable: Bool? = nil, viberEnable: Bool? = nil, socialNetworksEnable: Bool? = nil, timeLimitType: MailingTimeLimitType? = nil, chatBotEnable: Bool? = nil, lifeTime: Int? = nil, timeUnit: TimeUnitsLimit? = nil, hiddenTemplate: Bool? = nil) {
        self.id = id
        self.name = name
        self.type = type
        self.smsEnable = smsEnable
        self.emailEnable = emailEnable
        self.pushEnable = pushEnable
        self.viberEnable = viberEnable
        self.socialNetworksEnable = socialNetworksEnable
        self.timeLimitType = timeLimitType
        self.chatBotEnable = chatBotEnable
        self.lifeTime = lifeTime
        self.timeUnit = timeUnit
        self.hiddenTemplate = hiddenTemplate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case type
        case smsEnable
        case emailEnable
        case pushEnable
        case viberEnable
        case socialNetworksEnable
        case timeLimitType
        case chatBotEnable
        case lifeTime
        case timeUnit
        case hiddenTemplate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(smsEnable, forKey: .smsEnable)
        try container.encodeIfPresent(emailEnable, forKey: .emailEnable)
        try container.encodeIfPresent(pushEnable, forKey: .pushEnable)
        try container.encodeIfPresent(viberEnable, forKey: .viberEnable)
        try container.encodeIfPresent(socialNetworksEnable, forKey: .socialNetworksEnable)
        try container.encodeIfPresent(timeLimitType, forKey: .timeLimitType)
        try container.encodeIfPresent(chatBotEnable, forKey: .chatBotEnable)
        try container.encodeIfPresent(lifeTime, forKey: .lifeTime)
        try container.encodeIfPresent(timeUnit, forKey: .timeUnit)
        try container.encodeIfPresent(hiddenTemplate, forKey: .hiddenTemplate)
    }
}
