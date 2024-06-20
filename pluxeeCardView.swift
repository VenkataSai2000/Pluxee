//
//  pluxeeCardView.swift
//  Pluxee App
//
//  Created by Pulipati Venkata Sai on 15/06/24.
//

import SwiftUI

struct pluxeeCardView: View {
    @State var showCardNumber = false
    var body: some View {
        RoundedRectangle(cornerRadius: 15.0)
            .fill(Color(red: 107/255, green: 232/255, blue: 112/255))
            .frame(width: 400, height: 250)
            .overlay(){
                VStack(spacing: 0){
                    HStack(spacing:0){
                        Image("MealImg")
                        Text("Meal")
                        Spacer()
                        Text("pluxee")
                            .font(.title)
                            .bold()
                    }
                    .foregroundColor(Color(red: 33/255, green: 29/255, blue: 68/255))
                    .padding()
                    Spacer()
                    Image("CardIcon")
                        .padding(.trailing,230)
                        .overlay(){
                            
                            VStack(spacing:0) {
                                Text(showCardNumber ? "63XX XXXX XXXX XXXX" : "6375 1308 4296 3794")
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color(red: 33/255, green: 29/255, blue: 68/255))
                                .padding(.top,45)
                                Spacer()
                                if(!showCardNumber){
                                    Button {
                                        showCardNumber.toggle()
                                    } label: {
                                        Rectangle()
                                            .fill(Color.blue)
                                            .frame(width: 160, height: 50)
                                            .overlay(){
                                                Text("Card details")
                                                    .bold()
                                                    .foregroundColor(.white)
                                            }
                                            
                                    }.buttonStyle(.plain)
                                        //.padding(.bottom,0)
                                        .frame(width: 160, height: 50)
                                }else{
                                    HStack(spacing:0){
                                        
                                        Text("PULIPATI")
                                            .font(.title2)
                                            .bold()
                                            .padding(.leading,10)
                                            .padding(.top,12)
                                        Spacer()
                                        VStack {
                                            Text("EXPIERY")
                                                .font(.caption)
                                            Text("07/25")
                                                .font(.title3)
                                                .bold()
                                        }
                                        Spacer()
                                        VStack {
                                            Text("CVV")
                                                .font(.caption)
                                            Text("161")
                                                .font(.title3)
                                                .bold()
                                        }
                                        .padding(.trailing,10)
                                    }
                                }
                                    

                            }
                        }
                    Spacer()
                }
            }
            .onTapGesture {
                showCardNumber.toggle()
            }
            
    }
}
struct benefitsCard:View{
    var body: some View{
        VStack{}
    }
}
struct pluxeeCardView_Previews: PreviewProvider {
    static var previews: some View {
        pluxeeCardView()
    }
}
