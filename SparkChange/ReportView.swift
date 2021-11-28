//
//  ReportView.swift
//  SparkChange
//
//  Created by Charlotte Meyer on 11/15/21.
//

import SwiftUI

struct ReportView: View {
    
    enum IType: String, CaseIterable, Identifiable {
        case SA
        case Harassment
        case Rape
        case Violence
        case Stalking
        case IT

        var id: String { self.rawValue }
    }
    
    @State var name: String = ""
    @State var lastname: String = ""
    @State var anonymous:Bool = false
    @State var location: String = ""
    @State var type = IType.SA

    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("PROFILE")                            .foregroundColor(Color.black)
){
                    VStack(alignment:.leading) {
                        Text("First Name")
//                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            
                        TextField("ex: Charlotte ", text:$name)
                            .foregroundColor(Color.gray)

                        Text("Last Name")
//                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)

                        TextField("ex: Meyer ", text:$lastname)
                            .foregroundColor(Color.gray)
                            

                    }
                }
                Section(header: Text("INCIDENT REPORT")                            .foregroundColor(Color.black)
){
                    VStack(alignment:.leading) {
                        Text("Location of Incident")
//                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            
                        TextField("ex: 330 De Neve Dr ", text:$location)
                            .foregroundColor(Color.gray)

                        Text("Incident Type").foregroundColor(Color.black)
                        
                        Picker("",selection: $type) {
                            Text("Sexual Assault").tag(IType.SA).foregroundColor(Color.black)
                            Text("Sexual Harassment").tag(IType.Harassment).foregroundColor(Color.black)
                            Text("Interpersonal Violence").tag(IType.Violence).foregroundColor(Color.black)
                            Text("Stalking").tag(IType.Stalking).foregroundColor(Color.black)
                            Text("Inappropriate Touching").tag(IType.IT).foregroundColor(Color.black)
                        }.foregroundColor(Color.black).pickerStyle(.wheel)
                        
                        Toggle("Anonymous Report", isOn: $anonymous)
                            .foregroundColor(Color.black)
                            

                    }
                }
            }
            .navigationBarTitle("Create a Report")
        }
    }
}


struct ReportView_Previews: PreviewProvider {
    static var previews: some View {
        ReportView()
    }
}
