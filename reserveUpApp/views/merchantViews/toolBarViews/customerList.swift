//
//  customerList.swift
//  reserveUpApp
//
//  Created by Tunc Gonel on 2022-08-31.
//

import SwiftUI

struct customerList: View {
    var body: some View {
        List{
            NavigationLink(destination: customerDetails(), label: {
                customerRow(title: "Customer title", subTitle: "SUbtitle")
            })
            
        }
    }
}


