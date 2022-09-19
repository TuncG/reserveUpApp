//
//  exampleUsers.swift
//  reserveUpApp
//
//  Created by Tunc Gonel on 2022-09-16.
//

import Foundation




func createUsers() -> Array<Any>{
    
    let numbers = ["647-920-393","232-110-347","647-982-473","347-430-382","647-900-573","647-820-149","647-620-993","647-920-423","647-720-820","647-860-493"]
    let names = ["Tom Hathway", "Jenna Campbell","Peter Jones","Tunc Gonel","Josh Bridge", "Sebastian Vettel", "Kimi Raikonnen","Mich Schumacher","Alex Albon","Charles Leclerc"]
    let emails = ["Tomhathway@gmail.com", "Jennacampbell@gmail.com","Peterjones@gmail.com","Tuncgonel@gmail.com","Joshbridge@gmail.com", "Sebastianvettel@gmail.com", "Kimiraikonnen@gmail.com","Michschumacher@gmail.com","Alexalbon@gmail.com","Charlesleclerc@gmail.com"]
    
    let times = ["5:00","6:30","3:40","9:50","2:00","8:30","1:30","9:45","2:30","6:00"]
    
    let dates = ["09/12/2022", "09/13/2022","10/04/2022","09/23/2022","09/15/2022","09/19/2022","09/21/2022","10/02/2022","09/29/2022","09/26/2022"]
    
    let counter = 0...9
    var lst:[Any] = []
    
    for number in counter {
        let customer = UserInfo()
        customer.selectedNum = String(number)
        customer.phone = numbers[number]
        customer.email = emails[number]
        customer.selectedTime = times[number]
        customer.name = names[number]
        customer.newDate = dates[number]
        lst.append(customer)
        
    }
    
    
    return lst
}

var usersArray = createUsers()



