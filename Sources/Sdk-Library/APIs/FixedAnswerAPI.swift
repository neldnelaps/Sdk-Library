//
// FixedAnswerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class FixedAnswerAPI {

    /**
     Изменяет порядок отображения варианта ответа на вопрос.
     
     - parameter id: (path) Внутренний идентификатор варианта ответа. 
     - parameter order: (query) Новый порядковый номер. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func fixedAnswerChangePosition(id: Int, order: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModel?, _ error: Error?) -> Void)) -> RequestTask {
        return fixedAnswerChangePositionWithRequestBuilder(id: id, order: order).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Изменяет порядок отображения варианта ответа на вопрос.
     - POST /v1.2/Questions/FixedAnswers/{id}/ChangePosition
     - parameter id: (path) Внутренний идентификатор варианта ответа. 
     - parameter order: (query) Новый порядковый номер. 
     - returns: RequestBuilder<ResultModel> 
     */
    open class func fixedAnswerChangePositionWithRequestBuilder(id: Int, order: Int) -> RequestBuilder<ResultModel> {
        var localVariablePath = "/v1.2/Questions/FixedAnswers/{id}/ChangePosition"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "order": order.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Возвращает информацию о варианте ответа на вопрос.
     
     - parameter id: (path) Внутренний идентификатор варианта ответа. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func fixedAnswerGet(id: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfFixedAnswerViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return fixedAnswerGetWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает информацию о варианте ответа на вопрос.
     - GET /v1.2/Questions/FixedAnswers/{id}
     - parameter id: (path) Внутренний идентификатор варианта ответа. 
     - returns: RequestBuilder<ResultModelOfFixedAnswerViewModel> 
     */
    open class func fixedAnswerGetWithRequestBuilder(id: Int) -> RequestBuilder<ResultModelOfFixedAnswerViewModel> {
        var localVariablePath = "/v1.2/Questions/FixedAnswers/{id}"
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

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfFixedAnswerViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Возвращает информацию о всех вариантах ответа на вопрос.
     
     - parameter questionId: (query) Внутренний идентификатор вопроса. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func fixedAnswerGetAllByQuestion(questionId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfListOfFixedAnswerViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return fixedAnswerGetAllByQuestionWithRequestBuilder(questionId: questionId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает информацию о всех вариантах ответа на вопрос.
     - GET /v1.2/Questions/FixedAnswers
     - parameter questionId: (query) Внутренний идентификатор вопроса. 
     - returns: RequestBuilder<ResultModelOfListOfFixedAnswerViewModel> 
     */
    open class func fixedAnswerGetAllByQuestionWithRequestBuilder(questionId: Int) -> RequestBuilder<ResultModelOfListOfFixedAnswerViewModel> {
        let localVariablePath = "/v1.2/Questions/FixedAnswers"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "questionId": questionId.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfListOfFixedAnswerViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
