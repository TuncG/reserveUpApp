//
//  informationVIew.swift
//  reserveUpApp
//
//  Created by Tunc Gonel on 2022-08-12.
//

import SwiftUI

struct informationVIew: View {
    
    @State var email : String = ""
    @State var phone : String = ""
    var userInfo : UserInfo
    
    
    
    var body: some View {
        
        
        Text("Your Information")
            .font(.title)
            .fontWeight(.bold)
        // .foregroundColor(Color("Black"))
            .kerning(1.9)
            .frame(maxWidth: .infinity, alignment: .leading)
        
        VStack(alignment: .leading, spacing: 8, content: {
            Text("Email")
                .fontWeight(.bold)
                .foregroundColor(.gray)
            
            TextField("test@gmail.com", text:$email,
                      onEditingChanged: { (isBegin) in
                if isBegin {
                    print("Begins editing")
                } else {
                    userInfo.email = email
                    print(email)
                    print("end editing")
                }
            }
            )
            .font(.system(size: 20, weight: .semibold))
            .foregroundColor(  isValidEmailAddr(strToValidate: userInfo.email) ? .black : .red)
            .padding(.top,5)
            
            Divider()
        })
        .padding(.top,15)
        
        VStack(alignment: .leading, spacing: 8, content: {
            Text("Phone Number")
                .fontWeight(.bold)
                .foregroundColor(.gray)
            
            TextField("647-123-4567", text:$phone,
                      onEditingChanged: { (isBegin) in
                if isBegin {
                   
                } else {
                    userInfo.phone = phone
                  
                }
            })
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(.black)
                .padding(.top,5)
            
            Divider()
        })
        .padding(.top,30)
        .padding(.bottom,40)
        
        
        
        
        
    }
}






