.class public Lcom/hijacker/StopReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StopReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/hijacker/MainActivity;->stop(I)V

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/hijacker/MainActivity;->stop(I)V

    const/4 p1, 0x3

    invoke-static {p1}, Lcom/hijacker/MainActivity;->stop(I)V

    const/4 p1, 0x5

    invoke-static {p1}, Lcom/hijacker/MainActivity;->stop(I)V

    return-void
.end method
