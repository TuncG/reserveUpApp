//
//  Home.swift
//  reserveUpApp
//
//  Created by Tunc Gonel on 2022-08-08.
//

import SwiftUI

struct Home: View {
    @State var email = ""
    @State var password = ""
    @State var nextMenu = false
    
    @State  var menuState = "people"
        @State  var selectedNum = 1
        @State  var currentDate = Date()
        
        @State  var selectedTime = "2:00"
    
    var body: some View {
        VStack{
          
            Text("ReserveUp")
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .background(.blue   )
                .foregroundColor(.white)
                
                
               
            Spacer()
            VStack{
                
                if nextMenu == true {
                    informationVIew(email: email, password: password)
                }
                if nextMenu == false {
                   timeView(currentDate: currentDate, selectedNum: selectedNum, selectedTime: selectedTime)
                }
                
                Button(action: {
                    if nextMenu == true && isValidEmail(testStr: email) == false {
                        
                    }else {
                        nextMenu.toggle()
                    }
                   
                }, label: {
                    
                    Image(systemName: "arrow.right")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)
                        .padding()
                        .background(.blue)
                        .clipShape(Circle())
                        
                })
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top,25)
               
            }
            .padding()
            .padding(.bottom,125)
            Spacer()
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

func isValidEmail(testStr:String) -> Bool {
            print("validate emilId: \(testStr)")
            let emailRegEx = "^(?:(?:(?:(?: )*(?:(?:(?:\\t| )*\\r\\n)?(?:\\t| )+))+(?: )*)|(?: )+)?(?:(?:(?:[-A-Za-z0-9!#$%&’*+/=?^_'{|}~]+(?:\\.[-A-Za-z0-9!#$%&’*+/=?^_'{|}~]+)*)|(?:\"(?:(?:(?:(?: )*(?:(?:[!#-Z^-~]|\\[|\\])|(?:\\\\(?:\\t|[ -~]))))+(?: )*)|(?: )+)\"))(?:@)(?:(?:(?:[A-Za-z0-9](?:[-A-Za-z0-9]{0,61}[A-Za-z0-9])?)(?:\\.[A-Za-z0-9](?:[-A-Za-z0-9]{0,61}[A-Za-z0-9])?)*)|(?:\\[(?:(?:(?:(?:(?:[0-9]|(?:[1-9][0-9])|(?:1[0-9][0-9])|(?:2[0-4][0-9])|(?:25[0-5]))\\.){3}(?:[0-9]|(?:[1-9][0-9])|(?:1[0-9][0-9])|(?:2[0-4][0-9])|(?:25[0-5]))))|(?:(?:(?: )*[!-Z^-~])*(?: )*)|(?:[Vv][0-9A-Fa-f]+\\.[-A-Za-z0-9._~!$&'()*+,;=:]+))\\])))(?:(?:(?:(?: )*(?:(?:(?:\\t| )*\\r\\n)?(?:\\t| )+))+(?: )*)|(?: )+)?$"
            let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
            let result = emailTest.evaluate(with: testStr)
            return result
        }

