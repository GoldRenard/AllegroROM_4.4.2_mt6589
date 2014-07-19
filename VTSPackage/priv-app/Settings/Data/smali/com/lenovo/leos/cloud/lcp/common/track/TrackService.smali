.class public interface abstract Lcom/lenovo/leos/cloud/lcp/common/track/TrackService;
.super Ljava/lang/Object;
.source "TrackService.java"


# virtual methods
.method public abstract initialize(Landroid/content/Context;)V
.end method

.method public abstract setUserId(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/lps/reaper/sdk/api/ParamMap;)V
.end method

.method public abstract trackPagePause(Ljava/lang/String;)V
.end method

.method public abstract trackPageResume(Ljava/lang/String;)V
.end method

.method public abstract trackPause(Landroid/content/Context;)V
.end method

.method public abstract trackResume(Landroid/content/Context;)V
.end method

.method public abstract trackUserAction(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract trackUserAdvice(Ljava/lang/String;Ljava/lang/String;)V
.end method
