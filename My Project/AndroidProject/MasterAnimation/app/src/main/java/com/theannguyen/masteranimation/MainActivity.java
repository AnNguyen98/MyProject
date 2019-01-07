package com.theannguyen.masteranimation;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    private TextView txtAnimation;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        txtAnimation = (TextView) findViewById(R.id.txtAnimation);

        txtAnimation.setTextAlignment(View.TEXT_ALIGNMENT_CENTER);
        txtAnimation.setTextSize(20);
        txtAnimation.setWidth(400);
        txtAnimation.setHeight(50);


        txtAnimation.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                txtAnimation.animate().rotationBy(100).translationYBy(100);
            }
        });

    }
}
