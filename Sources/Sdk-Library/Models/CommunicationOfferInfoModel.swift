//
// CommunicationOfferInfoModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель акции. */
public struct CommunicationOfferInfoModel: Codable, JSONEncodable, Hashable {

    /** Id. */
    public var id: Int?
    /** Id версии. */
    public var versionID: Int?
    /** Предупреждение. */
    public var warning: String?
    /** Причина отклонения. */
    public var rejectReason: String?
    public var info: OfferInfoModel?
    public var draft: OfferDraftModel?
    public var operations: Operation?
    /** Комментарий при подтверждении. */
    public var approvalComment: String?

    public init(id: Int? = nil, versionID: Int? = nil, warning: String? = nil, rejectReason: String? = nil, info: OfferInfoModel? = nil, draft: OfferDraftModel? = nil, operations: Operation? = nil, approvalComment: String? = nil) {
        self.id = id
        self.versionID = versionID
        self.warning = warning
        self.rejectReason = rejectReason
        self.info = info
        self.draft = draft
        self.operations = operations
        self.approvalComment = approvalComment
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case versionID
        case warning
        case rejectReason
        case info
        case draft
        case operations
        case approvalComment
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(versionID, forKey: .versionID)
        try container.encodeIfPresent(warning, forKey: .warning)
        try container.encodeIfPresent(rejectReason, forKey: .rejectReason)
        try container.encodeIfPresent(info, forKey: .info)
        try container.encodeIfPresent(draft, forKey: .draft)
        try container.encodeIfPresent(operations, forKey: .operations)
        try container.encodeIfPresent(approvalComment, forKey: .approvalComment)
    }
}
