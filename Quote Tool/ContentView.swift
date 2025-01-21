//
//  ContentView.swift
//  Quote Tool
//
//  Created by Xinyu Li on 2024/8/6.
//

import SwiftUI

struct Machine: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let price: Double
    let isIDU: Bool
    let isODU: Bool
    let Btu95min: Int
    let Btu95rated: Int
    let Btu95max: Int
    let Btu17rated: Int
    let Btu17max: Int
    let Btu5max: Int
    
    let backgroundColor: Color
}

struct SelectedMachine: Identifiable {
    let id = UUID()
    let machine: Machine
    var quantity: Int
}

let backgroundColor0 = Color(.systemBackground)
let backgroundColor1 = Color(.secondarySystemBackground)

class MachineViewModel: ObservableObject {
    @Published var machines25Seer: [Machine] = [
        Machine(name: "KW09HQ25SA SET", price: 667.0, isIDU: true, isODU: true, Btu95min: 1700, Btu95rated: 9100, Btu95max: 13000, Btu17rated: 7000, Btu17max: 11000, Btu5max: 9900, backgroundColor: backgroundColor0),
        Machine(name: "KW09HQ25SD SET", price: 679.0, isIDU: true, isODU: true, Btu95min: 1600, Btu95rated: 9100, Btu95max: 10800, Btu17rated: 7000, Btu17max: 11000, Btu5max: 9100, backgroundColor: backgroundColor0),
        Machine(name: "KW12HQ25SA SET", price: 686.0, isIDU: true, isODU: true, Btu95min: 3050, Btu95rated: 12000, Btu95max: 14000, Btu17rated: 7000, Btu17max: 10900, Btu5max: 8800, backgroundColor: backgroundColor0),
        Machine(name: "KW12HQ25SD SET", price: 700.0, isIDU: true, isODU: true, Btu95min: 3050, Btu95rated: 12000, Btu95max: 14000, Btu17rated: 7000, Btu17max: 10900, Btu5max: 8800, backgroundColor: backgroundColor0),
        Machine(name: "KW18HQ25SD SET", price: 839.0, isIDU: true, isODU: true, Btu95min: 4900, Btu95rated: 18000, Btu95max: 21154, Btu17rated: 10800, Btu17max: 15500, Btu5max: 13100, backgroundColor: backgroundColor0),
        Machine(name: "KW24HQ25SD SET", price: 1051.0, isIDU: true, isODU: true, Btu95min: 3400, Btu95rated: 22000, Btu95max: 28500, Btu17rated: 15000, Btu17max: 22000, Btu5max: 16100, backgroundColor: backgroundColor0),
        Machine(name: "KW36HQ20SD SET", price: 1475.0, isIDU: true, isODU: true, Btu95min: 8000, Btu95rated: 33600, Btu95max: 37000, Btu17rated: 22000, Btu17max: 28000, Btu5max: 24000, backgroundColor: backgroundColor0),
        Machine(name: "KM18H5O", price: 727.0, isIDU: false, isODU: true, Btu95min: 7000, Btu95rated: 17000, Btu95max: 19600, Btu17rated: 14700, Btu17max: 16400 , Btu5max: 13600, backgroundColor: backgroundColor1),
        Machine(name: "KM24H5O", price: 1069.0, isIDU: false, isODU: true, Btu95min: 7500, Btu95rated: 23200, Btu95max: 31400, Btu17rated: 23600, Btu17max: 26600, Btu5max: 21600, backgroundColor: backgroundColor1),
        Machine(name: "KM30H5O", price: 1248.0, isIDU: false, isODU: true, Btu95min: 8200, Btu95rated: 28400, Btu95max: 34100, Btu17rated: 27200, Btu17max: 31860, Btu5max: 22800, backgroundColor: backgroundColor1),
        Machine(name: "KM36H5O", price: 1551.0, isIDU: false, isODU: true, Btu95min: 8870, Btu95rated: 34000, Btu95max: 36000, Btu17rated: 30800, Btu17max: 37720, Btu5max: 32400, backgroundColor: backgroundColor1),
        Machine(name: "KW09HQ25SDI", price: 202.0, isIDU: true, isODU: false, Btu95min: 0, Btu95rated: 0, Btu95max: 0, Btu17rated: 0, Btu17max: 0, Btu5max: 0, backgroundColor: backgroundColor0),
        Machine(name: "KW12HQ25SDI", price: 203.0, isIDU: true, isODU: false, Btu95min: 0, Btu95rated: 0, Btu95max: 0, Btu17rated: 0, Btu17max: 0, Btu5max: 0, backgroundColor: backgroundColor0),
        Machine(name: "KW18HQ25SDI", price: 246.0, isIDU: true, isODU: false, Btu95min: 0, Btu95rated: 0, Btu95max: 0, Btu17rated: 0, Btu17max: 0, Btu5max: 0, backgroundColor: backgroundColor0),
        Machine(name: "KW24HQ25SDI", price: 331.0, isIDU: true, isODU: false, Btu95min: 0, Btu95rated: 0, Btu95max: 0, Btu17rated: 0, Btu17max: 0, Btu5max: 0, backgroundColor: backgroundColor0),
        Machine(name: "KU36UHO/2I", price: 3094.0, isIDU: true, isODU: true, Btu95min: 11000, Btu95rated: 34000, Btu95max: 34000, Btu17rated: 24000, Btu17max: 35000, Btu5max: 28000, backgroundColor: backgroundColor1),
        Machine(name: "KU60UHO/2I", price: 4074.0, isIDU: true, isODU: true, Btu95min: 15300, Btu95rated: 54000, Btu95max: 54000, Btu17rated: 36000, Btu17max: 49000, Btu5max: 41000, backgroundColor: backgroundColor1)
    ]
    
    @Published var machines19Seer: [Machine] = [
        Machine(name: "KW09HQ19SA SET", price: 499.0, isIDU: true, isODU: true, Btu95min: 3000, Btu95rated: 9100, Btu95max: 11000, Btu17rated: 6000, Btu17max: 9400, Btu5max: 7500, backgroundColor: backgroundColor0),
        Machine(name: "KW09HQ19SD SET", price: 499.0, isIDU: true, isODU: true, Btu95min: 2000, Btu95rated: 9100, Btu95max: 10300, Btu17rated: 6000, Btu17max: 9000, Btu5max: 7400, backgroundColor: backgroundColor0),
        Machine(name: "KW12HQ19SA SET", price: 529.0, isIDU: true, isODU: true, Btu95min: 2400, Btu95rated: 12000, Btu95max: 13300, Btu17rated: 6800, Btu17max: 11500, Btu5max: 8500, backgroundColor: backgroundColor0),
        Machine(name: "KW12HQ19SD SET", price: 529.0, isIDU: true, isODU: true, Btu95min: 2400, Btu95rated: 12000, Btu95max: 13300, Btu17rated: 6800, Btu17max: 11500, Btu5max: 8500, backgroundColor: backgroundColor0),
        Machine(name: "KW18HQ19SD SET", price: 815, isIDU: true, isODU: true, Btu95min: 3400, Btu95rated: 17600, Btu95max: 19960, Btu17rated: 11200, Btu17max: 14400, Btu5max: 11800, backgroundColor: backgroundColor0),
        Machine(name: "KW24HQ17SD SET", price: 918.0, isIDU: true, isODU: true, Btu95min: 6824, Btu95rated: 22000, Btu95max: 25249, Btu17rated: 13900, Btu17max: 18760, Btu5max: 15000, backgroundColor: backgroundColor0),
        Machine(name: "KW24HQ19SD SET", price: 939.0, isIDU: true, isODU: true, Btu95min: 6824, Btu95rated: 22000, Btu95max: 25249, Btu17rated: 13900, Btu17max: 18760, Btu5max: 15000, backgroundColor: backgroundColor0),
        Machine(name: "KW07HQ19SDI", price: 135.0, isIDU: true, isODU: false, Btu95min: 0, Btu95rated: 0, Btu95max: 0, Btu17rated: 0, Btu17max: 0, Btu5max: 0, backgroundColor: backgroundColor1),
        Machine(name: "KW09HQ19SDI", price: 142.0, isIDU: true, isODU: false, Btu95min: 0, Btu95rated: 0, Btu95max: 0, Btu17rated: 0, Btu17max: 0, Btu5max: 0, backgroundColor: backgroundColor1),
        Machine(name: "KW12HQ19SDI", price: 151.0, isIDU: true, isODU: false, Btu95min: 0, Btu95rated: 0, Btu95max: 0, Btu17rated: 0, Btu17max: 0, Btu5max: 0, backgroundColor: backgroundColor1),
        Machine(name: "KW18HQ19SDI", price: 240.0, isIDU: true, isODU: false, Btu95min: 0, Btu95rated: 0, Btu95max: 0, Btu17rated: 0, Btu17max: 0, Btu5max: 0, backgroundColor: backgroundColor1),
        Machine(name: "KW24HQ19SDI", price: 270.0, isIDU: true, isODU: false, Btu95min: 0, Btu95rated: 0, Btu95max: 0, Btu17rated: 0, Btu17max: 0, Btu5max: 0, backgroundColor: backgroundColor1)
    ]
    
    @Published var selectedMachines: [SelectedMachine] = []
    @AppStorage("showRebateAndFinalBalance") var showRebateAndFinalBalance: Bool = false
    
    var selectedSeer: String {
        get {
            UserDefaults.standard.string(forKey: "selectedSeer") ?? "25seer"
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "selectedSeer")
            objectWillChange.send()
        }
    }

    var installationFee: Double {
            get {
                let fee = UserDefaults.standard.double(forKey: "installationFee")
                return fee == 0 ? 700: fee
            }
            set {
                UserDefaults.standard.set(newValue, forKey: "installationFee")
                objectWillChange.send()
            }
        }
    
    var SF: Double {
            get {
                let sf = UserDefaults.standard.double(forKey: "SF")
                return sf == 0 ? 2000: sf
            }
            set {
                UserDefaults.standard.set(newValue, forKey: "SF")
                objectWillChange.send()
            }
        }

    var equipmentMarkupPercentage: Double {
        get {
            let percentage = UserDefaults.standard.double(forKey: "equipmentMarkupPercentage")
            return percentage == 0 ? 1.08875 : percentage
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "equipmentMarkupPercentage")
            objectWillChange.send()
        }
    }
    
    var markupPercentage: Double {
        get {
            let percentage = UserDefaults.standard.double(forKey: "markupPercentage")
            return percentage == 0 ? 1.4 : percentage
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "markupPercentage")
            objectWillChange.send()
        }
    }
    
    var plumberFee: Double {
        get {
            let fee = UserDefaults.standard.double(forKey: "plumberFee")
            return fee == -1 ? 800 : fee
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "plumberFee")
        }
    }
    
    var subpanelFee: Double {
        get {
            let fee = UserDefaults.standard.double(forKey: "subpanelFee")
            return fee == -1 ? 0 : fee
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "subpanelFee")
        }
    }
    
    var rebate: Double {
        get {
            let fee = UserDefaults.standard.double(forKey: "rebate")
            return fee == -1 ? 8000 : fee
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "rebate")
        }
    }

    func addMachine(_ machine: Machine, quantity: Int) {
        selectedMachines.append(SelectedMachine(machine: machine, quantity: quantity))
    }
    
    func resetSelection() {
        selectedMachines.removeAll()
    }
    
    var equipmentCost: Double {
        selectedMachines.reduce(0) { $0 + ($1.machine.price * Double($1.quantity) * equipmentMarkupPercentage * markupPercentage) }
    }

    var laborCost: Double {
        selectedMachines.reduce(0) { total, selectedMachine in
            return total + (selectedMachine.machine.isIDU ? installationFee * Double(selectedMachine.quantity) * markupPercentage : 0)
        }  + plumberFee + subpanelFee
    }

    var totalCost: Double {
        equipmentCost + laborCost
    }
    
    var rebateDeduct: Double {
        totalCost == 0 ? 0 : -rebate
    }
    
    var finalBalance: Double {
        max(0, totalCost + rebateDeduct)
    }

    var Btu95min: Int {
        selectedMachines.reduce(0) { $0 + ($1.machine.Btu95min * $1.quantity) }
    }

    var Btu95rated: Int {
        selectedMachines.reduce(0) { $0 + ($1.machine.Btu95rated * $1.quantity) }
    }

    var Btu95max: Int {
        selectedMachines.reduce(0) { $0 + ($1.machine.Btu95max * $1.quantity) }
    }

    var Btu17rated: Int {
        selectedMachines.reduce(0) { $0 + ($1.machine.Btu17rated * $1.quantity) }
    }

    var Btu17max: Int {
        selectedMachines.reduce(0) { $0 + ($1.machine.Btu17max * $1.quantity) }
    }

    var Btu5max: Int {
        selectedMachines.reduce(0) { $0 + ($1.machine.Btu5max * $1.quantity) }
    }
}


struct ContentView: View {
    @StateObject private var viewModel = MachineViewModel()
    
    var body: some View {
        TabView {
            FirstTabView(viewModel: viewModel)
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("List")
                }
            
            SecondTabView(viewModel: viewModel)
                .tabItem {
                    Image(systemName: "dollarsign.circle")
                    Text("Quote")
                }
            
            ThirdTabView(viewModel: viewModel)
                .tabItem {
                    Image(systemName: "thermometer")
                    Text("Load Calculation")
                }
        }
    }
}

struct FirstTabView: View {
    @ObservedObject var viewModel: MachineViewModel
    @State private var quantities: [Machine: Int] = [:]
    
    var body: some View {
        NavigationView {
            VStack {
                Picker("Select SEER", selection: Binding(
                    get: { viewModel.selectedSeer },
                    set: { viewModel.selectedSeer = $0 }
                )) {
                    Text(">=20seer").tag("25seer")
                    Text("<=19seer").tag("19seer")
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                List(viewModel.selectedSeer == "25seer" ? viewModel.machines25Seer : viewModel.machines19Seer) { machine in
                    HStack {
                        Text(machine.name)
                        Spacer()
                        QuantitySelector(quantity: Binding(
                            get: { quantities[machine, default: 0] },
                            set: { quantities[machine] = $0 }
                        ))
                    }
                    .padding(.vertical, 5)
                    .frame(maxWidth: .infinity)
                    .listRowBackground(machine.backgroundColor)
                }
                .listStyle(PlainListStyle())
                
                Button(action: {
                    for (machine, quantity) in quantities {
                        if quantity > 0 && !machine.isIDU {
                            viewModel.addMachine(machine, quantity: quantity)
                            quantities[machine] = 0
                        }
                    }
                    for (machine, quantity) in quantities {
                        if quantity > 0 {
                            viewModel.addMachine(machine, quantity: quantity)
                            quantities[machine] = 0
                        }
                    }
                }) {
                    Text("Add")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding()
                
                List {
                    ForEach(viewModel.selectedMachines) { selectedMachine in
                        if selectedMachine.machine.isODU {
                            HStack {
                                Text(selectedMachine.machine.name)
                                    .fontWeight(.bold)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text("x \(selectedMachine.quantity)")
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                    .font(.headline)
                            }
                        } else {
                            HStack {
                                Text(selectedMachine.machine.name)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text("x \(selectedMachine.quantity)")
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                    .font(.headline)
                            }
                        }
                    }
                    .onDelete(perform: deleteSelectedMachines)
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("Product List")
            .navigationBarItems(trailing: Button(action: {
                viewModel.resetSelection()
                quantities.removeAll()
            }) {
                Image(systemName: "goforward")
            })
        }
    }
    
    func deleteSelectedMachines(at offsets: IndexSet) {
        viewModel.selectedMachines.remove(atOffsets: offsets)
    }
}

struct QuantitySelector: View {
    @Binding var quantity: Int

    var body: some View {
        HStack {
            Button(action: {
                if quantity > 0 { quantity -= 1 }
            }) {
                Image(systemName: "minus")
                    .frame(width: 24, height: 24)
                    .background(Circle().fill(Color.red))
                    .foregroundColor(.white)
            }
            .buttonStyle(PlainButtonStyle())

            Text("\(quantity)")
                .frame(minWidth: 20)
                .font(.headline)
                .padding(.horizontal)

            Button(action: {
                quantity += 1
            }) {
                Image(systemName: "plus")
                    .frame(width: 24, height: 24)
                    .background(Circle().fill(Color.green))
                    .foregroundColor(.white)
            }
            .buttonStyle(PlainButtonStyle())
        }
    }
}


struct SecondTabView: View {
    @ObservedObject var viewModel: MachineViewModel
    @State private var isSettingsPresented = false
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(viewModel.selectedMachines) { selectedMachine in
                        if selectedMachine.machine.isODU {
                            HStack {
                                Text(selectedMachine.machine.name)
                                    .fontWeight(.bold)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text("x \(selectedMachine.quantity)")
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                    .font(.headline)
                            }
                        } else {
                            HStack {
                                Text(selectedMachine.machine.name)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text("x \(selectedMachine.quantity)")
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                    .font(.headline)
                            }
                        }
                    }
                    .onDelete(perform: deleteSelectedMachines)
                }
                .listStyle(PlainListStyle())
                

                HStack {
                    Spacer()
                    Text("Equipment Cost:")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    Spacer()
                    Text("$\(viewModel.equipmentCost, specifier: "%.2f")")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding()
                
                HStack {
                    Spacer()
                    Text("Labor Cost:")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    Spacer()
                    Text("$\(viewModel.laborCost, specifier: "%.2f")")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding()
                
                HStack {
                    Spacer()
                    Text("Subtotal:")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    Spacer()
                    Text("$\(viewModel.totalCost, specifier: "%.2f")")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding()
                
                if viewModel.showRebateAndFinalBalance {
                    HStack {
                        Spacer()
                        Text("Rebate:")
                            .frame(maxWidth: .infinity, alignment: .trailing)
                        Spacer()
                        Text("$\(viewModel.rebateDeduct, specifier: "%.2f")")
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding()

                    HStack {
                        Spacer()
                        Text("Final Balance:")
                            .frame(maxWidth: .infinity, alignment: .trailing)
                        Spacer()
                        Text("$\(viewModel.finalBalance, specifier: "%.2f")")
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding()
                }
                
//                HStack {
//                    Spacer()
//                    Text("Rebate:")
//                        .frame(maxWidth: .infinity, alignment: .trailing)
//                    Spacer()
//                    Text("$\(viewModel.rebateDeduct, specifier: "%.2f")")
//                        .frame(maxWidth: .infinity, alignment: .trailing)
//                }
//                .padding()
//                
//                HStack {
//                    Spacer()
//                    Text("Final Balance:")
//                        .frame(maxWidth: .infinity, alignment: .trailing)
//                    Spacer()
//                    Text("$\(viewModel.finalBalance, specifier: "%.2f")")
//                        .frame(maxWidth: .infinity, alignment: .trailing)
//                }
//                .padding()
            }
            .navigationTitle("Estimate")
            .navigationBarItems(trailing: Button(action: {
                isSettingsPresented.toggle()
            }) {
                Image(systemName: "gear")
            })
            .sheet(isPresented: $isSettingsPresented) {
                SettingsView(viewModel: viewModel)
            }
        }
    }
    
    func deleteSelectedMachines(at offsets: IndexSet) {
        viewModel.selectedMachines.remove(atOffsets: offsets)
    }
}

struct ThirdTabView: View {
    @ObservedObject var viewModel: MachineViewModel
    @State private var isSettingsPresented = false
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(viewModel.selectedMachines) { selectedMachine in
                        if selectedMachine.machine.isODU {
                            HStack {
                                Text(selectedMachine.machine.name)
                                    .fontWeight(.bold)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text("x \(selectedMachine.quantity)")
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                    .font(.headline)
                            }
                        } else {
                            HStack {
                                Text(selectedMachine.machine.name)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text("x \(selectedMachine.quantity)")
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                    .font(.headline)
                            }
                        }
                    }
                    .onDelete(perform: deleteSelectedMachines)
                }
                .listStyle(PlainListStyle())
                
                HStack {
                    Spacer()
                    Text("(Residential)BHL/SF:")
                        .frame(maxWidth: .infinity, alignment: .trailing)
//                        .foregroundColor(.black)
                    Spacer()
                    Text("\(Double(viewModel.Btu17max)/viewModel.SF, specifier: "%.2f")")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding()
                .frame(maxHeight: 40)
                .background(Color(UIColor.secondarySystemBackground))
//                .listRowBackground(Color(.secondarySystemBackground))
                
                HStack {
                    Spacer()
                    Text("(Commercial)BH/SF:")
                        .frame(maxWidth: .infinity, alignment: .trailing)
//                        .foregroundColor(.black)
                    Spacer()
                    Text("\(Double(viewModel.Btu17rated)/viewModel.SF, specifier: "%.2f")")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding()
                .frame(maxHeight: 40)
//                .listRowBackground(Color(UIColor.secondarySystemBackground))
                .background(Color(UIColor.secondarySystemBackground))
//                .background(Color(red: 0.6, green: 1.0, blue: 0.6))
                
                HStack {
                    Spacer()
                    Text("Btu @95 max:")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    Spacer()
                    Text("\(viewModel.Btu95max)")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding()
                .frame(maxHeight: 40)
                
                HStack {
                    Spacer()
                    Text("Btu @95 rated:")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    Spacer()
                    Text("\(viewModel.Btu95rated)")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding()
                .frame(maxHeight: 40)
                
                HStack {
                    Spacer()
                    Text("Btu @95 min:")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    Spacer()
                    Text("\(viewModel.Btu95min)")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding()
                .frame(maxHeight: 40)
                
                HStack {
                    Spacer()
                    Text("Btu @5 max:")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    Spacer()
                    Text("\(viewModel.Btu5max)")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding()
                .frame(maxHeight: 40)
                
                HStack {
                    Spacer()
                    Text("Btu @17 max:")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    Spacer()
                    Text("\(viewModel.Btu17max)")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding()
                .frame(maxHeight: 40)
                .background(Color(UIColor.secondarySystemBackground))
                
                HStack {
                    Spacer()
                    Text("Btu @17 rated:")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    Spacer()
                    Text("\(viewModel.Btu17rated)")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding()
                .frame(maxHeight: 40)
            }
            .navigationTitle("Load Calculation")
            .navigationBarItems(trailing: Button(action: {
                isSettingsPresented.toggle()
            }) {
                Image(systemName: "gear")
            })
            .sheet(isPresented: $isSettingsPresented) {
                SettingsInLoadCalculationView(viewModel: viewModel)
            }
        }
    }
    
    func deleteSelectedMachines(at offsets: IndexSet) {
        viewModel.selectedMachines.remove(atOffsets: offsets)
    }
}


struct SettingsView: View {
    @ObservedObject var viewModel: MachineViewModel
    @Environment(\.presentationMode) var presentationMode

    @State private var tempInstallationFee: Double
    @State private var tempEquipmentMarkupPercentage: Double
    @State private var tempMarkupPercentage: Double
    @State private var tempPlumberFee: Double
    @State private var tempSubpanelFee: Double
    @State private var tempRebateAmount: Double

    let plumberFeeValues = [0.0, 800.0, 1600.0, 2400.0, 3200.0]
    let subpanelFeeValues = [0.0, 300.0, 600.0, 900.0, 1200.0, 1500.0, 1800.0]
    let rebateValues = [0.0, 4000.0, 5000.0, 7500.0, 8000.0, 10000.0, 12000.0, 12500.0, 15000.0, 16000.0]

    init(viewModel: MachineViewModel) {
        self.viewModel = viewModel
        _tempInstallationFee = State(initialValue: viewModel.installationFee)
        _tempEquipmentMarkupPercentage = State(initialValue: viewModel.equipmentMarkupPercentage)
        _tempMarkupPercentage = State(initialValue: viewModel.markupPercentage)
        _tempPlumberFee = State(initialValue: viewModel.plumberFee)
        _tempSubpanelFee = State(initialValue: viewModel.subpanelFee)
        _tempRebateAmount = State(initialValue: viewModel.rebate)
    }

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Installation Settings")) {
                    HStack {
                        Text("Installation Fee per Unit:")
                        Spacer()
                        TextField("Fee", value: $tempInstallationFee, format: .number)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.decimalPad)
                            .frame(width: 100)
                    }

                    HStack {
                        Text("Markup Percentage:")
                        Spacer()
                        TextField("Equipment Markup", value: $tempEquipmentMarkupPercentage, format: .number)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.decimalPad)
                            .frame(width: 100)
                    }

                    HStack {
                        Text("Total Markup Percentage:")
                        Spacer()
                        TextField("Total Markup", value: $tempMarkupPercentage, format: .number)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.decimalPad)
                            .frame(width: 100)
                    }
                }

                Section(header: HStack {
                    Text("Additional Fees")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Button("Default") {
                        tempPlumberFee = 800.0
                        tempSubpanelFee = 0.0
                        tempRebateAmount = 8000.0
                    }
                    .padding(.trailing, 8)

                    Button("Clear") {
                        tempPlumberFee = 0
                        tempSubpanelFee = 0
                        tempRebateAmount = 0
                    }
                    .foregroundColor(.red)
                    
                }) {
                    HStack {
                        Text("Plumber Fee:")
                        Spacer()
                        AdjustableTextField(value: $tempPlumberFee, valueList: plumberFeeValues)
                    }
                    HStack {
                        Text("Subpanel Fee:")
                        Spacer()
                        AdjustableTextField(value: $tempSubpanelFee, valueList: subpanelFeeValues)
                    }
                    HStack {
                        Text("Rebate Amount:")
                        Spacer()
                        AdjustableTextField(value: $tempRebateAmount, valueList: rebateValues)
                    }
                    Toggle("Show Rebate & Final Balance", isOn: $viewModel.showRebateAndFinalBalance)
                        .toggleStyle(SwitchToggleStyle(tint: .blue))
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }

                Section {
                    Button(action: {
                        // Save all values to the view model and UserDefaults
                        viewModel.installationFee = tempInstallationFee
                        viewModel.equipmentMarkupPercentage = tempEquipmentMarkupPercentage
                        viewModel.markupPercentage = tempMarkupPercentage

                        viewModel.plumberFee = tempPlumberFee
                        viewModel.subpanelFee = tempSubpanelFee
                        viewModel.rebate = tempRebateAmount

                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Text("Confirm")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}

struct AdjustableTextField: View {
    @Binding var value: Double
    var valueList: [Double]

    var body: some View {
        HStack {
            Button(action: {
                adjustValue(by: -1)
            }) {
                Image(systemName: "minus")
                    .frame(width: 24, height: 24)
                    .background(Circle().fill(Color.red))
                    .foregroundColor(.white)
            }
            .buttonStyle(PlainButtonStyle())

            TextField("Amount", value: $value, format: .number)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
                .multilineTextAlignment(.center)
                .frame(width: 100)

            Button(action: {
                adjustValue(by: 1)
            }) {
                Image(systemName: "plus")
                    .frame(width: 24, height: 24)
                    .background(Circle().fill(Color.green))
                    .foregroundColor(.white)
            }
            .buttonStyle(PlainButtonStyle())
        }
    }

    private func adjustValue(by step: Int) {
        if value < 0 {
            // Start from the first value in the list when value is 0
            value = valueList.first ?? 0
        } else if let index = valueList.firstIndex(where: { $0 >= value }) {
            let newIndex = max(0, min(valueList.count - 1, index + step))
            value = valueList[newIndex]
        } else {
            value = valueList.first ?? 0
        }
    }
}

struct SettingsInLoadCalculationView: View {
    @ObservedObject var viewModel: MachineViewModel
    @Environment(\.presentationMode) var presentationMode

    @State private var tempSF: Double

    init(viewModel: MachineViewModel) {
        self.viewModel = viewModel
        _tempSF = State(initialValue: viewModel.SF)
    }

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Load Calculation Settings")) {
                    HStack {
                        Text("Square Footage:")
                        Spacer()
                        TextField("square footage", value: $tempSF, format: .number)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.decimalPad)
                            .frame(width: 100)
                    }
                }
                
                Section {
                    Button(action: {
                        viewModel.SF = tempSF
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Text("Confirm")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
                
                Section (header: Text("Residential Recommended BHL/SF")){
                    HStack {
                        Text("Pre-1945 uninsulated brick")
                        Spacer()
                        Text("30 - 45")
                    }
                    HStack {
                        Text("Pre-1945 insulated")
                        Spacer()
                        Text("25 - 45")
                    }
                    HStack {
                        Text("Pre-1979")
                        Spacer()
                        Text("20 - 35")
                    }
                    HStack {
                        Text("1979-2006")
                        Spacer()
                        Text("15 - 30")
                    }
                    HStack {
                        Text("2007 or later")
                        Spacer()
                        Text("15 - 25")
                    }
                }
                
                Section (header: Text("commercial Recommended BH/SF")){
                    HStack {
                        Text("Restaurant/Fast Food")
                        Spacer()
                        Text("20 - 30")
                    }
                    HStack {
                        Text("Big Box Retail")
                        Spacer()
                        Text("15 - 35")
                    }
                    HStack {
                        Text("Small Retail")
                        Spacer()
                        Text("20 - 40")
                    }
                    HStack {
                        Text("Schools")
                        Spacer()
                        Text("18 - 35")
                    }
                    HStack {
                        Text("Office")
                        Spacer()
                        Text("15 - 30")
                    }
                    HStack {
                        Text("Religious Institutions")
                        Spacer()
                        Text("20 - 35")
                    }
                    HStack {
                        Text("Grocery Stores")
                        Spacer()
                        Text("20 - 35")
                    }
                    HStack {
                        Text("Auto Repair")
                        Spacer()
                        Text("25 - 45")
                    }
                    HStack {
                        Text("Hospital and Healthcare")
                        Spacer()
                        Text("20 - 40")
                    }
                    HStack {
                        Text("Assembly")
                        Spacer()
                        Text("20 - 30")
                    }
                    HStack {
                        Text("Fitness Centers")
                        Spacer()
                        Text("20 - 35")
                    }
                    HStack {
                        Text("Warehouse")
                        Spacer()
                        Text("8 - 20")
                    }
                    HStack {
                        Text("Light Industrial")
                        Spacer()
                        Text("25 - 50")
                    }
                    HStack {
                        Text("Hotels")
                        Spacer()
                        Text("15 - 30")
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}
