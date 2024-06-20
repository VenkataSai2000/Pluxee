//
//  ContentView.swift
//  Pluxee App
//
//  Created by Pulipati Venkata Sai on 15/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HomePageView()
    }
}

struct hamburgerButton : View{
    @Binding var showSidebarMenu:Bool
    var body: some View{
        Button {
            showSidebarMenu.toggle()
        } label: {
            VStack{
                Rectangle()
                    .size(width: 30, height: 4)
                Rectangle()
                    .size(width: 30, height: 4)
                Rectangle()
                    .size(width: 30, height: 4)
            }
            .frame(width: 30, height: 15)
            .foregroundColor(.white)
                
        }

    }
}

struct balanceView: View{
    private var currencyFormatter: NumberFormatter {
            let formatter = NumberFormatter()
            formatter.numberStyle = .currency
            formatter.currencyCode = "INR" // Set currency code to INR for Indian Rupee
            formatter.locale = Locale(identifier: "en_IN") // Set locale to India
            formatter.maximumFractionDigits = 2 // Set to 2 decimal places for cents/paise
            return formatter
        }
    var balance:Double = 4000.5
    var body: some View{
        VStack(spacing:0){
            Text("Meal card: \(NSNumber(value: balance),formatter: currencyFormatter)")
                .padding(.bottom,10)
                .padding(.trailing,235)
            HStack(spacing:0){
                Image("BalanceMealImg")
                    .padding()
                    //.padding(.leading,30)
                VStack(spacing:0){
                    Text("Meal Card")
                        .font(.title2)
                        .bold()
                        .foregroundColor(Color(red: 33/255, green: 29/255, blue: 68/255))
                        .padding(5)
                        .padding(.bottom,10)
                    Text("\(NSNumber(value: balance),formatter: currencyFormatter)")
                        .padding(.trailing)
                }
                Spacer()
            }
            .frame(width: 400)
            .background(){
                RoundedRectangle(cornerRadius: 5)
                    .stroke(.gray, lineWidth: 2.0)
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        //hamburgerButton()
        //balanceView()
    }
}
