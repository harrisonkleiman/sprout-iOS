//
//  Webservice.swift
//  Sprout
//
//  Created by Harrison Kleiman on 6/14/22.
//

import Foundation

enum NetworkError: Error {
    case badUrl
    case invalidRequest
}

class Webservice {
    
    func getAllVegetables(url: URL?) async throws -> [VegetableDTO] {
        
        guard let url = url else {
            throw NetworkError.badUrl
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            throw NetworkError.invalidRequest
        }
        
        let vegetables = try? JSONDecoder().decode([VegetableDTO].self, from: data)
        return vegetables ?? []
    }
    
}
