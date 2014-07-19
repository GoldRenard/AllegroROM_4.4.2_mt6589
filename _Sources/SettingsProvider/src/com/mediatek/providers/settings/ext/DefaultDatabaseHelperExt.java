package com.mediatek.providers.settings.ext;

import android.content.Context;
import android.util.Log;

public class DefaultDatabaseHelperExt
  implements IDatabaseHelperExt
{
  private static final String TAG = "DefaultDatabaseHelperExt";

  public String getResBoolean(Context mContext, String name, int id)
  {
    String value = mContext.getResources().getBoolean(id) ? "1" : "0";
    Log.d(TAG, "get name = " + name + " boolean value = " + value);
    return value;
  }

  public String getResFraction(Context mContext, String name, int id, int base)
  {
    String value = Float.toString(mContext.getResources().getFraction(id, base, base));
    Log.d(TAG, "get name = " + name + " fraction value = " + value);
    return value;
  }

  public String getResInteger(Context mContext, String name, int id)
  {
    String value = Integer.toString(mContext.getResources().getInteger(id));
    Log.d(TAG, "get name = " + name + " int value = " + value);
    return value;
  }

  public String getResStr(Context mContext, String name, int id)
  {
    String value = mContext.getResources().getString(id);
    Log.d(TAG, "get name = " + name + " string value = " + value);
    return value;
  }
}