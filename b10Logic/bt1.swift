//
//  bt1.swift
//  b10Logic
//
//  Created by Nguyễn Anh Tú on 14/04/2022.
//

import Foundation

// Bài 1: Nhập số x từ bàn phím in ra dãy số fibonaxi không lớn hơn số x. (Fibonaxi: Số tiếp theo bằng tổng 2 số đứng trước)
/**
 VD: [0, 1, 1, 2, 3, 5, 8, ...]
 Input: x
 Output: [Int]
 */
func fibonaxi() {
    // Khởi tạo 2 phần tử đầu tiên
    var arr: [Int] = [0, 1]
    print("Nhập vào số x: ", terminator: "")
    let x = Int(readLine() ?? "") ?? 0
    
    // Biến i để kết quả tính số tiếp theo trong mảng
    var i = 0
    // Create index
    var j = 2
    
    while i < x {
        // Tính sôs tiếp theo trong mảng rồi gán vào i
        i = arr[j-2] + arr[j-1]
        print(i, j)
        // Kiếm tra số đó đã lớn hơn x chưa
        if i > x {
            // Nếu lớn hơn thì dừng vòng lặp
            break
        }
        // Nếu chưa lớn hơn thì thêm số đó vào mảng
        arr.append(i)
        // Tăng index j lên 1 để tiếp tục vòng lặp tính số tiếp theo
        j += 1
    }
    print("Mảng số Fibonaxi: ")
    for i in arr {
        print(i)
    }
}
