//
//  RecipeModel.swift
//  mvvm-demo
//
//  Created by 홍성범 on 2022/02/06.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        // Get the path to the json file within the app bundle
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        if let pathString = pathString {
            
            // Create a url object
            let url = URL(fileURLWithPath: pathString)
            
            // Error handling
            do {
                // Put the code that potentionally throws an error
                // Create a data object with the data at the url
                let data = try Data(contentsOf: url)
                
                // Parse the data
                let decoder = JSONDecoder()
                
                do {
                    let recipeData = try decoder.decode([Recipe].self, from: data)
                    
                    // Set unique IDs for each instance
                    for r in recipeData {
                        r.id = UUID()
                    }
                    // Assign the data to the published property
                    self.recipes = recipeData
                } catch {
                    // Couldn't decode json
                    print(error)
                }
                
            } catch {
                // Execution will come here if an error is thrown
                // Handle the error
                print(error)
            }
        }
    }
    
    func addRecipe() {
        
    }
}
