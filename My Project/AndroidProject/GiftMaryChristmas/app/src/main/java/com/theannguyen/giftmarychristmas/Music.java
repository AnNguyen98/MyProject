package com.theannguyen.giftmarychristmas;

import android.app.Application;
import android.media.MediaPlayer;
import android.support.constraint.ConstraintLayout;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.TextView;

import java.net.URL;
import java.util.ArrayList;

public class Music extends AppCompatActivity {

    ConstraintLayout constraintLayout;
    ListView         listView;
    MediaPlayer mediaPlayer;
    TextView textView;
    ArrayList<String> tenBaiHat,loiNhan;
    ArrayList<Integer> maBaiHat;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_music);


        // Anh xa

        listView = (ListView) findViewById(R.id.mylistview);
        constraintLayout = (ConstraintLayout) findViewById(R.id.constrainLayout);
        textView  = (TextView) findViewById(R.id.textLoiNhan);

        //Hinh nen

        constraintLayout.setBackgroundResource(R.drawable.miule);

        //play nhac nen

        mediaPlayer = MediaPlayer.create(getApplicationContext(),R.raw.anhdaquenvoicodon);
        mediaPlayer.start();
        //Loi nhan

        textView.setText("Chuc em giang sinh vui ve");
        textView.setTextAlignment(View.TEXT_ALIGNMENT_CENTER);

        //Tao mang

        tenBaiHat = new ArrayList<>();
        loiNhan = new ArrayList<>();
        maBaiHat = new ArrayList<>();

        tenBaiHat.add("Anh đang nơi đâu - Miu Le.");
        tenBaiHat.add("Anh đã quen với cô đơn Soobin Hoàng Sơn.");
        tenBaiHat.add("Ánh nắng của anh Phúc Đức.");

        loiNhan.add("Luôn luôn vui vẻ nhé!");
        loiNhan.add("Cảm ơn em vì tất cả.");
        loiNhan.add("Lần đầu tiên gặp nhau.");

        maBaiHat.add(R.raw.anhdangnoidau);
        maBaiHat.add(R.raw.anhdaquenvoicodon);
        maBaiHat.add(R.raw.anhnangcuaanh);


        //Listview

        ArrayAdapter adapter = new ArrayAdapter(Music.this,android.R.layout.simple_list_item_1,tenBaiHat);
        listView.setAdapter(adapter);

        //Listview OnItemClick

        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                mediaPlayer.stop();
                mediaPlayer = MediaPlayer.create(getApplicationContext(),maBaiHat.get(position));
                textView.setText(loiNhan.get(position));
                textView.animate().scaleX(3).scaleY(3).setDuration(2000);
                mediaPlayer.start();
                textView.animate().scaleX(1).scaleY(1).setDuration(2000);
            }
        });

        //Zoom loi nhan



    }
}
