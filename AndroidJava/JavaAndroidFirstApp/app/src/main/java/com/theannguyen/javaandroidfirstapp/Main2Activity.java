package com.theannguyen.javaandroidfirstapp;

import android.app.Activity;
import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class Main2Activity extends AppCompatActivity {

    Button btnLogin;
    EditText edtName;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main2);
        btnLogin = (Button) findViewById(R.id.btnLogin);
        edtName = (EditText) findViewById(R.id.edtName);

        btnLogin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String name = edtName.getText().toString();
                if(!(name.isEmpty())){
                    if(name.equals("An")){
                        Intent intent = new Intent();
                        intent.putExtra("name",name);
                        setResult(Activity.RESULT_OK,intent);
                        finish();
                    }else {
                        Intent intent = new Intent();
                        setResult(Activity.RESULT_CANCELED,intent);
                        finish();
                    }
                }else {
                    Toast.makeText(Main2Activity.this,"Ban khong duoc de trong",Toast.LENGTH_SHORT).show();
                }
            }
        });

    }
}
