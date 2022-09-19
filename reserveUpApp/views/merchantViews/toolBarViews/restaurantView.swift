//
//  restaurantView.swift
//  reserveUpApp
//
//  Created by Tunc Gonel on 2022-08-27.
//

import SwiftUI

struct restaurantView: View {
    
    
    
    var body: some View {
        
        restaurantList()
        }
    }


struct restaurantView_Previews: PreviewProvider {
    static var previews: some View {
        restaurantView()
    }
}




/*
 @State var restaurantName : String = "Pizza Restaurant"
 @State var location : String = "123 Forest Drive L6J 2V4"
 @State  var isExpanded = false
 @State  var selectedNum : Int = 1
 @State  var currentDate : Date = Calendar.current.date(bySettingHour: 8, minute: 0, second: 0, of: Date())!
 @State  var currentDate2 : Date = Calendar.current.date(bySettingHour: 21, minute: 0, second: 0, of: Date())!
     
     Text("Restaurant Information")
         .font(.title2)
         .fontWeight(.bold)
         .frame(maxWidth: .infinity, alignment: .leading)
         .padding()
     
     VStack(alignment: .leading, spacing: 8, content: {
         Text("Name")
             .fontWeight(.bold)
             .foregroundColor(.gray)
             .font(.title2)
         
         TextField("test@gmail.com", text:$restaurantName,
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
         Text("Location")
             .fontWeight(.bold)
             .foregroundColor(.gray)
             .font(.title2)
         
         TextField("test@gmail.com", text:$location,
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
     
     VStack{
         Text("Operating Hours")
             .fontWeight(.bold)
             .foregroundColor(.gray)
             .font(.title2)
             .frame(maxWidth: .infinity, alignment: .leading)
             
         HStack{
             
             Text("Open:")
             
             DatePicker("", selection: $currentDate, displayedComponents: .hourAndMinute)
                 .scaleEffect(CGSize(width: 1.2, height: 1.2),anchor: .trailing)
                 .frame(maxWidth: .infinity, alignment: .leading)
             
             
             Text("Close:")
             DatePicker("", selection: $currentDate2, displayedComponents: .hourAndMinute)
                 .scaleEffect(CGSize(width: 1.2, height: 1.2),anchor: .trailing)
                 .frame(maxWidth: .infinity, alignment: .leading)
                 
             
         }
         .padding(.top, 5 )
       
         
         
        
         
         
     }
     .padding()
 }
 */
