//
//  bt2.swift
//  b10Logic
//
//  Created by Nguyễn Anh Tú on 14/04/2022.
//

import Foundation

// Bài 2: Vẽ tam giác Pascal với chiều cao h nhập từ bàn phím
/**
 Gợi ý: Tạo ra 1 mảng 1 phần tử [1] và 1 mảng to chứa tất cả các mảng số nguyên
 */

func veTamGiacPascal() {
    // Tạo mảng 1 dòng
    var arr: [Int] = []
    // Tạo mảng chứa các dòng
    var arrTriangle: [[Int]] = []
    
    
    print("Nhập vào chiều cao h: ", terminator: "")
    let h = Int(readLine() ?? "") ?? 0
    
    for _ in 1...h {
//        for _ in 1...i {
//            print("1", terminator: " ")
            arr.append(1)
            arrTriangle.append(arr)
//        }
//        print("")
    }
    for i in arrTriangle {
        print(i)
    }
    // Tính các phần tử cần thiết
    // Cho vòng lặp chạy từng dòng. Chạy bằng đầu từ dòng thứ 3 (index = 2) vì dòng 2 đầu không cần tính toán
    
    for i in 2..<h {
        // Duyệt từng phần từ trong 1 dòng, tính giá trị các phần tử từ vị trí 2->i-1 vì 2 phần tử ngoài cùng là 1
        for j in 1..<i {
            arrTriangle[i][j] = arrTriangle[i-1][j-1] + arrTriangle[i-1][j]
        }
    }
    // In ra tam giác
    for i in arrTriangle {
            print(i)
    }
}
