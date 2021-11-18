//
//  SettingView.swift
//  Track_A_Gotchi
//
//  Created by Alessandra De Matteo on 17/11/21.
//

import SwiftUI

struct SettingView: View {
    @State private var showModal = false
    var body: some View {
        NavigationView{
            VStack {
                Image("pet1")
                    .resizable()
                    .frame(width: 100, height: 100)
                Spacer()
                List{
                    Section(header: Text("Label 1")){
                        Button("Opzione 1") {
                            self.showModal.toggle()
                        }.sheet(isPresented: $showModal){
                            ModalSetting1(showModal: self.$showModal)
                        }
                        Button("Opzione 2") {
                            self.showModal.toggle()
                        }.sheet(isPresented: $showModal){
                            ModalSetting2(showModal: self.$showModal)
                        }
                        Button("Opzione 3") {
                            self.showModal.toggle()
                        }.sheet(isPresented: $showModal){
                            ModalSetting2(showModal: self.$showModal)
                        }
                    }
                    Section(header: Text("Label 2")){
                        Button("Opzione 1") {
                            self.showModal.toggle()
                        }.sheet(isPresented: $showModal){
                            ModalSetting1(showModal: self.$showModal)
                        }
                        Button("Opzione 2") {
                            self.showModal.toggle()
                        }.sheet(isPresented: $showModal){
                            ModalSetting2(showModal: self.$showModal)
                        }
                        Button("Opzione 3") {
                            self.showModal.toggle()
                        }.sheet(isPresented: $showModal){
                            ModalSetting2(showModal: self.$showModal)
                        }
                    }
                    Section(header: Text("Label 3")){
                        Button("Opzione 1") {
                            self.showModal.toggle()
                        }.sheet(isPresented: $showModal){
                            ModalSetting1(showModal: self.$showModal)
                        }
                        Button("Opzione 2") {
                            self.showModal.toggle()
                        }.sheet(isPresented: $showModal){
                            ModalSetting2(showModal: self.$showModal)
                        }
                    }
                }
                Spacer()
                NavigationLink(destination: ContentView()){
                    Text("Change your routine!")
                        .foregroundColor(.white)
                        .frame(width: 200, height: 50, alignment: .center)
                        .background(Color.blue)
                        .cornerRadius(10)
                }.navigationTitle("Setting")
            }
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
