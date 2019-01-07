package com.theannguyen.listview

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.BaseAdapter
import android.widget.ImageView
import android.widget.TextView

class CustomAdapter (val context:Context, val layout:Int, val arr:ArrayList<MonAn>):BaseAdapter(){

    class ViewHolder(row:View){
        var textDicription: TextView
        var textMota:TextView
        var image:ImageView
        init {
            this.textDicription = row.findViewById(R.id.txtDicription) as TextView
            this.textMota = row.findViewById(R.id.txtChitiet) as TextView
            this.image = row.findViewById(R.id.img_listView) as ImageView
        }
    }

    override fun getView(position: Int, convertView: View?, parent: ViewGroup?): View {

        var view:View?
        var viewHolder:ViewHolder

        if(convertView == null){
            var layoutInflater:LayoutInflater = LayoutInflater.from(context)
            view = layoutInflater.inflate(R.layout.list_view, null)
            viewHolder = ViewHolder(view)
            view.tag = viewHolder
        }else{
            view = convertView
            viewHolder = convertView.tag as ViewHolder
        }
        var moan:MonAn = arr.get(position)
        viewHolder.image.setImageResource(moan.image)
        viewHolder.textMota.text = moan.mota
        viewHolder.textDicription.text = moan.name
        return view as View
    }
    override fun getItem(position: Int): Any {
        return arr.get(position)
    }

    override fun getItemId(position: Int): Long {
        return position.toLong()
    }

    override fun getCount(): Int {
        return arr.size
    }

}