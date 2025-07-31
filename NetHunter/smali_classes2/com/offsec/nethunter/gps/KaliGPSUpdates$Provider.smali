.class public interface abstract Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;
.super Ljava/lang/Object;
.source "KaliGPSUpdates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/gps/KaliGPSUpdates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Provider"
.end annotation


# virtual methods
.method public abstract onLocationUpdatesRequested(Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;)V
.end method

.method public abstract onReceiverReattach(Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;)Z
.end method

.method public abstract onStopRequested()V
.end method
