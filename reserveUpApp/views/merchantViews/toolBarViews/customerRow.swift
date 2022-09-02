//
//  customerRow.swift
//  reserveUpApp
//
//  Created by Tunc Gonel on 2022-08-31.
//

import SwiftUI

struct customerRow: View {
    
    var title: String
    var subTitle: String
    
    var body: some View {
        
        VStack{
            Text(title)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text(subTitle)
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        
    }
}

