//
//  bt4.swift
//  b10Logic
//
//  Created by Nguyễn Anh Tú on 14/04/2022.
//

import Foundation

// Bài 4: Nhập 1 số nguyên. Kiểm tra có bao nhiêu số nguyên tố không lớn hơn số vừa nhập đó. (Số nguyên tố là số chỉ chia hết cho 1 và chính nó)

func soNguyenTo() {
    var a: Int = 0
    print("Nhập vào số nguyên: ", terminator: "")
    let soNguyen = Int(readLine() ?? "") ?? 0
    
    if soNguyen <= 2 {
        print("Không có số nguyên tố nào nhỏ hơn 2")
    } else {
        for i in 2..<soNguyen {
            for j in 2..<i {
                a = 0
                if i%j == 0 {
                    print("Số \(i) không phải là số nguyên tố")
                    break
                } else {
                    a += (i%j)
//                    print(a)
//                    print("Số \(i) là số nguyên tố")
                }
            }
            if a != 0 {
                print("Số nguyên tố là \(i)")
            }
        }
    }
}
