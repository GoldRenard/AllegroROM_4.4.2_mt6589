package com.mediatek.providers.settings.ext;

import android.content.Context;

public abstract interface IDatabaseHelperExt
{
  public abstract String getResBoolean(Context mContext, String paramString, int paramInt);
  public abstract String getResFraction(Context mContext, String paramString, int paramInt1, int paramInt2);
  public abstract String getResInteger(Context mContext, String paramString, int paramInt);
  public abstract String getResStr(Context mContext, String paramString, int paramInt);
}