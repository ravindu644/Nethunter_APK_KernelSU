.class public Lcom/hijacker/DismissReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DismissReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x0

    sput-boolean p1, Lcom/hijacker/MainActivity;->notif_on:Z

    return-void
.end method
