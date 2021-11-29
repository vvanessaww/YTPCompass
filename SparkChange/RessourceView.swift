//
//  RessourceView.swift
//  SparkChange
//
//  Created by Charlotte Meyer on 11/05/21.
//
//import WaterfallGrid
import SwiftUI

struct RessourceView: View {
    var body: some View {
        ScrollView{
            Group {
                VStack(){
                        Text("General Resources for College Students")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .padding([.bottom, .trailing])

                }
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
                Link("Know Your IX:             ",
                     destination: URL(string: "https://www.knowyourix.org")!)
                    .padding(.leading)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.068, green: 0.286, blue: 0.484)/*@END_MENU_TOKEN@*/)
                Text("Provides information for students about their Title IX rights in regards to ending sexual violence on campus.")
                    .padding([.bottom])
            }
            HStack() {
                Link("Laws in Your State:     ",
                     destination: URL(string: "https://apps.rainn.org/policy/?&_ga=2.76136336.427534059.1638162514-1788718051.1635103333#report-generator")!)
                    .padding(.leading)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.068, green: 0.286, blue: 0.484)/*@END_MENU_TOKEN@*/)
                Text("From the legal definition of rape to the statute of limitation for a particular sex crime, where you live makes a difference. See our guide to the laws in your state.")
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
                Link("National Street Harassment Hotline: ",
                     destination: URL(string: "http://stopstreetharassment.org/our-work/nationalshhotline/")!)
                    .padding(.leading)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.068, green: 0.286, blue: 0.484)/*@END_MENU_TOKEN@*/)
                Text("Created by Stop Street Harassment, Defend Yourself, and operated by RAINN, the National Street Harassment Hotline is a resource for those affected by gender-based street harassment. Support is available in English and Spanish: call 855.897.5910 or chat online")
                    .padding([.bottom])
            }

            Text("Asian, Native Hawaiian and Pacific Islander Survivors")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
                .padding([.leading, .bottom, .trailing])
            HStack() {
                Link("Asian Pacific Institute on Gender-Based Violence: ",
                     destination: URL(string: "https://www.api-gbv.org")!)
                    .padding(.leading)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.068, green: 0.286, blue: 0.484)/*@END_MENU_TOKEN@*/)
                Text("A national resource center on domestic violence, sexual violence, trafficking, and other forms of gender-based violence in Asian and Pacific Islander communities. This organization provides local referrals to survivors in Asian and Pacific Islander communities, and also works to create systemic change by providing training to professionals and advocating for research-based policy changes.")
                    .padding([.bottom])
            }
            Text("Black Survivors                  ")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
                .padding([.leading, .bottom, .trailing])
            HStack() {
                   Link("Ujima:                          ",
                        destination: URL(string: "https://ujimacommunity.org")!)
                       .padding(.leading)
                       .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.068, green: 0.286, blue: 0.484)/*@END_MENU_TOKEN@*/)
                   Text("The National Center on Violence Against Women in the Black Community works to respond to and end domestic, sexual, and community violence in the Black community through research, public awareness, community engagement, and resource development.")
                       .padding([.bottom])
               }
            
        }
//        Group {
//            VStack{
//                HStack() {
//                    Link("Laws in Your State: ",
//                         destination: URL(string: "https://apps.rainn.org/policy/?&_ga=2.76136336.427534059.1638162514-1788718051.1635103333#report-generator")!)
//                        .padding(.leading)
//                        .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.068, green: 0.286, blue: 0.484)/*@END_MENU_TOKEN@*/)
//                    Text("From the legal definition of rape to the statute of limitation for a particular sex crime, where you live makes a difference. See our guide to the laws in your state.")
//                        .padding([.bottom])
//                }
//            }
//        }

    }
    
}

struct RessourceView_Previews: PreviewProvider {
    static var previews: some View {
        RessourceView()
    }
}
