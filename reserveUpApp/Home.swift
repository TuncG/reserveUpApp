//
//  Home.swift
//  reserveUpApp
//
//  Created by Tunc Gonel on 2022-08-08.
//

import SwiftUI

struct Home: View {

    @State var nextMenu = false

    var userInfo = UserInfo()
    
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
                    informationVIew(userInfo: userInfo)
                    
                    
                    
                    
                }
                if nextMenu == false {
                    timeView(userInfo: userInfo)
                }
                
                Button(action: {
                    
                    if isValidEmailAddr(strToValidate: userInfo.email) == true {
                      
                       
                        nextMenu.toggle()
                    }
                    else if userInfo.email == ""  {
                       
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

func isValidEmailAddr(strToValidate: String) -> Bool {
  let emailValidationRegex = "^[\\p{L}0-9!#$%&'*+\\/=?^_`{|}~-][\\p{L}0-9.!#$%&'*+\\/=?^_`{|}~-]{0,63}@[\\p{L}0-9-]+(?:\\.[\\p{L}0-9-]{2,7})*$"  // 1

  let emailValidationPredicate = NSPredicate(format: "SELF MATCHES %@", emailValidationRegex)  // 2

  return emailValidationPredicate.evaluate(with: strToValidate)  // 3
}

