//
//  userInfo.swift
//  reserveUpApp
//
//  Created by Tunc Gonel on 2022-08-17.
//

import Foundation

class UserInfo: ObservableObject {
    
    var email = ""
    var password = ""
   
    
    var menuState = "people"
    var selectedNum = 1
    var currentDate = Date()
    
    var selectedTime = "2:00"
    
}


