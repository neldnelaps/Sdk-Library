//
// OperationPayAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class OperationPayAPI {

    /**
     Информация какими способами оплачена покупка.
     
     - parameter purchaseId: (query) Id покупки. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func operationPayGetByPurchase(purchaseId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfListOfOperationPayViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return operationPayGetByPurchaseWithRequestBuilder(purchaseId: purchaseId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Информация какими способами оплачена покупка.
     - GET /v1.2/operationPay
     - parameter purchaseId: (query) Id покупки. 
     - returns: RequestBuilder<ResultModelOfListOfOperationPayViewModel> 
     */
    open class func operationPayGetByPurchaseWithRequestBuilder(purchaseId: Int) -> RequestBuilder<ResultModelOfListOfOperationPayViewModel> {
        let localVariablePath = "/v1.2/operationPay"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "purchaseId": purchaseId.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfListOfOperationPayViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
