//
//  operatingHours.swift
//  reserveUpApp
//
//  Created by Tunc Gonel on 2022-09-12.
//

import SwiftUI



struct operatingHours: View {
    
    @State  var currentDate : Date = Calendar.current.date(bySettingHour: 8, minute: 0, second: 0, of: Date())!
    @State  var currentDate2 : Date = Calendar.current.date(bySettingHour: 21, minute: 0, second: 0, of: Date())!
    @State  var isConfirmed : Bool = false
    
    var body: some View {
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
            .padding(.top, 15)
            
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
                isConfirmed.toggle()
            }, label: {
                Text("confirm")
                    .font(.system(size: 26, weight: .bold))
                    .foregroundColor(.white)
                    .padding()
                    .background(.blue)
                    .cornerRadius(6)
                    .padding(.top,30)
            })
            
            Spacer()
    }
        .padding()
}

struct operatingHours_Previews: PreviewProvider {
    static var previews: some View {
        operatingHours()
    }
}
}
