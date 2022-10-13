//
// CardPackingAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CardPackingAPI {

    /**
     Расфасовать карту.
     
     - parameter cardId: (path) Идентификатор карты для фасовки. 
     - parameter packingModel: (query) Дополнительная информация для фасовки. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func cardPackingPackCard(cardId: Int, packingModel: CardPackingModel, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModel?, _ error: Error?) -> Void)) -> RequestTask {
        return cardPackingPackCardWithRequestBuilder(cardId: cardId, packingModel: packingModel).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Расфасовать карту.
     - POST /v1.2/Cards/{cardId}/Pack
     - parameter cardId: (path) Идентификатор карты для фасовки. 
     - parameter packingModel: (query) Дополнительная информация для фасовки. 
     - returns: RequestBuilder<ResultModel> 
     */
    open class func cardPackingPackCardWithRequestBuilder(cardId: Int, packingModel: CardPackingModel) -> RequestBuilder<ResultModel> {
        var localVariablePath = "/v1.2/Cards/{cardId}/Pack"
        let cardIdPreEscape = "\(APIHelper.mapValueToPathItem(cardId))"
        let cardIdPostEscape = cardIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{cardId}", with: cardIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "packingModel": packingModel.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}