package com.theannguyen.asynctask

import android.os.AsyncTask
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        button.setOnClickListener {
            Task().execute()
        }

    }
    inner class Task: AsyncTask<Void, String, String>() {
        override fun doInBackground(vararg params: Void?): String {

            for (sv in 1..3)
                publishProgress("publishProgress $sv \n")

            return "doInBackground"
        }

        override fun onPreExecute() {
            super.onPreExecute()
            textView.text = "onPreExecute \n"
        }

        override fun onPostExecute(result: String?) {
            super.onPostExecute(result)
            textView.append(result)
        }

        override fun onProgressUpdate(vararg values: String?) {
            super.onProgressUpdate(*values)
            textView.append(values[0])
        }

    }

}
