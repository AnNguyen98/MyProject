//: Playground - noun: a place where people can play

import UIKit

/*
 
 Lập trình hướng đối tượng(Object-Oriented Programing - OOP)  là một mô hình lập trình căn bản mà bất kỳ lập trình viên nào cũng cần phải thành thạo nếu như họ muốn nghiên cứu Swift một cách nghiêm túc, đó là vì OOP là cốt lõi của hầu hết các framework mà bạn sẽ làm việc cùng khi lập trình Swift.  Việc mô hình hóa các vấn đề thành các "objects - đối tượng" và gửi các messages tới các object khác là một phương pháp đã được chứng minh từ những năm 1950 cho việc đơn giản hóa các hệ thống phức tạp.
 Các đối tượng được sửu dụng để mô hình hóa - model mọi thứ từ tọa độ trên bản đồ, những cú chạm trên màn hình hay thậm chí là sự dao động của lãi suát ngân hàng. Chúng ta mô hình hóa mọi thứ trong cuộc sống của chúng ta thành những object trong OOP. Đó chính là điều cốt lõi đầu tiên của OOP. Và đó cũng là một trong những câu hỏi tuyển dụng căn bản nhất, nếu bạn không trả lời được câu hỏi này, thì điều đó tương đương với việc bạn có 90% khả năng bị fail trong buổi phỏng vấn đó.
 Trong bài viết này, chúng ta sẽ cùng dùng OOP để tạo ra các nhạc cụ. Đồng thời bạn cũng sẽ tìm hiểu về 7 tính chất cốt lõi của OOP, vâng, và đây cũng là một trong những câu hỏi phỏng vấn kinh điển, bao gồm:
 Tính đóng gói - Encapsulation
 Tính kế thừa - Inheritance
 Ghi đè và Nạp chồng - Overriding vs Overloading
 Kiểu và Thể hiện - Types và Instances
 Mối quan hệ phụ thuộc giữa 2 đối tượng - Composition
 Tính đa hình - Polymorphism
 Quyền truy vấn - Access Control
 Đầu tiên hãy mở Xcode lên và tạo một file Playground mới lấy tên là Instrument.
 Việc thiết kế thường bắt đàu với một concept chung và rồi từ đó chúng ta tư duy rẽ nhánh ra các tính năng khác đặc thù hơn. Ở đay chúng ta muốn tạo ra các nhạc cụ, vì vậy hãy bắt đầu danh sách các "kiểu" nhạc cụ, ví dụ như chúng ta có piano và guitar, sau đó guitar lại có các kiểu guitar khác như guitar điện tử, guitar acoutics, vân vân.. tôi khuyên các bạn hãy kiếm một tờ giấy nháp và phác thảo sơ đồ dạng Family Tree như ở hình dưới đây.
 Object Oriented Programming Relationship Diagram
 Mỗi quan hệ giữa các lớp con và lớp cha ở trên chúng là kiểu quan hệ "is - a relationship". Ví dụ như "Guitar is- a Instrument" hay "Guitar là một loại nhạc cụ". Như vậy là bạn đã có một cái nhìn trực quan hơn về các đối tượng mà mình sẽ làm việc sắp tới.
 Bản chất của một sự vật trong cuộc sống thì luôn có thuộc tính và hành vi. Ví dụ chó thì có thuộc tính là bốn chân và có hành vi là sủa, hay xe hơi thì có thuộc tính là mui trần hay mui đóng, hành vi là tiến hoặc lùi..vân vân
 */

var str = "Hello, playground"

//Thuộc tính. : Properties

class Instrument{
    let brand: String
    let(brand: String){
        self.brand = brand
    }
}







