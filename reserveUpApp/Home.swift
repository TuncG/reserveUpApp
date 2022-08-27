//
//  Home.swift
//  reserveUpApp
//
//  Created by Tunc Gonel on 2022-08-08.
//

import SwiftUI

struct Home: View {
    
    @State var reserveViews = false
    @State var merchantViews = false
   
    
    
    var body: some View {
        
        
        if reserveViews  {
            reservationView()
        }
        else if merchantViews  {
            merchantView()
        } else {
            
           
            
            VStack{
                Text("ReserveUp")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                    .background(.blue   )
                    .foregroundColor(.white)
                    .padding(.bottom, 40)
                
                
                
                Text("Welcome to Reserveup! ")
                    .font(.title)
                    .fontWeight(.bold)
                // .foregroundColor(Color("Black"))
                    .frame(maxWidth: .infinity)
                    .padding(.bottom, 100)
                
                
                Button(action: { reserveViews = true }, label: {
                    Text("Reservation ")
                        .font(.system(size: 26, weight: .bold))
                        .foregroundColor(.white)
                        .padding()
                        .background(.blue)
                        .cornerRadius(6)
                        .padding(.bottom, 10)
                })
                
            Button(action: { merchantViews = true }, label: {
                Text("Merchant Login")
                    .font(.system(size: 26, weight: .bold))
                    .foregroundColor(.white)
                    .padding()
                    .background(.blue)
                    .cornerRadius(6)
                
            })
                
                Spacer()
                
            }
        }
        
       
            
        }
    }


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}



