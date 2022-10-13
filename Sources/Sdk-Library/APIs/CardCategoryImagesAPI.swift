//
// CardCategoryImagesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CardCategoryImagesAPI {

    /**
     Получить изображение.
     
     - parameter categoryId: (path) Идентификатор категории карт. 
     - parameter imageId: (path) Идентификатор файла. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func cardCategoryImagesGetImage(categoryId: Int, imageId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfImageFileViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return cardCategoryImagesGetImageWithRequestBuilder(categoryId: categoryId, imageId: imageId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить изображение.
     - GET /v1.2/cardCategories/{categoryId}/Images/{imageId}
     - parameter categoryId: (path) Идентификатор категории карт. 
     - parameter imageId: (path) Идентификатор файла. 
     - returns: RequestBuilder<ResultModelOfImageFileViewModel> 
     */
    open class func cardCategoryImagesGetImageWithRequestBuilder(categoryId: Int, imageId: Int) -> RequestBuilder<ResultModelOfImageFileViewModel> {
        var localVariablePath = "/v1.2/cardCategories/{categoryId}/Images/{imageId}"
        let categoryIdPreEscape = "\(APIHelper.mapValueToPathItem(categoryId))"
        let categoryIdPostEscape = categoryIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{categoryId}", with: categoryIdPostEscape, options: .literal, range: nil)
        let imageIdPreEscape = "\(APIHelper.mapValueToPathItem(imageId))"
        let imageIdPostEscape = imageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{imageId}", with: imageIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfImageFileViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получить список изображений для категории.
     
     - parameter categoryId: (path) Идентификатор категории карт. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func cardCategoryImagesGetImages(categoryId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfListOfImageFileViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return cardCategoryImagesGetImagesWithRequestBuilder(categoryId: categoryId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить список изображений для категории.
     - GET /v1.2/cardCategories/{categoryId}/Images
     - parameter categoryId: (path) Идентификатор категории карт. 
     - returns: RequestBuilder<ResultModelOfListOfImageFileViewModel> 
     */
    open class func cardCategoryImagesGetImagesWithRequestBuilder(categoryId: Int) -> RequestBuilder<ResultModelOfListOfImageFileViewModel> {
        var localVariablePath = "/v1.2/cardCategories/{categoryId}/Images"
        let categoryIdPreEscape = "\(APIHelper.mapValueToPathItem(categoryId))"
        let categoryIdPostEscape = categoryIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{categoryId}", with: categoryIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfListOfImageFileViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}