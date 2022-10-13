//
// GeoCoordinateModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Гео-координаты. */
public struct GeoCoordinateModel: Codable, JSONEncodable, Hashable {

    /** Значение высоты над уровнем моря в метрах. */
    public var altitude: Double?
    /** Направление в градусах относительно истинного севера. */
    public var course: Double?
    /** Точность координат широты и долготы в метрах. */
    public var horizontalAccuracy: Double?
    /** Широта. */
    public var latitude: Double?
    /** Долгота. */
    public var longitude: Double?
    /** Скорость в метрах в секунду. */
    public var speed: Double?
    /** Погрешность высоты над уровнем моря в метрах. */
    public var verticalAccuracy: Double?

    public init(altitude: Double? = nil, course: Double? = nil, horizontalAccuracy: Double? = nil, latitude: Double? = nil, longitude: Double? = nil, speed: Double? = nil, verticalAccuracy: Double? = nil) {
        self.altitude = altitude
        self.course = course
        self.horizontalAccuracy = horizontalAccuracy
        self.latitude = latitude
        self.longitude = longitude
        self.speed = speed
        self.verticalAccuracy = verticalAccuracy
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case altitude
        case course
        case horizontalAccuracy
        case latitude
        case longitude
        case speed
        case verticalAccuracy
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(altitude, forKey: .altitude)
        try container.encodeIfPresent(course, forKey: .course)
        try container.encodeIfPresent(horizontalAccuracy, forKey: .horizontalAccuracy)
        try container.encodeIfPresent(latitude, forKey: .latitude)
        try container.encodeIfPresent(longitude, forKey: .longitude)
        try container.encodeIfPresent(speed, forKey: .speed)
        try container.encodeIfPresent(verticalAccuracy, forKey: .verticalAccuracy)
    }
}

