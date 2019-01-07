import java.time.Year
import java.util.*

fun main(){
    println("Helo world!")

    var person:Person = Person("ANN",20)
    person.setName("Nguye The An")
    println(person.getName())
    println(person.getAge())

    var phuongTien:PhuongTien = PhuongTien("Car",2000, "red")
    println(phuongTien.colors)
    println("Name : ${phuongTien.name} - Price : ${phuongTien.price} - Colors : ${phuongTien.colors}")

}

class Person{
    private var name:String
    private var age:Int
    private var birthday:Int

    constructor(name: String, age: Int) {
        this.name = name
        this.age = age
        this.birthday = 1998
    }
    init {
        this.name = "An"
        this.age = 20
    }
    fun setName(name:String){
        this.name = name
    }
    fun setAge(age:Int){
        this.age = age
    }
    fun getName():String{
        return this.name
    }
    fun getAge():Int{
        var calendar:Calendar = Calendar.getInstance()
        return (calendar.get(Calendar.YEAR) - this.birthday)
    }



}