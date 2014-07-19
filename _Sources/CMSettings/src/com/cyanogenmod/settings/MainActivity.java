package com.cyanogenmod.settings;

import com.android.internal.telephony.Phone;
import com.android.internal.telephony.PhoneFactory;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class MainActivity extends Activity {

	Button mInterface;
	Button mLockscreen;
	Button mPerformance;
	Button mButtons;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		mInterface = (Button)findViewById(R.id.cmSysUI);
		mInterface.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				Intent intent = new Intent();
			    intent.setClass(getApplicationContext(), Settings.SystemSettingsActivity.class);
			    startActivity(intent);
			}
		});
		
		mLockscreen = (Button)findViewById(R.id.cmSysLS);
		mLockscreen.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				Intent intent = new Intent();
			    intent.setClass(getApplicationContext(), Settings.LockscreenSettingsActivity.class);
			    startActivity(intent);
			}
		});
		
		mPerformance = (Button)findViewById(R.id.cmSysPS);
		mPerformance.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				Intent intent = new Intent();
			    intent.setClass(getApplicationContext(), Settings.PerformanceSettingsActivity.class);
			    startActivity(intent);
			}
		});
		
		mButtons = (Button)findViewById(R.id.cmSysBTN);
		mButtons.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				Intent intent = new Intent();
			    intent.setClass(getApplicationContext(), Settings.ButtonSettingsActivity.class);
			    startActivity(intent);
			}
		});
	}
	
	public void setNewListener(int btnId, final Class fragment) {
		Button mButton = (Button)findViewById(btnId);
		mButton.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				Intent intent = new Intent();
			    intent.setClass(getApplicationContext(), fragment);
			    startActivity(intent);
			}
		});
	}

}
