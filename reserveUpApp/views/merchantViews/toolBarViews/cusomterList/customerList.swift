//
//  customerList.swift
//  reserveUpApp
//
//  Created by Tunc Gonel on 2022-08-31.
//

import SwiftUI



struct customerList: View {
    let count = 1 
    
    var body: some View {
        
        List{
            Section(header:
                Text("Reservation Information")
                .font(.title2)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom,15)
                .foregroundColor(.black)
                
            ){
                
                ForEach(0..<9) { i in
                    NavigationLink(destination: customerDetails(), label: {
                        customerRow(title: "Tunc Gonel", subTitle: "09/12/2022 - 5pm - 4 Customers")
                    })
                    
                    
                    
                }
            }
            
           
            
        }
    }
}


