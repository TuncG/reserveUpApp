//
//  ContentView.swift
//  reserveUpApp
//
//  Created by Tunc Gonel on 2022-07-26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentDate = Date()
    @State private var currentTime = Date()
    @State private var isExpanded = false
    @State private var selectedNum = 1
    
    @State private var isExpandedTime = false
    @State private var selectedTime = 1
    private var reservationTimes = ["5:00","5:30","6:00","6:30","7:00", "7:30","8:00","8:30","9:00"]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            
            Text("Reservation Page")
                .font(.title)
            
            Text("Select a Date").font(.title3)
            DatePicker("", selection: $currentDate, in: Date()..., displayedComponents: .date)
            
            Text("Select a Time").font(.title3)
            //DatePicker("", selection: $currentTime, displayedComponents: .hourAndMinute)
            //           .labelsHidden()
            
            DisclosureGroup("\(selectedTime)", isExpanded: $isExpandedTime){
                ScrollView{
                    VStack{
                        ForEach(1...50,id: \.self) {num in
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
                .font(.title2)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(8)
            
            
            Text("Number of People").font(.title3)
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
            
            
            Spacer()
        }.padding()
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
