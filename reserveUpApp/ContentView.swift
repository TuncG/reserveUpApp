//
//  ContentView.swift
//  reserveUpApp
//
//  Created by Tunc Gonel on 2022-07-26.
//

import SwiftUI

struct ContentView: View {
    
    
    @State  var menuState = "people"
    @State  var selectedNum = 1
    @State  var currentDate = Date()
    
    @State  var selectedTime = "2:00"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            
            Text("Reservation Page")
                .font(.title)
                .padding(.bottom)
            
           
            
            if menuState == "people" {
                MenuView(currentDate: currentDate, selectedNum: selectedNum, selectedTime: selectedTime)
            }
            
          
             Spacer()
            Button{
                
                print("hello world2")
                if menuState == "People" {
                    print("hello world1")
                    self.menuState = "Info"
                }
                
            } label: {
                Text("Next")
                    .font(.title2)
                    .bold()
            }
            .padding()
            .foregroundColor(.white)
            
            .frame(minWidth: 0 , maxWidth: .infinity)
            .background(.blue)
            .cornerRadius(8)
            
            
            
            Spacer()
        }.padding()
            
    }
}

//Drop down menu struct
struct MenuView: View {
    @State  var currentDate : Date
    @State  var isExpanded = false
    @State  var selectedNum : Int
    
    @State  var isExpandedTime = false
    @State  var selectedTime : String
    
     var reservationTimes = ["5:00","5:30","6:00","6:30","7:00", "7:30","8:00","8:30","9:00"]
    
    var body: some View {
        
        Text("Select a Date").font(.title3)
        DatePicker("", selection: $currentDate, in: Date()..., displayedComponents: .date)
            
            .scaleEffect(CGSize(width: 1.2, height: 1.2),anchor: .trailing)
        
        //People drop down below
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
        
        
        // Time drop down below
        Text("Select a Time").font(.title3)

        
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
            .font(.title2)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(8)
    }
    
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
