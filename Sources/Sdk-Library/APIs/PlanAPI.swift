//
// PlanAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class PlanAPI {

    /**
     Получить план.
     
     - parameter partnerId: (path) Id партнера. 
     - parameter month: (path) Номер месяца. 
     - parameter year: (path) Год. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func planGetPlan(partnerId: Int, month: Int, year: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfPlanViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return planGetPlanWithRequestBuilder(partnerId: partnerId, month: month, year: year).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить план.
     - GET /v1.2/partners/{partnerId}/plans/{year}/{month}
     - parameter partnerId: (path) Id партнера. 
     - parameter month: (path) Номер месяца. 
     - parameter year: (path) Год. 
     - returns: RequestBuilder<ResultModelOfPlanViewModel> 
     */
    open class func planGetPlanWithRequestBuilder(partnerId: Int, month: Int, year: Int) -> RequestBuilder<ResultModelOfPlanViewModel> {
        var localVariablePath = "/v1.2/partners/{partnerId}/plans/{year}/{month}"
        let partnerIdPreEscape = "\(APIHelper.mapValueToPathItem(partnerId))"
        let partnerIdPostEscape = partnerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{partnerId}", with: partnerIdPostEscape, options: .literal, range: nil)
        let monthPreEscape = "\(APIHelper.mapValueToPathItem(month))"
        let monthPostEscape = monthPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{month}", with: monthPostEscape, options: .literal, range: nil)
        let yearPreEscape = "\(APIHelper.mapValueToPathItem(year))"
        let yearPostEscape = yearPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{year}", with: yearPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfPlanViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получить список планов партнера за конкретный год.
     
     - parameter partnerId: (path) Id партнера. 
     - parameter year: (path) Год. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func planGetPlans(partnerId: Int, year: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfListOfPlanViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return planGetPlansWithRequestBuilder(partnerId: partnerId, year: year).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить список планов партнера за конкретный год.
     - GET /v1.2/partners/{partnerId}/plans/{year}
     - parameter partnerId: (path) Id партнера. 
     - parameter year: (path) Год. 
     - returns: RequestBuilder<ResultModelOfListOfPlanViewModel> 
     */
    open class func planGetPlansWithRequestBuilder(partnerId: Int, year: Int) -> RequestBuilder<ResultModelOfListOfPlanViewModel> {
        var localVariablePath = "/v1.2/partners/{partnerId}/plans/{year}"
        let partnerIdPreEscape = "\(APIHelper.mapValueToPathItem(partnerId))"
        let partnerIdPostEscape = partnerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{partnerId}", with: partnerIdPostEscape, options: .literal, range: nil)
        let yearPreEscape = "\(APIHelper.mapValueToPathItem(year))"
        let yearPostEscape = yearPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{year}", with: yearPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfListOfPlanViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
