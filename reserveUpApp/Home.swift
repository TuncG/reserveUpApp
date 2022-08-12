//
//  Home.swift
//  reserveUpApp
//
//  Created by Tunc Gonel on 2022-08-08.
//

import SwiftUI

struct Home: View {
    @State var email = ""
    @State var password = ""
    @State var nextMenu = false
    
    @State  var menuState = "people"
        @State  var selectedNum = 1
        @State  var currentDate = Date()
        
        @State  var selectedTime = "2:00"
    
    var body: some View {
        VStack{
          
            Text("ReserveUp")
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .background(.blue   )
                .foregroundColor(.white)
                
                
               
            Spacer()
            VStack{
                
                if nextMenu == true {
                    informationVIew(email: email, password: password)
                }
                if nextMenu == false {
                   timeView(currentDate: currentDate, selectedNum: selectedNum, selectedTime: selectedTime)
                }
                
                Button(action: {
                    nextMenu.toggle()
                }, label: {
                    
                    Image(systemName: "arrow.right")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)
                        .padding()
                        .background(.blue)
                        .clipShape(Circle())
                        
                })
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top,25)
               
            }
            .padding()
            .padding(.bottom,125)
            Spacer()
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}


