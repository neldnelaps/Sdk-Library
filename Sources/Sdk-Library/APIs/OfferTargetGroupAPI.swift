//
// OfferTargetGroupAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class OfferTargetGroupAPI {

    /**
     Получает список целевых аудиторий для акции.
     
     - parameter offerId: (path) Идентификатор акции. 
     - parameter offerVersion: (path) Дескриптор версии акции. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func offerTargetGroupGetOfferTargetGroups(offerId: Int, offerVersion: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfListOfTargetGroupBriefViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return offerTargetGroupGetOfferTargetGroupsWithRequestBuilder(offerId: offerId, offerVersion: offerVersion).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получает список целевых аудиторий для акции.
     - GET /v1.2/Offers/{offerId}/versions/{offerVersion}/targetGroups
     - parameter offerId: (path) Идентификатор акции. 
     - parameter offerVersion: (path) Дескриптор версии акции. 
     - returns: RequestBuilder<ResultModelOfListOfTargetGroupBriefViewModel> 
     */
    open class func offerTargetGroupGetOfferTargetGroupsWithRequestBuilder(offerId: Int, offerVersion: String) -> RequestBuilder<ResultModelOfListOfTargetGroupBriefViewModel> {
        var localVariablePath = "/v1.2/Offers/{offerId}/versions/{offerVersion}/targetGroups"
        let offerIdPreEscape = "\(APIHelper.mapValueToPathItem(offerId))"
        let offerIdPostEscape = offerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{offerId}", with: offerIdPostEscape, options: .literal, range: nil)
        let offerVersionPreEscape = "\(APIHelper.mapValueToPathItem(offerVersion))"
        let offerVersionPostEscape = offerVersionPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{offerVersion}", with: offerVersionPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfListOfTargetGroupBriefViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
