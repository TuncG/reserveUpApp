//
//  merchantReservationsView.swift
//  reserveUpApp
//
//  Created by Tunc Gonel on 2022-08-27.
//

import SwiftUI

struct merchantReservationsView: View {
    
    
    var body: some View {
        
        
        TabView{
            
            customerReservationView()
                .tabItem({
                    Image(systemName: "phone.fill")
                    Text("reservations")
                        
                })
                

            
            restaurantView()
                .tabItem({
                    Image(systemName: "person.fill")
                    Text("restaurant")
                })
            
            accountView()
                .tabItem({
                    Image(systemName: "person.fill")
                    Text("account")
                })
        }
       
        

        
        
     }
}
//
//struct merchantReservationsView_Previews: PreviewProvider {
//    static var previews: some View {
//        merchantReservationsView()
//    }
//}
