//
// AnnouncementState.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Статус. */
public enum AnnouncementState: String, Codable, CaseIterable {
    case draft = "Draft"
    case ready = "Ready"
    case published = "Published"
}
