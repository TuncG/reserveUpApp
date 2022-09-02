//
//  reservationView.swift
//  reserveUpApp
//
//  Created by Tunc Gonel on 2022-08-27.
//

import SwiftUI

//
//  Home.swift
//  reserveUpApp
//
//  Created by Tunc Gonel on 2022-08-08.
//

import SwiftUI

struct reservationView: View {

    @State var nextMenu = false
    @State var infoMenu = false
    @State var confirmMenu = false
    

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
                if confirmMenu == true {
                    
                    comfirmationView( userInfo: userInfo)
                    
                }
                
                if nextMenu == true {
                    informationVIew(userInfo: userInfo)
                    
                    
                    
                    
                }
                else if infoMenu == false {
                    timeView(userInfo: userInfo)
                }
                
                HStack{
                    if infoMenu == true{
                        
                    Button(action: {
                        if confirmMenu == true{
                            nextMenu = true
                           confirmMenu = false
                        }
                        else if infoMenu == true {
                          nextMenu = false
                            userInfo.email  = ""
                           infoMenu = false
                        }
                
                        
                        
                    }, label: {
                        
                        Image(systemName: "arrow.left")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.white)
                            .padding()
                            .background(.blue)
                            .clipShape(Circle())
                        
                    })
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top,15)
                        
                    }
                    
                    if confirmMenu == false {
                    Button(action: {
                        
                        if isValidEmailAddr(strToValidate: userInfo.email) == true {
                          
                            confirmMenu = true
                            nextMenu = false
                            
                           // nextMenu.toggle()
                        }
                        else if infoMenu == false {
                            infoMenu = true
                            nextMenu = true
                        }
                        
                    }, label: {
                        
                        Image(systemName: "arrow.right")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.white)
                            .padding()
                            .background(.blue)
                            .clipShape(Circle())
                        
                    })
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.top,15)
                    }
                   
                }
                
            }
            .padding()
            .padding(.bottom,70)
            Spacer()
            
        }
    }
}


func isValidEmailAddr(strToValidate: String) -> Bool {
  let emailValidationRegex = "^[\\p{L}0-9!#$%&'*+\\/=?^_`{|}~-][\\p{L}0-9.!#$%&'*+\\/=?^_`{|}~-]{0,63}@[\\p{L}0-9-]+(?:\\.[\\p{L}0-9-]{2,7})*$"  // 1

  let emailValidationPredicate = NSPredicate(format: "SELF MATCHES %@", emailValidationRegex)  // 2

  return emailValidationPredicate.evaluate(with: strToValidate)  // 3
}



