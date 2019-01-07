package com.theannguyen.animationdemo;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    private TextView txtView,txtView2;
    private boolean  isHelloWorldShowing = true;
    int rot = 0;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        txtView = (TextView) findViewById(R.id.txtView);
        txtView2 = (TextView) findViewById(R.id.txtView2);
        txtView2.setAlpha(0);
        txtView2.setX(-600);
        final float xText = txtView.getX();
        txtView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
//                if(isHelloWorldShowing){
//                    txtView.animate().alpha(0).setDuration(2000);
//                    txtView2.animate().alpha(1).setDuration(2000);
//                    isHelloWorldShowing = false;
//                }else if(!isHelloWorldShowing){
//                    txtView.animate().alpha(1).setDuration(2000);
//                    txtView2.animate().alpha(0).setDuration(2000);
//                    isHelloWorldShowing = true;
//                }

                //txtView.animate().rotationXBy(360).setDuration(2000);
                //txtView.animate().rotationBy(360).setDuration(1000);
                //txtView.animate().translationXBy(200).setDuration(1000);
                txtView2.animate().translationX(xText).alpha(1).rotationY(360).setDuration(3000);
                txtView.setAlpha(0);
            }
        });

    }
}
