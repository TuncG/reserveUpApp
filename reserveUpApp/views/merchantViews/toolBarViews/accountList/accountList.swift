//
//  accountList.swift
//  reserveUpApp
//
//  Created by Tunc Gonel on 2022-09-15.
//

import SwiftUI

struct accountList: View {
    var body: some View {
        List{
            Section(header:
                Text("Account Information")
                .font(.title2)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom,15)
                .foregroundColor(.black)
                
            ){
                
                NavigationLink(destination: accountName(), label: {
                   Text("Edit account name")
                })
                
                NavigationLink(destination: accountEmail(), label: {
                   Text("Edit account email")
                })
                   
                NavigationLink(destination: accountPassword(), label: {
                   Text("Edit account password")
                })
                    
                    
                }
            }
    }
}

struct accountList_Previews: PreviewProvider {
    static var previews: some View {
        accountList()
    }
}
