package com.theannguyen.demokotlin

import android.content.Intent
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.Toast
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        txtText.setText(R.string.text_value)
        btnClick.setOnClickListener {
//            txtText.text = "Ahii"
//            Toast.makeText(this,"Hello",Toast.LENGTH_SHORT).show()
            val intent = Intent(this,BeHocToan::class.java)
            startActivity(intent)
        }
//        btnClick.setOnClickListener(object : View.OnClickListener{
//            override fun onClick(v: View?) {
//                TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
//            }
//
//        })

    }
}
