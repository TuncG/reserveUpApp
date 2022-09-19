//
//  restaurantName.swift
//  reserveUpApp
//
//  Created by Tunc Gonel on 2022-09-12.
//

import SwiftUI

struct accountName: View {
    
    @State var accountName : String = "Tunc Gonel"
    @State var accountNameConfirmed : String = "Tunc Gonel"
    @State var checkConfirmed: Bool = true
    @State var isConfirmed: Bool = false
    
    var body: some View {
        VStack{
        
        VStack(alignment: .leading, spacing: 8, content: {
            Text("Name")
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .font(.title2)
            
            TextField("Test Name", text:$accountName,
                      onEditingChanged: { (isBegin) in
                if isBegin {
                    
                } else {
                    
                }
            }
            )
            .font(.system(size: 20, weight: .semibold))
            .foregroundColor(  .black)
            .padding(.top,1)
            
            Divider()
             .frame(height: 1)
             .padding(.horizontal, 30)
             .background(Color.gray)
        })
        .padding()
        
        VStack(alignment: .leading, spacing: 8, content: {
            Text("Confirm Name")
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .font(.title2)
            
            TextField("Test Name", text:$accountNameConfirmed,
                      onEditingChanged: { (isBegin) in
                if isBegin {
                    
                } else {
                    
                }
            }
            )
            .font(.system(size: 20, weight: .semibold))
            .foregroundColor(  .black)
            .padding(.top,1)
            
            Divider()
             .frame(height: 1)
             .padding(.horizontal, 30)
             .background(Color.gray)
        })
        .padding()
            
            if !checkConfirmed{
                Text("Ensure that the paramaters match")
                    .foregroundColor(.red)
            }
            if isConfirmed{
                HStack{
                    Text("Changes confirmed")
                        .font(.system(size: 20, weight: .semibold))
                    
                    Image(systemName: "checkmark.circle")
                        .font(.system(size: 20, weight: .semibold))
                    
                }
                .padding(.top,10)
            }
            
            
            Button(action: {
                if accountNameConfirmed != accountName{
                    checkConfirmed.toggle()
                    isConfirmed = false
                } else{
                    isConfirmed.toggle()
                    checkConfirmed = true
                }
            }, label: {
                Text("confirm")
                    .font(.system(size: 26, weight: .bold))
                    .foregroundColor(.white)
                    .padding()
                    .background(.blue)
                    .cornerRadius(6)
                    .padding(.top,10)
            })
        }
        Spacer()
    }
}


