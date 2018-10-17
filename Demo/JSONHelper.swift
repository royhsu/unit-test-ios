//
//  JSONHelper.swift
//  Demo
//
//  Created by Roy Hsu on 2018/10/17.
//  Copyright © 2018 TinyWorld. All rights reserved.
//

import Foundation

struct JSONHelper {
    
    enum LoadJSONResult {
        
        case success(Any)
        
        case failure(Error)
        
    }
    
    enum LoadJSONError: Error {
        
        case fileNotFound
        
    }
    
    func loadJSON(
        name: String,
        from bundle: Bundle,
        completion: @escaping (_ result: LoadJSONResult) -> Void
    ) {
        
        DispatchQueue.global(qos: .background).async {
            
            guard
                let filePath = bundle.path(
                    forResource: name,
                    ofType: "json"
                )
            else {
                
                DispatchQueue.main.async {
                    
                    completion(
                        .failure(LoadJSONError.fileNotFound)
                    )
                    
                }
                
                return
                
            }
            
            let fileURL = URL(fileURLWithPath: filePath)
            
            do {
                
                let data = try Data(contentsOf: fileURL)
                
                let json = try JSONSerialization.jsonObject(with: data)
                
                DispatchQueue.main.async {
                    
                    completion(
                        .success(json)
                    )
                    
                }
                
            }
            catch {
                
                DispatchQueue.main.async {
                    
                    completion(
                        .failure(error)
                    )
                    
                }
                
            }
            
        }
        
    }
    
}
