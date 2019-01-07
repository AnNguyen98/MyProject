package com.theannguyen.giftmarychristmas;

import android.app.Application;
import android.content.Intent;
import android.media.MediaPlayer;
import android.os.CountDownTimer;
import android.support.constraint.ConstraintLayout;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;

import com.mikhaellopez.circularimageview.CircularImageView;

import java.util.Timer;

public class MainActivity extends AppCompatActivity {

    ConstraintLayout constraintLayout;
    CircularImageView cImgMiuLe;
    MediaPlayer mediaPlayer;
    Boolean aBoolean;
    CountDownTimer countDownTimer;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        constraintLayout = (ConstraintLayout) findViewById(R.id.background);
        cImgMiuLe = (CircularImageView) findViewById(R.id.imgmiule);

//        countDownTimer = new CountDownTimer(100000,10000) {
//            @Override
//            public void onTick(long millisUntilFinished) {
//                cImgMiuLe.animate().rotationBy(360).setDuration(50000);
//                Log.i("TAG","AAA");
//            }
//
//            @Override
//            public void onFinish() {
//                countDownTimer.start();
//            }
//        }.start();

        Animation fade = AnimationUtils.loadAnimation(MainActivity.this ,R.anim.fade);
        fade.reset();
        cImgMiuLe.clearAnimation();
        cImgMiuLe.startAnimation(fade);

        cImgMiuLe.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mediaPlayer.stop();
                Intent intent = new Intent(MainActivity.this,Music.class);
                startActivity(intent);
            }
        });



        constraintLayout.setBackgroundResource(R.drawable.bg1);
        mediaPlayer = MediaPlayer.create(getApplicationContext(),R.raw.anhdangnoidau);
        mediaPlayer.start();
    }

}
