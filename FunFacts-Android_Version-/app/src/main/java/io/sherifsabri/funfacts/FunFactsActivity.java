package io.sherifsabri.funfacts;

import android.graphics.Color;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

import java.util.Random;

public class FunFactsActivity extends AppCompatActivity {

    private RelativeLayout relativeLayout;
    private ColorWheel colorWheel = new ColorWheel();
    private FactBook fact = new FactBook();
    //Declare view variables
    private TextView factTextView;
    private Button showFactButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_fun_facts);

        //assign the views from the layout file to the corresponding variables
        factTextView = (TextView) findViewById(R.id.FactTextView);
        showFactButton = (Button) findViewById(R.id.ShowFactButton);
        relativeLayout = (RelativeLayout) findViewById(R.id.relativeLayout);

        View.OnClickListener listener = new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                factTextView.setText(fact.getFact());

                int color = colorWheel.getColor();
                relativeLayout.setBackgroundColor(color);
                showFactButton.setTextColor(color);
            }
        };
        showFactButton.setOnClickListener(listener);
        Toast.makeText(this, "Activty was created", Toast.LENGTH_SHORT).show();
    }
}
