package com.theannguyen.demokotlin

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.widget.Toast
import kotlinx.android.synthetic.main.activity_be_hoc_toan.*
import java.lang.Exception

class BeHocToan : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_be_hoc_toan)

        btn_add.setOnClickListener {
            try {
                var number1:Int = edtNumber1.text.toString().toInt()
                var number2:Int = edtNumber2.text.toString().toInt()
                txtResult.text = (number1 + number2).toString()
            }catch (e:Exception){
                Toast.makeText(this,"Wrong number",Toast.LENGTH_SHORT).show()
            }
        }
        btn_sub.setOnClickListener {
            try {
                var number1:Int = edtNumber1.text.toString().toInt()
                var number2:Int = edtNumber2.text.toString().toInt()
                txtResult.text = (number1 - number2).toString()
            }catch (e:Exception){
                Toast.makeText(this,"Wrong number",Toast.LENGTH_SHORT).show()
            }
        }
        btn_mul.setOnClickListener {
            try {
                var number1:Int = edtNumber1.text.toString().toInt()
                var number2:Int = edtNumber2.text.toString().toInt()
                txtResult.text = (number1 * number2).toString()
            }catch (e:Exception){
                Toast.makeText(this,"Wrong number",Toast.LENGTH_SHORT).show()
            }
        }
        btn_div.setOnClickListener {
            try {
                var number1:Int = edtNumber1.text.toString().toInt()
                var number2:Int = edtNumber2.text.toString().toInt()
                txtResult.text = (number1 / number2).toString()
            }catch (e:Exception){
                Toast.makeText(this,"Wrong number",Toast.LENGTH_SHORT).show()
            }
        }

    }
}
