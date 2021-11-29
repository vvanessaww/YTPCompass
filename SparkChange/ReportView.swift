//
//  ReportView.swift
//  SparkChange
//
//  Created by Charlotte Meyer on 11/05/21.
//

import SwiftUI

class Longitude: ObservableObject {
    @Published var longitude: String = ""
}

class Latitude: ObservableObject {
    @Published var latitude: String = ""

}
struct ReportView: View {
    
    enum IType: String, CaseIterable, Identifiable {
        case SA
        case Harassment
        case Rape
        case Violence
        case Stalking
        case IT
        case SpikedDrink
        case AttemptedRape
        case CompletedRape

        var id: String { self.rawValue }
    }

    @State var name: String = ""
    @State var lastname: String = ""
    @State var other_incident: String = ""
    @State var anonymous:Bool = false
    @State var latitude: String = ""
    @State var longitude: String = ""
    @EnvironmentObject var longitude_string: Longitude
    @EnvironmentObject var latitude_string: Latitude

    
    @State var type = IType.SA
    @State var isModal: Bool = false

    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("PROFILE")                            .foregroundColor(Color.black)
){
                    VStack(alignment:.leading) {
                        Text("First Name")
//                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            
                        TextField("Ex: Charlotte ", text:$name)
                            .foregroundColor(Color.gray)

                        Text("Last Name")
//                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)

                        TextField("Ex: Meyer ", text:$lastname)
                            .foregroundColor(Color.gray)
                            

                    }
                }
                Section(header: Text("INCIDENT REPORT")                            .foregroundColor(Color.black)
){
                    VStack(alignment:.leading) {
                        Text("Location of Incident")
//                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            
                        TextField("Latitude ex: 44.06750304147997 ", text:$latitude)
                            .foregroundColor(Color.gray)

 
                        TextField("Longitude ex: -128.44866568221791 ", text:$longitude)
                            .foregroundColor(Color.gray)

                        Text("Incident Type").foregroundColor(Color.black)
                        
                        Picker("",selection: $type) {
                            Text("Sexual Assault").tag(IType.SA).foregroundColor(Color.black)
                            Text("Sexual Harassment").tag(IType.Harassment).foregroundColor(Color.black)
                            Text("Interpersonal Violence").tag(IType.Violence).foregroundColor(Color.black)
                            Text("Stalking").tag(IType.Stalking).foregroundColor(Color.black)
                            Text("Inappropriate Touching").tag(IType.IT).foregroundColor(Color.black)
                            
                            Text("Spiked Drink (Roofied)").tag(IType.SpikedDrink).foregroundColor(Color.black)
                            Text("Attempted Rape").tag(IType.AttemptedRape).foregroundColor(Color.black)
                            Text("Completed Rape").tag(IType.CompletedRape).foregroundColor(Color.black)
                        }.foregroundColor(Color.black).pickerStyle(.wheel)
                        Text("If none of the previous options apply:")
//                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)

                        TextField("Other Incident ", text: $other_incident)
                            .foregroundColor(Color.gray)
                        
                        Toggle("Anonymous Report", isOn: $anonymous)
                            .foregroundColor(Color.black)
                        NavigationLink(destination : ThankyouView()) {
                            Text("Submit")
                                .foregroundColor(Color.blue)
//                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                   
                               }
                    }

                }
                
            }
            .navigationBarTitle("Create a Report")
        }
//        .environmentObject(longitude_string)
//        .environmentObject(latitude_string)

    }
    
}


struct ReportView_Previews: PreviewProvider {
    static var previews: some View {
        ReportView()
    }
}
