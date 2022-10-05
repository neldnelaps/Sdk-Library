//
// OfferCategoryFilterType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Фильтр по категории. */
public enum OfferCategoryFilterType: String, Codable, CaseIterable {
    case selectByLogicalName = "SelectByLogicalName"
    case ignoreByLogicalName = "IgnoreByLogicalName"
    case selectUncategorized = "SelectUncategorized"
}
