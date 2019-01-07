package com.theannguyen.liontigergame;

import android.content.Intent;
import android.media.Image;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.Toast;

import java.util.Random;

public class MainActivity extends AppCompatActivity {

    enum Player{
        ONE, TWO
    }
    Player currentPlayer = Player.ONE;
    Player []players = new Player[9];
    int [][] winnerRowsColumn = {{1,2,3},{4,5,6},{7,8,9}};
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

    }

    public void imageViewsTapped(View imageView){
        ImageView imgView = (ImageView) imageView;
        int tiTag = Integer.parseInt(imgView.getTag().toString());
        players[tiTag -1] =  currentPlayer;
        imgView.setTranslationX(-2000);
        if(currentPlayer == Player.ONE){
            imgView.setImageResource(R.drawable.lion);
            currentPlayer = Player.TWO;
        }else if(currentPlayer == Player.TWO){
            imgView.setImageResource(R.drawable.tiger);
            currentPlayer = Player.ONE;
        }
//        int []arr = {R.drawable.lion,R.drawable.tiger};
//        Random random = new Random();
//        int index = random.nextInt(2);
//        imgView.setImageResource(arr[index]);
        imgView.animate().translationXBy(2000).rotationBy(3600).alpha(1).setDuration(1000);
        Toast.makeText(MainActivity.this,imgView.getTag().toString(),Toast.LENGTH_LONG).show();
    }

}
