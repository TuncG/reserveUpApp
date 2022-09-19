//
//  customerDetails.swift
//  reserveUpApp
//
//  Created by Tunc Gonel on 2022-08-31.
//

import SwiftUI

struct customerDetails: View {
    var body: some View {
        VStack{
            VStack{
                Text("Reservation: Tunc Gonel")
                    .font(.title2)
                    .fontWeight(.bold)
                // .foregroundColor(Color("Black"))
                    .kerning(1.9)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                
                Divider()
                 .frame(height: 1)
                 .padding(.horizontal, 30)
                 .background(Color.gray)
                 .padding(.top, 10)
                
                Text("Reservation Date:")
                    .font(.system(size: 20, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                Text("2022/09/12")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 20))
                
                Divider()
                 .frame(height: 1)
                 .padding(.horizontal, 30)
                 .background(Color.gray)
            }
            
            
            VStack{
                Text("Location:")
                    .font(.system(size: 20, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 5)
                    
                Text("Pizza restaurant")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 20))
                Divider()
                 .frame(height: 1)
                 .padding(.horizontal, 30)
                 .background(Color.gray)
                
                Text("Phone:")
                    .font(.system(size: 20, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 5)
                    
                Text("647-901-8862")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 20))
                Divider()
                 .frame(height: 1)
                 .padding(.horizontal, 30)
                 .background(Color.gray)
                
                Text("Email")
                    .font(.system(size: 20, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 5)
                    
                Text("Tuncgonelf@gmail.com")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 20))
                    
                
                Divider()
                 .frame(height: 1)
                 .padding(.horizontal, 30)
                 .background(Color.gray)
            }
            
            
            
            HStack{
                Text("People")
                    .font(.system(size: 20, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                Text("5")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 20))
                
                Text("Time")
                    .font(.system(size: 20, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                Text("4:00pm")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 20))
            }
            .padding(.top, 5)
            
            Divider()
             .frame(height: 1)
             .padding(.horizontal, 30)
             .background(Color.gray)
            
            HStack{
                
                Button(action: {}, label: {
                    Text("Cancel Reservation")
                })
                .font(.system(size: 15, weight: .bold))
                .foregroundColor(.white)
                .padding()
                .background(.blue)
                .cornerRadius(6)
               
                
                Button(action: {}, label: {
                    Text("Call Customer")
                })
                .font(.system(size: 15, weight: .bold))
                .foregroundColor(.white)
                .padding()
                .background(.blue)
                .cornerRadius(6)
               
                
            }
            .padding(.top,10)
                
        }
        .padding()
      
        Spacer()
    }
}

struct customerDetails_Previews: PreviewProvider {
    static var previews: some View {
        customerDetails()
    }
}
