//
//  CartView.swift
//  SweaterShopDemo
//
//  Created by Ömer Faruk Kılıçaslan on 31.07.2022.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView {
            if cartManager.itemsOnCart.count > 0 {
                ForEach(cartManager.itemsOnCart) { item in
                    ProductRow(item: item)
                    
                }
                
                HStack {
                    Text("Your Cart total is")
                    Spacer()
                    
                    Text("$\(cartManager.total).00")
                        .bold()
                }
                .padding()
                
            }
            else{
                Text("Your Cart is Empty!")
                    .bold()
                    .foregroundColor(.red)
            }
            
            
        }
        .navigationTitle("My Card")
        .padding(.top)
        
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}