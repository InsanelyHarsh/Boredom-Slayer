//
//  Networking.swift
//  Boredom-Slayer-iOS
//
//  Created by Harsh Yadav on 02/10/23.
//

import Foundation

enum NetworkingError:Error{
    case invalidURL
    case badResponse
    case decodingError
    case unknownError
    case corruptData
    case encodingFailed
}

class Networking{
    
    func getJson<T:Decodable>(type: T.Type,url urlString:String,completionHandler: @escaping (Result<T,Error>) -> Void){
        let url = URL(string: urlString)
        
        guard let url = url else {
            completionHandler(.failure(NetworkingError.invalidURL))
            return
        }
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if(error != nil){
                completionHandler(.failure(error ?? NetworkingError.unknownError))
                return
            }
            
            guard let data = data else {
                completionHandler(.failure(NetworkingError.corruptData))
                return
            }
            
            
            do{
                let response = try JSONDecoder().decode(T.self, from: data)
                completionHandler(.success(response))
            }catch(let error){
                completionHandler(.failure(NetworkingError.decodingError))
                print(error)
            }
            
        }.resume()
    }
}

extension Networking{
//    private func decodeData<D:Decodable>(data:D) throws -> D{
//        let decoder = JSONDecoder()
//
//        do{
//            let decodedData = try decoder.decode(D.self, from: D)
//            return decodedData
//        }catch(let error){
//            throw error
//        }
//    }
}
