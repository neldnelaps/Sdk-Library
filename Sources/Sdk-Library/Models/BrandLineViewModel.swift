//
// BrandLineViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Информация о бренде. */
public struct BrandLineViewModel: Codable, JSONEncodable, Hashable {

    /** Внешний идентификатор бренда. */
    public var uid: UUID?
    /** Название бренда. */
    public var name: String?
    /** Описание. */
    public var description: String?
    /** Адрес сайта бренда. */
    public var url: String?
    /** Изображения бренда. */
    public var images: [ImageViewModel]?
    /** Внутренний идентификатор бренда. */
    public var id: Int?
    /** Параметр не используется, необходимо оставлять значение по умолчанию. Используется параметр Внешний идентификатор бренда. example  00000000-0000-0000-0000-000000000000 */
    public var guid: UUID?
    /** Код бренда. */
    public var code: String?
    /** Порядковый номер. */
    public var order: Int?
    public var state: BrandModelState?
    /** Количество торговых точек. */
    public var merchantCount: Int?

    public init(uid: UUID? = nil, name: String? = nil, description: String? = nil, url: String? = nil, images: [ImageViewModel]? = nil, id: Int? = nil, guid: UUID? = nil, code: String? = nil, order: Int? = nil, state: BrandModelState? = nil, merchantCount: Int? = nil) {
        self.uid = uid
        self.name = name
        self.description = description
        self.url = url
        self.images = images
        self.id = id
        self.guid = guid
        self.code = code
        self.order = order
        self.state = state
        self.merchantCount = merchantCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case uid
        case name
        case description
        case url
        case images
        case id
        case guid
        case code
        case order
        case state
        case merchantCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(uid, forKey: .uid)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(images, forKey: .images)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(code, forKey: .code)
        try container.encodeIfPresent(order, forKey: .order)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(merchantCount, forKey: .merchantCount)
    }
}

