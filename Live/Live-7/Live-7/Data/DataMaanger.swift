//
//  DataMaanger.swift
//  TestForHomework
//
//  Created by Oleksandr Slobodianiuk on 20.08.2022.
//

import Foundation

struct DataManager {
    
    func getListOfPersons() -> [Person] {
        
        guard let url = Bundle.main.url(forResource: "PersonsJSON", withExtension: "json") else { return [] }
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            return try decoder.decode(Persons.self, from: data)
        } catch {
            fatalError("Whoops :D ")
        }
    }
}
