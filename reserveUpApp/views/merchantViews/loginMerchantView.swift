//
//  informationVIew.swift
//  reserveUpApp
//
//  Created by Tunc Gonel on 2022-08-12.
//

import SwiftUI

struct loginMerchantView: View {
    
    @State var email : String = ""
    @State var password : String = ""
    
    
    
    var body: some View {
        
        
        Text("Login")
            .font(.title)
            .fontWeight(.bold)
        // .foregroundColor(Color("Black"))
            .kerning(1.9)
            .padding()
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
                    print(email)
                    print("end editing")
                }
            }
            )
            .font(.system(size: 20, weight: .semibold))
            .foregroundColor(  .black)
            .padding(.top,1)
            
            Divider()
        })
        .padding()
        .padding(.top,10)
        
        VStack(alignment: .leading, spacing: 8, content: {
            Text("Password")
                .fontWeight(.bold)
                .foregroundColor(.gray)
            
            TextField("password", text:$password,
                      onEditingChanged: { (isBegin) in
                if isBegin {
                   
                } else {
                  
                }
            })
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(.black)
                .padding(.top,1)
            
            Divider()
        })
        .padding()
        .padding(.top,10)
        .padding(.bottom,10)
        
        
        
        
        
    }
}






