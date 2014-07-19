package com.android.providers.contacts;

public class EventLogTags {
	private EventLogTags() { }  // don't instantiate
	
	  public static final int CONTACTS_UPGRADE_RECEIVER = 4100;
	  public static void writeContactsUpgradeReceiver(long time) {
		  android.util.EventLog.writeEvent(CONTACTS_UPGRADE_RECEIVER, time);
	  }
	
}
