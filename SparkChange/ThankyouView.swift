//
//  ThankyouView.swift
//  SparkChange
//
//  Created by Charlotte Meyer on 11/28/21.
//

import SwiftUI

struct ThankyouView: View {
    @State private var selection: String? = nil
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Thank you!")
                        .fontWeight(.black)
                        .foregroundColor(Color.black)
                }
                Text("Your submission has been received! If this is an emergency, please dial 911. For additional services, please visit our Resources page.")
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                Spacer()
//                NavigationLink(destination : RessourceView()) {
//                    Text("Resources")
//                        .fontWeight(.bold)
//                        .foregroundColor(Color.red)
//                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//                           
//                       }


            }

               }
    }
}

struct ThankyouView_Previews: PreviewProvider {
    static var previews: some View {
        ThankyouView()
    }
}
