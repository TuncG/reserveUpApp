//
//  merchantView.swift
//  reserveUpApp
//
//  Created by Tunc Gonel on 2022-08-27.
//

import SwiftUI

struct merchantView: View {
    @State var loginView = true
     
//    init() {
//      UITabBar.appearance().backgroundColor = UIColor.gray
//    }
    
    
    var body: some View {
        
        VStack{
            
            
            if loginView{
                Text("ReserveUp")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                    .background(.blue   )
                    .foregroundColor(.white)
                    .padding(.bottom, 40)
                
                loginMerchantView()
                
                Button(action: {
                    loginView = false
                }, label: {
                    Text("Login ")
                        .font(.system(size: 26, weight: .bold))
                        .foregroundColor(.white)
                        .padding()
                        .background(.blue)
                        .cornerRadius(6)
                        .padding(.top, 10)
                })
            } else {
                
                NavigationView{
                    merchantReservationsView()
                        
                }
                
                
                
            }
            
            
            
            
            Spacer()
            
            
            
            Spacer()
        }

    }
}


