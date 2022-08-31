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
    var newDate = ""
    
    var menuState = "people"
    var selectedNum = "1"
    var currentDate = Date()
    
    var selectedTime = "2:00"
    var password = "password"
    
    
    
}



func formatDate(dateStr: Date) -> String{
    
    let format = DateFormatter()
    
    format.dateStyle = .short
    let date = format.string(from: dateStr)
    
    return date
    
}

