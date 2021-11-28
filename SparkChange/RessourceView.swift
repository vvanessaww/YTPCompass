//
//  RessourceView.swift
//  SparkChange
//
//  Created by Charlotte Meyer on 11/15/21.
//
//import WaterfallGrid
import SwiftUI

struct RessourceView: View {
    var body: some View {
        ScrollView{
            VStack(){
                    Text("Resources and References           ")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding([.bottom, .trailing])

                }
                HStack() {
                    Link("National Sexual Violence Resource Center:",
                         destination: URL(string: "https://www.example.com/TOS.html")!)
                        .padding(.leading)
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.068, green: 0.286, blue: 0.484)/*@END_MENU_TOKEN@*/)
                    Text("This site offers a wide variety of information relating to sexual violence including a large legal resource library.")
                        .padding([.bottom])
                }
            HStack() {
                Link("National Organization for Victim Assistance:",
                     destination: URL(string: "https://www.trynova.org/who-we-are/")!)
                    .padding(.leading)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.068, green: 0.286, blue: 0.484)/*@END_MENU_TOKEN@*/)
                
                Text("Founded in 1975, NOVA is the oldest national victim assistance organization of its type in the United States as the recognized leader in this noble cause.")
                    .padding([.bottom, .trailing])


            }
         HStack() {
                Link("National Online Resource Center on Violence Against Women:",
                     destination: URL(string: "https://vawnet.org")!)
                    .padding(.leading)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.068, green: 0.286, blue: 0.484)/*@END_MENU_TOKEN@*/)
                Text("VAWnet, a project of the National Resource Center on Domestic Violence hosts a resource library home of thousands of materials on violence against women and related issues, with particular attention to its intersections with various forms of oppression.")
                    .padding([.bottom])
            }
            HStack() {
                Link("U.S. Department of Justice: National Sex Offender Public Website: ",
                     destination: URL(string: "https://www.nsopw.gov/Home")!)
                    .padding(.leading)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.068, green: 0.286, blue: 0.484)/*@END_MENU_TOKEN@*/)
                Text("NSOPW is the only U.S. government Website that links public state, territorial, and tribal sex offender registries from one national search site.")
                    .padding([.bottom])
            }
            HStack() {
                Link("The National Center for Victims of Crime:",
                     destination: URL(string: "https://victimsofcrime.org")!)
                    .padding(.leading)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.068, green: 0.286, blue: 0.484)/*@END_MENU_TOKEN@*/)
                Text("NSOPW is the only U.S. government Website that links public state, territorial, and tribal sex offender registries from one national search site.")
                    .padding([.bottom])
            }
            HStack() {
                Link("National Street Harassment Hotline: ",
                     destination: URL(string: "http://stopstreetharassment.org/our-work/nationalshhotline/")!)
                    .padding(.leading)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.068, green: 0.286, blue: 0.484)/*@END_MENU_TOKEN@*/)
                Text("Created by Stop Street Harassment, Defend Yourself, and operated by RAINN, the National Street Harassment Hotline is a resource for those affected by gender-based street harassment. Support is available in English and Spanish: call 855.897.5910 or chat online")
                    .padding([.bottom])
            }
            Text("Asian, Native Hawaiian and Pacific Islander Survivors:")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
                .padding([.leading, .bottom, .trailing])
        }
    }
}

struct RessourceView_Previews: PreviewProvider {
    static var previews: some View {
        RessourceView()
    }
}
