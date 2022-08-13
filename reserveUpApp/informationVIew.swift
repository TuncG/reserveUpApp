//
//  informationVIew.swift
//  reserveUpApp
//
//  Created by Tunc Gonel on 2022-08-12.
//

import SwiftUI

struct informationVIew: View {
    
    @State var email : String
    @State var password : String
    
    
    
    
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
                
                TextField("test@gmail.com", text:$email)
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color(.black))
                    .padding(.top,5)
                
                Divider()
            })
            .padding(.top,15)
            
            VStack(alignment: .leading, spacing: 8, content: {
                Text("Phone Number")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                TextField("647-123-4567", text:$password)
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(.black)
                    .padding(.top,5)
                
                Divider()
            })
            .padding(.top,30)
            .padding(.bottom,40)
            
            
            
            
        
    }
}




