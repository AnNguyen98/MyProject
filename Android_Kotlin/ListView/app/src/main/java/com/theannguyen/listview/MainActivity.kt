package com.theannguyen.listview

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.widget.Adapter
import android.widget.ArrayAdapter
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
//        var arr:ArrayList<String> = ArrayList()
//        arr.add("IOS")
//        arr.add("Android")
//        arr.add("Flutter")
//        arr.add("Machine learning")
//        var adapter = ArrayAdapter(this, android.R.layout.simple_list_item_1,arr)
//        lvDemo.adapter = adapter

        var arrMonAn:ArrayList<MonAn> = ArrayList()
        arrMonAn.add(MonAn("Ga quay","Very good", R.drawable.cat))
        arrMonAn.add(MonAn("Ga quay","Very good", R.drawable.cat1))
        arrMonAn.add(MonAn("Ga quay","Very good", R.drawable.cat1))
        arrMonAn.add(MonAn("Ga quay","Very good", R.drawable.cat))
        arrMonAn.add(MonAn("Ga quay","Very good", R.drawable.background))
        arrMonAn.add(MonAn("Ga quay","Very good", R.drawable.cat))
        arrMonAn.add(MonAn("Ga quay","Very good", R.drawable.background))
        arrMonAn.add(MonAn("Ga quay","Very good", R.drawable.cat))
        arrMonAn.add(MonAn("Ga quay","Very good", R.drawable.cat))
        arrMonAn.add(MonAn("Ga quay","Very good", R.drawable.cat))
        var customAdapter:CustomAdapter = CustomAdapter(this,R.layout.list_view,arrMonAn)
        lvDemo.adapter = customAdapter

    }
}
