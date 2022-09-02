//
//  customerReservationView.swift
//  reserveUpApp
//
//  Created by Tunc Gonel on 2022-08-27.
//

import SwiftUI

struct customerReservationView: View {
    var body: some View {
        customerList()
            .navigationTitle("Reservations")
            
    }
}

struct customerReservationView_Previews: PreviewProvider {
    static var previews: some View {
        customerReservationView()
    }
}
