//
//  InternetCompanyBank.swift
//  Fin Wiz
//
//  Created by Lawrence Han on 10/11/17.
//  Copyright © 2017 Lawrence Han. All rights reserved.
//

import Foundation

class InternetCompanyBank {
    
    var list = [Company]()
    
    init() {
        
        list.append(Company(ticker: "GOOGL", value: 5.7))
        list.append(Company(ticker: "FB", value: 5.6))
        
    }
    
}
