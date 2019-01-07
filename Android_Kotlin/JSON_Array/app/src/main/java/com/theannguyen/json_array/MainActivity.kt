package com.theannguyen.json_array

import android.os.AsyncTask
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.widget.Toast
import org.json.JSONObject
import java.io.BufferedReader
import java.io.InputStreamReader
import java.lang.Exception
import java.lang.StringBuilder
import java.net.HttpURLConnection
import java.net.URL
import java.nio.Buffer

class MainActivity : AppCompatActivity() {

    val jsonUrl:String = "https://api.androidhive.info/contacts/"
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        JSONArray().execute(jsonUrl)

    }
    inner class JSONArray:AsyncTask<String, Void, String>(){
        var stringBuilder = StringBuilder()
        override fun doInBackground(vararg params: String?): String {
            val url = URL(params[0])
            val urlConnection:HttpURLConnection = url.openConnection() as HttpURLConnection
            val inputStreamReader = InputStreamReader(urlConnection.inputStream)
            val bufferReader = BufferedReader(inputStreamReader)
            var line:String? = ""
            try{
                do{
                    line = bufferReader.readLine()
                    if(line != null) stringBuilder.append(line)
                }while (line != null)
                bufferReader.close()
                //inputStreamReader.close()
            }catch (e:Exception){

            }
            return stringBuilder.toString()
        }

        override fun onPostExecute(result: String?) {
            super.onPostExecute(result)
            val jsonObject = JSONObject(result)
            val jsonArray = jsonObject.getJSONArray("contacts")
            var arrayList:ArrayList<String> = ArrayList()
            for(course in 0..jsonArray.length()){
                val jsonObjectCourse = jsonArray.getJSONObject(course)
                arrayList.add(jsonObjectCourse.getString("name"))
            }
            val value = arrayList.get(0)
            Toast.makeText(this@MainActivity, value, Toast.LENGTH_SHORT ).show()
        }

    }
}
