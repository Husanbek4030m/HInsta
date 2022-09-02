//
//  Status.swift
//  HInsta
//
//  Created by Karavella on 02/09/22.
//

import Foundation
import Combine

class Status: ObservableObject {
    var didChange = PassthroughSubject<Status, Never>()
    
    @Published var userId: String? {didSet {self.didChange.send(self)}}
    
    func listener() {
        if let userId = UserDefaults.standard.string(forKey: "userId") {
            self.userId = userId
        } else {
            self.userId = nil
        }
    }
}
