package com.theannguyen.intent

import android.content.Intent
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val hocSinh:HocSinh = HocSinh("Nguyen The An", 20)
        btnClick.setOnClickListener {
            val intent:Intent = Intent(this,Main2Activity::class.java)
            intent.putExtra("data",100)
            intent.putExtra("hocsinh",hocSinh)
            startActivity(intent)
        }

    }
}
