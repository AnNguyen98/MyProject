package com.theannguyen.json_android

import android.os.AsyncTask
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.widget.Toast
import org.json.JSONObject
import java.io.BufferedReader
import java.io.InputStream
import java.io.InputStreamReader
import java.lang.Exception
import java.lang.StringBuilder
import java.net.HttpURLConnection
import java.net.URL
import java.net.URLConnection

class MainActivity : AppCompatActivity() {

    val urlStr:String = "https://jsonplaceholder.typicode.com/todos/1"
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        JsonProcess().execute(urlStr)

    }
    inner class JsonProcess:AsyncTask<String, Void, String>(){
        override fun doInBackground(vararg params: String?): String {
            var stringBuilder = StringBuilder()
            val url = URL(params[0])
            val urlConnection:HttpURLConnection = url.openConnection() as HttpURLConnection
            val inputStreamReader = InputStreamReader(urlConnection.inputStream)
            val bufferedReader = BufferedReader(inputStreamReader)
            var line:String = ""
            try {
                do{
                    line = bufferedReader.readLine()
                    if(line != null)
                        stringBuilder.append(line)
                }while (line != null)
                inputStreamReader.close()
                bufferedReader.close()
            }catch (e:Exception){
                Log.e("E",e.toString())
            }
            return stringBuilder.toString()
        }

        override fun onPostExecute(result: String?) {
            super.onPostExecute(result)
            val jsonObject = JSONObject(result)
            val value1:String = jsonObject.get("title") as String
            Toast.makeText(this@MainActivity,value1, Toast.LENGTH_SHORT).show()
        }

    }
}
