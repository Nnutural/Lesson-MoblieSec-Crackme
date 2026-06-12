package com.lohan.crackme0a;

public class Main extends android.app.Activity {
    public void onCreate(android.os.Bundle b) {
        super.onCreate(b);
        android.widget.TextView tv = new android.widget.TextView(this);
        tv.setText("Injected classes.dex loaded");
        tv.setTextSize(22);
        tv.setPadding(24, 24, 24, 24);
        setContentView(tv);
    }
}
