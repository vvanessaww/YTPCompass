//
//  ContentView.swift
//  SparkChange
//
//  Created by Charlotte Meyer on 11/15/21.
//
import MapKit
import SwiftUI

struct AnnotatedItem: Identifiable {
    let id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
}
struct MapView: View {

    @State var isModal: Bool = false
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 34.068146506450404,
            longitude: -118.44902974624351
        ),
        span: MKCoordinateSpan(
            latitudeDelta: 0.001,
            longitudeDelta: 0.001
        )
    )
    
    
    private var pointsOfInterest = [
        AnnotatedItem(name: "Sigma Nu", coordinate: .init(latitude: 34.068146506450404, longitude: -118.44902974624351)),
        AnnotatedItem(name: "Beta", coordinate: .init(latitude: 34.068617814997616, longitude:-118.44933924489207)),
        AnnotatedItem(name: "Theta Xi", coordinate: .init(latitude: 34.06750304147997,
            longitude:-118.44866568221791)),
        AnnotatedItem(name: "Pi Kappa Phi", coordinate:
            .init(latitude: 34.06789422040601,
            longitude:-118.4488443380001)),
        AnnotatedItem(name: "ZBT", coordinate: .init(latitude: 34.06889166085289, longitude:-118.44996020424179)),
        AnnotatedItem(name: "Theta Delta Chi", coordinate: .init(latitude: 34.06894591732338, longitude:-118.45019451100525)),
        AnnotatedItem(name: "Sigma Chi", coordinate: .init(latitude: 34.07041720490674, longitude:-118.4524622740615)),
        AnnotatedItem(name: "Treehouse", coordinate: .init(latitude: 34.068006970297155, longitude:-118.44968472749744)),
        AnnotatedItem(name: "Atrium", coordinate: .init(latitude: 34.06636804775232, longitude:-118.45030370876886)),
        AnnotatedItem(name: "638 Landfair", coordinate: .init(latitude: 34.06663650823538, longitude:-118.44842663539559)),
        AnnotatedItem(name: "AEPi", coordinate: .init(latitude: 34.06614546436538, longitude:-118.44882862859659)),
        AnnotatedItem(name: "AEPi", coordinate: .init(latitude: 34.06614546436538, longitude:-118.44882862859659)),
        AnnotatedItem(name: "AEPi", coordinate: .init(latitude: 34.06614546436538, longitude:-118.44882862859659)),
        AnnotatedItem(name: "Lambda Chi Alpha", coordinate: .init(latitude: 34.067882126667236, longitude:-118.44917751867092)),
        AnnotatedItem(name: "Lambda Chi Alpha", coordinate: .init(latitude: 34.067882126667236, longitude:-118.44917751867092)),
        AnnotatedItem(name: "UCLA Sign", coordinate: .init(latitude: 34.06857051087697, longitude:-118.44874095170877)),
        AnnotatedItem(name: "SAE", coordinate: .init(latitude: 34.06656891779748, longitude: -118.44780957910977)),
        AnnotatedItem(name: "SAE", coordinate: .init(latitude: 34.06656891779748, longitude: -118.44780957910977))
        ]

    var body: some View {
        
        ZStack {
            VStack {
                Map(coordinateRegion: $region,
                    interactionModes: MapInteractionModes.all, showsUserLocation: true, userTrackingMode: .constant(.follow),annotationItems: pointsOfInterest)
                { item in
                    MapAnnotation(coordinate: item.coordinate) {
                        Circle()
                            .frame(width: 100, height: 100)
                            .opacity(/*@START_MENU_TOKEN@*/0.4/*@END_MENU_TOKEN@*/)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
                    }
                }
                    .edgesIgnoringSafeArea(.all)
            }
            VStack {
                Spacer()
//                Spacer()
//                Spacer()
                Button("MAKE A REPORT") {
                    self.isModal = true
                }
                .padding(.all)
                .sheet(isPresented: $isModal, content: {
                    ReportView()
                })
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(20)
//                Spacer()
////                Spacer()
//                NavigationLink(destination: ReportView()) {Text("Click here to make report") }
            }
            .padding(.all)
            
//            .buttonStyle(ButtonStyle3D(background: Color.yellow))
        }
    }
}


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
