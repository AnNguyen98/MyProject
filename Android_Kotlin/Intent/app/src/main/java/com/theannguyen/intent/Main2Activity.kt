package com.theannguyen.intent

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.widget.Toast
import kotlinx.android.synthetic.main.activity_main2.*

class Main2Activity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main2)
        val intent = intent
        //val intData = intent.getIntExtra("data",0)
        val hocSinh:HocSinh = intent.getSerializableExtra("hocsinh") as HocSinh
        Toast.makeText(this,"Data : ${hocSinh.name}", Toast.LENGTH_SHORT).show()
        btnBack.setOnClickListener {
            this.finish()
        }
    }
}
