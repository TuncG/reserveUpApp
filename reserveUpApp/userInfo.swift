//
//  userInfo.swift
//  reserveUpApp
//
//  Created by Tunc Gonel on 2022-08-17.
//

import Foundation

class UserInfo: ObservableObject {
    
    var email = ""
    var phone = ""
   
    
    var menuState = "people"
    var selectedNum = 1
    var currentDate = Date()
    
    var selectedTime = "2:00"
    
    
    
}



func formatDate(dateStr: Date){
    
    let format = DateFormatter()
    
    format.dateStyle = .short
    print("infunfc")
    print(format.string(from: dateStr))
    
}

