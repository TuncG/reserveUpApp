//
//  comfirmationView.swift
//  reserveUpApp
//
//  Created by Tunc Gonel on 2022-08-22.
//

import SwiftUI

struct comfirmationView: View {
    
    var userInfo : UserInfo
    @State var confirmed = false
    
    
    var body: some View {
        
        
        if confirmed == false {
            Text("Confirm Reservation")
                .font(.title)
                .fontWeight(.bold)
            // .foregroundColor(Color("Black"))
                .kerning(1.9)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack{
            
            Text("Location")
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top,1)
            
            Text("Pizza Restaurant ")
                .frame(maxWidth: .infinity, alignment: .leading)
                
            
            Text("Date")
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top,1)
                
                Text(userInfo.newDate)
            
            
            Text("Number of people")
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top,1)
            
           // Text(userInfo.selectedNum)
            
            Text("Time")
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top,1)
            
            Text(userInfo.selectedTime)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("Email")
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top,1)
            
            Text(userInfo.email)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("Phone Number")
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top,1)
            
            
        }
            
        }
        
        if confirmed {
            Text("Reservation Confirmed! ")
                .font(.title)
                .fontWeight(.bold)
        }
        Button(action: {
            confirmed.toggle()
        }, label: {
            Text("Confirm")
                .font(.system(size: 26, weight: .bold))
                .foregroundColor(.white)
                .padding()
                .background(.blue)
                .cornerRadius(8)
              
                
        })
            
            
        }
        
            }



