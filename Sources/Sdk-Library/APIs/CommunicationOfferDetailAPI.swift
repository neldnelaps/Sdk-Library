//
// CommunicationOfferDetailAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CommunicationOfferDetailAPI {

    /**
     Получение описания детали для акции.
     
     - parameter offerId: (path) Идентификатор акции. 
     - parameter id: (path) Идентификатор деталей. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func communicationOfferDetailGetOfferDetail(offerId: Int, id: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfOfferDetailModel?, _ error: Error?) -> Void)) -> RequestTask {
        return communicationOfferDetailGetOfferDetailWithRequestBuilder(offerId: offerId, id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получение описания детали для акции.
     - GET /v1.2/communicationOffers/{offerId}/details/{id}
     - parameter offerId: (path) Идентификатор акции. 
     - parameter id: (path) Идентификатор деталей. 
     - returns: RequestBuilder<ResultModelOfOfferDetailModel> 
     */
    open class func communicationOfferDetailGetOfferDetailWithRequestBuilder(offerId: Int, id: String) -> RequestBuilder<ResultModelOfOfferDetailModel> {
        var localVariablePath = "/v1.2/communicationOffers/{offerId}/details/{id}"
        let offerIdPreEscape = "\(APIHelper.mapValueToPathItem(offerId))"
        let offerIdPostEscape = offerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{offerId}", with: offerIdPostEscape, options: .literal, range: nil)
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfOfferDetailModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Возвращает список деталей для акций.
     
     - parameter offerId: (path) Идентификатор акции. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func communicationOfferDetailGetOfferDetails(offerId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfListOfOfferDetailModel?, _ error: Error?) -> Void)) -> RequestTask {
        return communicationOfferDetailGetOfferDetailsWithRequestBuilder(offerId: offerId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает список деталей для акций.
     - GET /v1.2/communicationOffers/{offerId}/details
     - parameter offerId: (path) Идентификатор акции. 
     - returns: RequestBuilder<ResultModelOfListOfOfferDetailModel> 
     */
    open class func communicationOfferDetailGetOfferDetailsWithRequestBuilder(offerId: Int) -> RequestBuilder<ResultModelOfListOfOfferDetailModel> {
        var localVariablePath = "/v1.2/communicationOffers/{offerId}/details"
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

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfListOfOfferDetailModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
