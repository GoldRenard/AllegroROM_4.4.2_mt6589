.class public Lcom/mediatek/calloption/CallOptionUtils;
.super Ljava/lang/Object;
.source "CallOptionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;
    }
.end annotation


# static fields
.field public static final MODEM_MASK_TDSCDMA:I = 0x8

.field public static final MODEM_MASK_WCDMA:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CallOptionUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static createSimPickerItemHolder(Landroid/content/Context;Z)Ljava/util/List;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "addInternet"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 409
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 410
    .local v6, "simInfos":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v3, "itemHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;>;"
    const/4 v8, 0x0

    .line 413
    .local v8, "temp":Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;
    const/4 v2, 0x0

    .line 414
    .local v2, "index":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 415
    .local v5, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    new-instance v8, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;

    .end local v8    # "temp":Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;
    invoke-direct {v8, v5, v11}, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;-><init>(Ljava/lang/Object;I)V

    .line 416
    .restart local v8    # "temp":Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;
    if-nez v2, :cond_0

    .line 417
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .line 420
    .local v4, "lastPos":I
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;

    iget-object v7, v9, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;->mData:Ljava/lang/Object;

    check-cast v7, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 421
    .local v7, "temInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v9, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    iget v10, v7, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-ge v9, v10, :cond_1

    .line 422
    invoke-virtual {v3, v4, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 424
    :cond_1
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 430
    .end local v4    # "lastPos":I
    .end local v5    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v7    # "temInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enable_internet_call_value"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 432
    .local v0, "enabled":I
    if-eqz p1, :cond_3

    invoke-static {p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-ne v0, v12, :cond_3

    .line 433
    new-instance v8, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;

    .end local v8    # "temp":Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;
    const-string v9, "Internet"

    invoke-direct {v8, v9, v12}, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;-><init>(Ljava/lang/Object;I)V

    .line 435
    .restart local v8    # "temp":Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_3
    return-object v3
.end method

.method public static get3GCapabilitySIM(Lcom/mediatek/calloption/Request;)I
    .locals 4
    .param p0, "request"    # Lcom/mediatek/calloption/Request;

    .prologue
    const/4 v2, 0x0

    .line 218
    :try_start_0
    const-string v3, "phoneEx"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v1

    .line 220
    .local v1, "telephonyEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    if-eqz v1, :cond_0

    .line 221
    invoke-interface {v1}, Lcom/mediatek/common/telephony/ITelephonyEx;->get3GCapabilitySIM()I

    move-result v2

    .line 228
    .end local v1    # "telephonyEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    :goto_0
    return v2

    .line 223
    .restart local v1    # "telephonyEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    :cond_0
    const-string v3, "[get3GCapabilitySIM] telephonyEx == null"

    invoke-static {v3}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    .end local v1    # "telephonyEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException happens in get3GCapabilitySIM()"

    invoke-static {v3}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static get3GCapabilitySIMBySlot(I)Z
    .locals 7
    .param p0, "slot"    # I

    .prologue
    const/4 v2, 0x0

    .line 379
    if-ltz p0, :cond_0

    sget-object v4, Lcom/mediatek/phone/GeminiConstants;->GSM_BASEBAND_CAPABILITY_GEMINI:[Ljava/lang/String;

    array-length v4, v4

    if-le p0, v4, :cond_2

    .line 380
    :cond_0
    const-string v4, "CallOptionUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get3GCapabilitySIMBySlot slot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_1
    :goto_0
    return v2

    .line 384
    :cond_2
    sget-object v4, Lcom/mediatek/phone/GeminiConstants;->GSM_BASEBAND_CAPABILITY_GEMINI:[Ljava/lang/String;

    aget-object v4, v4, p0

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "capability":Ljava/lang/String;
    const-string v4, "CallOptionUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get3GCapabilitySIMBySlot slot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", capability "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 391
    const/4 v1, 0x0

    .line 392
    .local v1, "mask":I
    const/4 v2, 0x0

    .line 394
    .local v2, "modemIs3G":Z
    const/16 v4, 0x10

    :try_start_0
    invoke-static {v0, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 395
    and-int/lit8 v4, v1, 0x8

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    and-int/lit8 v4, v1, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 397
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 399
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 401
    :catch_0
    move-exception v3

    .line 402
    .local v3, "ne":Ljava/lang/NumberFormatException;
    const-string v4, "parse value of basband error"

    invoke-static {v4}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static get3GCapabilitySlots()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v0, Lcom/mediatek/phone/GeminiConstants;->SLOTS:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v4, v0, v1

    .line 371
    .local v4, "slot":I
    invoke-static {v4}, Lcom/mediatek/calloption/CallOptionUtils;->get3GCapabilitySIMBySlot(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 372
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    .end local v4    # "slot":I
    :cond_1
    return-object v3
.end method

.method public static getCityGeoDescription(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 7
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "countryISO"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 286
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v4

    .line 287
    .local v4, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v2

    .line 289
    .local v2, "geocoder":Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    const/4 v3, 0x0

    .line 291
    .local v3, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parsing \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' for countryIso \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v4, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    .line 294
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- parsed number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    if-eqz v3, :cond_0

    .line 300
    invoke-virtual {v2, v3, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "description":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- got description = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 304
    .end local v0    # "description":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 295
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getGeoDescription: NumberParseException for incoming number \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    .end local v1    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static final getCurrentCountryISO(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    const-string v2, "country_detector"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 241
    .local v1, "detector":Landroid/location/CountryDetector;
    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 243
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 248
    .end local v0    # "country":Landroid/location/Country;
    :goto_0
    return-object v2

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getInitialNumber(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInitialNumber(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    const/4 v1, 0x0

    .line 97
    :goto_0
    return-object v1

    .line 91
    :cond_0
    const-string v2, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    const-string v2, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "actualNumberToDial":Ljava/lang/String;
    goto :goto_0

    .line 97
    .end local v1    # "actualNumberToDial":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Lcom/mediatek/calloption/CallOptionUtils;->getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 102
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "scheme":Ljava/lang/String;
    const-string v5, "sip"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 107
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 125
    :goto_0
    return-object v5

    .line 110
    :cond_0
    const-string v5, "voicemail:"

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voice_call_sim_setting"

    const-wide/16 v7, -0x5

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 113
    .local v0, "defaultSim":J
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v3

    .line 115
    .local v3, "simInfoWrapper":Lcom/mediatek/phone/SIMInfoWrapper;
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_1

    long-to-int v5, v0

    invoke-virtual {v3, v5}, Lcom/mediatek/phone/SIMInfoWrapper;->getSlotIdBySimId(I)I

    move-result v5

    if-ltz v5, :cond_1

    .line 116
    const-string v5, "simId"

    long-to-int v6, v0

    invoke-virtual {v3, v6}, Lcom/mediatek/phone/SIMInfoWrapper;->getSlotIdBySimId(I)I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    .end local v0    # "defaultSim":J
    .end local v3    # "simInfoWrapper":Lcom/mediatek/phone/SIMInfoWrapper;
    :cond_1
    const-string v5, "getNumberFromIntent ....."

    invoke-static {v5}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 125
    invoke-static {p1, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static getNumberInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;
    .locals 11
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "countryISO"    # Ljava/lang/String;

    .prologue
    .line 253
    const-string v8, "getNumberInfo().."

    invoke-static {v8}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 254
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v6

    .line 255
    .local v6, "phoneUtil":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v5, 0x0

    .line 257
    .local v5, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_start_0
    invoke-virtual {v6, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 262
    if-nez v5, :cond_0

    .line 263
    const-string v8, "phoneNumber is null"

    invoke-static {v8}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 264
    new-instance v8, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;

    const-string v9, ""

    const-string v10, ""

    invoke-direct {v8, p1, v9, p0, v10}, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :goto_0
    return-object v8

    .line 258
    :catch_0
    move-exception v3

    .line 259
    .local v3, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    const-string v8, "NumberParseException happens"

    invoke-static {v8}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 260
    new-instance v8, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;

    const-string v9, ""

    const-string v10, ""

    invoke-direct {v8, p1, v9, p0, v10}, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 266
    .end local v3    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_0
    invoke-virtual {v6, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "nationalSignificantNumber":Ljava/lang/String;
    const-string v0, ""

    .line 268
    .local v0, "areaCode":Ljava/lang/String;
    const-string v7, ""

    .line 269
    .local v7, "subscriberNumber":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getPossibleNationalPrefix()Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "areaCodePrefix":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "phone number = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 271
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nationalSignificantNumber = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v6, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getLengthOfGeographicalAreaCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)I

    move-result v1

    .line 273
    .local v1, "areaCodeLength":I
    if-lez v1, :cond_1

    .line 274
    const/4 v8, 0x0

    invoke-virtual {v4, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 276
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "areaCode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 277
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subscriberNumber = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 281
    :goto_1
    new-instance v8, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;

    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0, v7, v2}, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 279
    :cond_1
    move-object v7, v4

    goto :goto_1
.end method

.method public static getSimState(Lcom/mediatek/calloption/Request;I)I
    .locals 4
    .param p0, "request"    # Lcom/mediatek/calloption/Request;
    .param p1, "slot"    # I

    .prologue
    .line 179
    const/4 v1, 0x0

    .line 180
    .local v1, "state":I
    invoke-virtual {p0}, Lcom/mediatek/calloption/Request;->getTelephonyInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    if-nez v3, :cond_0

    move v2, v1

    .line 188
    .end local v1    # "state":I
    .local v2, "state":I
    :goto_0
    return v2

    .line 184
    .end local v2    # "state":I
    .restart local v1    # "state":I
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/calloption/Request;->getTelephonyInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getSimState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 188
    .end local v1    # "state":I
    .restart local v2    # "state":I
    goto :goto_0

    .line 185
    .end local v2    # "state":I
    .restart local v1    # "state":I
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException happens in getSimState()"

    invoke-static {v3}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static isRadioOn(Lcom/mediatek/calloption/Request;I)Z
    .locals 4
    .param p0, "request"    # Lcom/mediatek/calloption/Request;
    .param p1, "slot"    # I

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/mediatek/calloption/Request;->getTelephonyInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    if-nez v3, :cond_0

    .line 193
    const/4 v2, 0x0

    .line 211
    :goto_0
    return v2

    .line 195
    :cond_0
    const/4 v2, 0x0

    .line 197
    .local v2, "result":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/calloption/Request;->isMultipleSim()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 198
    const-string v3, "phoneEx"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v1

    .line 200
    .local v1, "iTelephonyEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    if-eqz v1, :cond_1

    .line 201
    invoke-interface {v1, p1}, Lcom/mediatek/common/telephony/ITelephonyEx;->isRadioOn(I)Z

    move-result v2

    goto :goto_0

    .line 203
    :cond_1
    const-string v3, "[isRadioOn], iTelephonyEx is null!!!"

    invoke-static {v3}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    .end local v1    # "iTelephonyEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException happens in isRadioOn()"

    invoke-static {v3}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/mediatek/calloption/Request;->getTelephonyInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0
.end method

.method public static isSimInsert(Lcom/mediatek/calloption/Request;I)Z
    .locals 5
    .param p0, "request"    # Lcom/mediatek/calloption/Request;
    .param p1, "slot"    # I

    .prologue
    const/4 v3, 0x0

    .line 129
    invoke-virtual {p0}, Lcom/mediatek/calloption/Request;->getTelephonyInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    if-nez v4, :cond_0

    move v2, v3

    .line 145
    :goto_0
    return v2

    .line 132
    :cond_0
    const/4 v2, 0x0

    .line 134
    .local v2, "result":Z
    :try_start_0
    const-string v4, "phoneEx"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v1

    .line 136
    .local v1, "iTelephonyEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    if-eqz v1, :cond_1

    .line 137
    invoke-interface {v1, p1}, Lcom/mediatek/common/telephony/ITelephonyEx;->hasIccCard(I)Z

    move-result v2

    goto :goto_0

    .line 139
    :cond_1
    const-string v4, "[isSimInsert], iTelephonyEx is null!!!"

    invoke-static {v4}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    .end local v1    # "iTelephonyEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "RemoteException happens in isSimInsert()"

    invoke-static {v4}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    move v2, v3

    .line 143
    goto :goto_0
.end method

.method public static isSimReady(Lcom/mediatek/calloption/Request;I)Z
    .locals 2
    .param p0, "request"    # Lcom/mediatek/calloption/Request;
    .param p1, "slot"    # I

    .prologue
    .line 156
    invoke-static {p0, p1}, Lcom/mediatek/calloption/CallOptionUtils;->getSimState(Lcom/mediatek/calloption/Request;I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidNumberForCountryISO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryISO"    # Ljava/lang/String;

    .prologue
    .line 309
    const/4 v1, 0x0

    .line 311
    .local v1, "result":Z
    :try_start_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v3

    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumberForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 316
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidNumberForCountryISO(), PhoneNumberUtil.isValidNumberForRegion() result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 317
    if-nez v1, :cond_0

    .line 318
    invoke-static {p2, p1}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->isValidNumber(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 319
    .local v2, "result2":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidNumberForCountryISO(), result2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 320
    packed-switch v2, :pswitch_data_0

    .line 341
    const/4 v1, 0x0

    .line 345
    .end local v2    # "result2":I
    :cond_0
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidNumberForCountryISO(), number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", country ISO = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 347
    return v1

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch NumberParseException, exception info = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 324
    .end local v0    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    .restart local v2    # "result2":I
    :pswitch_0
    const/4 v1, 0x0

    .line 325
    goto :goto_1

    .line 328
    :pswitch_1
    const/4 v1, 0x1

    .line 329
    goto :goto_1

    .line 331
    :pswitch_2
    invoke-static {p0}, Lcom/mediatek/calloption/CallOptionUtils;->getCurrentCountryISO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 332
    const/4 v1, 0x1

    goto :goto_1

    .line 334
    :cond_1
    const/4 v1, 0x0

    .line 336
    goto :goto_1

    .line 338
    :pswitch_3
    const/4 v1, 0x0

    .line 339
    goto :goto_1

    .line 320
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 441
    const-string v0, "CallOptionUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return-void
.end method

.method public static queryIPPrefix(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slot"    # I
    .param p2, "isMultipleSim"    # Z

    .prologue
    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v4, "ipprefix"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v3

    .line 355
    .local v3, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v3, :cond_0

    .line 356
    iget-wide v4, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 358
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 359
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, "ipPrefix":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryIPPrefix, ipPrefix = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",isMultipleSim: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/calloption/CallOptionUtils;->log(Ljava/lang/String;)V

    .line 361
    return-object v1
.end method
