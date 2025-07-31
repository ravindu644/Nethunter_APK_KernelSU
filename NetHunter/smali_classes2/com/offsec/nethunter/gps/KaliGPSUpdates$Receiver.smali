.class public interface abstract Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;
.super Ljava/lang/Object;
.source "KaliGPSUpdates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/gps/KaliGPSUpdates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Receiver"
.end annotation


# virtual methods
.method public abstract onFirstPositionUpdate()V
.end method

.method public abstract onPositionUpdate(Ljava/lang/String;)V
.end method
