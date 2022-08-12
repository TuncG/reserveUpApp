//
//  timeView.swift
//  reserveUpApp
//
//  Created by Tunc Gonel on 2022-08-12.
//

import SwiftUI

struct timeView: View {
    
    @State  var currentDate : Date
    @State  var isExpanded = false
    @State  var selectedNum : Int
    
    @State  var isExpandedTime = false
    @State  var selectedTime : String
    
     var reservationTimes = ["5:00","5:30","6:00","6:30","7:00", "7:30","8:00","8:30","9:00"]
    
    var body: some View {
        Text("Your Information")
            .font(.title)
            .fontWeight(.bold)
        // .foregroundColor(Color("Black"))
            .kerning(1.9)
            .frame(maxWidth: .infinity, alignment: .leading)
        
        Text("Select a Date")
            .fontWeight(.bold)
            .foregroundColor(.gray)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top,1)
        DatePicker("", selection: $currentDate, in: Date()..., displayedComponents: .date)
            .scaleEffect(CGSize(width: 1.2, height: 1.2),anchor: .trailing)
            .frame(maxWidth: .infinity, alignment: .leading)
        
        //People drop down below
        Text("Number of People")
            .fontWeight(.bold)
            .foregroundColor(.gray)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top,10)
        DisclosureGroup("\(selectedNum)", isExpanded: $isExpanded){
            ScrollView{
                VStack{
                    ForEach(1...50,id: \.self) {num in
                        Text("\(num)").font(.title3)
                            .frame(maxWidth: .infinity)
                            .padding(.all)
                            .onTapGesture {
                                self.selectedNum = num
                                
                                withAnimation{
                                    self.isExpanded.toggle()
                                }
                                
                            }
                        
                    }
                    
                }
                
            }.frame(height: 150)
            
        }.accentColor(.white)
            .font(.title2)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(8)
            .padding(.top,10)
        
        
        // Time drop down below
        Text("Select a Time")
            .fontWeight(.bold)
            .foregroundColor(.gray)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top,10)
        
        DisclosureGroup("\(selectedTime)", isExpanded: $isExpandedTime){
            ScrollView{
                VStack{
                    ForEach(reservationTimes,id: \.self) {num in
                        Text("\(num)").font(.title3)
                            .frame(maxWidth: .infinity)
                            .padding(.all)
                            .onTapGesture {
                                self.selectedTime = num
                                
                                withAnimation{
                                    self.isExpandedTime.toggle()
                                }
                                
                            }
                        
                    }
                    
                }
                
            }.frame(height: 150)
            
        }.accentColor(.white)
            .padding(.top,10)
            .font(.title2)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(8)
    }
}

