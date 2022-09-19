//
//  restaurantList.swift
//  reserveUpApp
//
//  Created by Tunc Gonel on 2022-09-12.
//

import SwiftUI

struct restaurantList: View {
    var body: some View {
        List{
            Section(header:
                Text("Restaurant Information")
                .font(.title2)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom,15)
                .foregroundColor(.black)
                
            ){
                
                NavigationLink(destination: restaurantName(), label: {
                   Text("Edit restaurant name")
                })
                
                NavigationLink(destination: restaurantLocation(), label: {
                   Text("Edit restaurant location")
                })
                   
                NavigationLink(destination: operatingHours(), label: {
                   Text("Edit restaurant operating hours")
                })
                    
                    
                }
            }
            
           
            
        }
    }


struct restaurantList_Previews: PreviewProvider {
    static var previews: some View {
        restaurantList()
    }
}
