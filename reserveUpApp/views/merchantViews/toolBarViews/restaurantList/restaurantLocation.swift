//
//  restaurantLocation.swift
//  reserveUpApp
//
//  Created by Tunc Gonel on 2022-09-12.
//

import SwiftUI

struct restaurantLocation: View {
    
    @State var restaurantLocation : String = "123 Forest Drive L6J 2V4"
    @State var restaurantLocationConfirmed : String = "123 Forest Drive L6J 2V4"
    @State var checkConfirmed: Bool = true
    @State var isConfirmed: Bool = false
    
    var body: some View {
        VStack{
        
        VStack(alignment: .leading, spacing: 8, content: {
            Text("Location")
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .font(.title2)
            
            TextField("123 Spadina Road", text:$restaurantLocation,
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
            Text("Confirm Location")
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .font(.title2)
            
            TextField("123 Spadina Road", text:$restaurantLocationConfirmed,
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
                if restaurantLocationConfirmed != restaurantLocation{
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

struct restaurantLocation_Previews: PreviewProvider {
    static var previews: some View {
        restaurantLocation()
    }
}
