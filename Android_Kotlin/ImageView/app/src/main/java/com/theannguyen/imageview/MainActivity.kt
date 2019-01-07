package com.theannguyen.imageview

import android.graphics.Color
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        imgImage.setImageResource(R.drawable.cat)
        constraintLayout.setBackgroundResource(R.drawable.background )
        //constraintLayout.setBackgroundColor(Color.CYAN)
    }
}
