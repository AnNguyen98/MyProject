package com.theannguyen.helloworld;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void onClick(View viewClicked){
//        int result = 5 * 7;
//        Log.i("Result = " , "" + result);
//        TextView text = findViewById(R.id.txtResult);
//        Log.i("txtText" , text.getText().toString());

//        EditText edtName = findViewById(R.id.edtName);
//        EditText edtNumber = findViewById(R.id.edtNumber);
//
//        Log.i("Name",edtName.getText().toString() + " - " + edtNumber.getText().toString());
//
//        //Toast.makeText(MainActivity.this,"I'm an Android Developer",Toast.LENGTH_SHORT).show();
//        Toast.makeText(MainActivity.this,
//                edtName.getText().toString()+ ".\n" + edtNumber.getText().toString() + ".",Toast.LENGTH_SHORT).show();

        ImageView imgView = findViewById(R.id.imageView);
        imgView.setImageResource(R.drawable.focusbackground);

    }
}
