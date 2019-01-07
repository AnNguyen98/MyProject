package com.theannguyen.readcontenturl

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.os.AsyncTask
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.widget.ImageView
import android.widget.Toast
import com.squareup.picasso.Picasso
import kotlinx.android.synthetic.main.activity_main.*
import java.io.BufferedReader
import java.io.InputStream
import java.io.InputStreamReader
import java.lang.Exception
import java.lang.StringBuilder
import java.net.HttpURLConnection
import java.net.URI
import java.net.URL
import java.net.URLConnection

class MainActivity : AppCompatActivity() {

    var urlString:String = "https://upload.wikimedia.org/wikipedia/en/8/84/IOS_12_Homescreen_iPhone_X.png"
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        //ReadContent().execute("https://khoapham.vn/")

        //DownloadImageTask().execute(urlString)
        Picasso.get()
            .load(urlString)
            .error(R.color.error_color_material_dark)
            .into(imageView)

    }

    inner class DownloadImageTask:AsyncTask<String, Void, Bitmap>(){

        override fun doInBackground(vararg params: String?): Bitmap {
            val urlStr:String = params[0].toString()
            var bitmap:Bitmap? = null

            try {
                val url:URL = URL(urlStr)
                val inputStream:InputStream = url.openStream()
                bitmap = BitmapFactory.decodeStream(inputStream)
                inputStream.close()
            }catch (e:Exception){
                Log.e("EEE",e.toString())
            }
            return bitmap as Bitmap
        }

        override fun onPostExecute(result: Bitmap?) {
            super.onPostExecute(result)
            imageView.setImageBitmap(result)

        }


    }

    inner class ReadContent:AsyncTask<String,Void,String>(){
        override fun doInBackground(vararg params: String?): String {
            var content:StringBuilder = StringBuilder()
            val url: URL = URL(params[0])
            val urlConnection:HttpURLConnection = url.openConnection() as HttpURLConnection
            val inputStream:InputStream = urlConnection.inputStream
            val inputStreamReader = InputStreamReader(inputStream)
            val bufferedReader = BufferedReader(inputStreamReader)

            var line:String = ""

            try {
                do {
                    line = bufferedReader.readLine()
                    if(line != null)
                        content.append(line)
                }while (line != null)
                bufferedReader.close()
            }catch (e:Exception){
                Log.e("AAA",e.toString())
            }
            return content.toString()
        }

        override fun onPostExecute(result: String?) {
            super.onPostExecute(result)
            Toast.makeText(this@MainActivity,result,Toast.LENGTH_SHORT).show()
        }
    }

}