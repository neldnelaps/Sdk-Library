//
// CommunicationOfferInstructionAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CommunicationOfferInstructionAPI {

    /**
     Возвращает все инструкций для акций в виде многострочного текста.
     
     - parameter offerId: (path) Идентификатор акции. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func communicationOfferInstructionGetOfferInstructions(offerId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfOfferInstructionsModel?, _ error: Error?) -> Void)) -> RequestTask {
        return communicationOfferInstructionGetOfferInstructionsWithRequestBuilder(offerId: offerId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает все инструкций для акций в виде многострочного текста.
     - GET /v1.2/communicationOffers/{offerId}/instructions
     - parameter offerId: (path) Идентификатор акции. 
     - returns: RequestBuilder<ResultModelOfOfferInstructionsModel> 
     */
    open class func communicationOfferInstructionGetOfferInstructionsWithRequestBuilder(offerId: Int) -> RequestBuilder<ResultModelOfOfferInstructionsModel> {
        var localVariablePath = "/v1.2/communicationOffers/{offerId}/instructions"
        let offerIdPreEscape = "\(APIHelper.mapValueToPathItem(offerId))"
        let offerIdPostEscape = offerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{offerId}", with: offerIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfOfferInstructionsModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
