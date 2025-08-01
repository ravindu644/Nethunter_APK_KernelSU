.class Lcom/hijacker/WatchdogTask;
.super Landroid/os/AsyncTask;
.source "WatchdogTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field static final PAUSE_TIME:I = 0x3e8

.field static final SLEEP_TIME:I = 0x1388


# instance fields
.field con:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/hijacker/WatchdogTask;->con:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method check(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hijacker/WatchdogTask;->sleep()V

    invoke-virtual {p0}, Lcom/hijacker/WatchdogTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/hijacker/MainActivity;->getPIDs(I)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    new-array p2, v2, [Ljava/lang/String;

    aput-object p4, p2, v1

    invoke-virtual {p0, p2}, Lcom/hijacker/WatchdogTask;->publishProgress([Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/hijacker/MainActivity;->stop(I)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    invoke-static {p1}, Lcom/hijacker/MainActivity;->stop(I)V

    invoke-static {p1}, Lcom/hijacker/MainActivity;->getPIDs(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    new-array p1, v2, [Ljava/lang/String;

    aput-object p3, p1, v1

    invoke-virtual {p0, p1}, Lcom/hijacker/WatchdogTask;->publishProgress([Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7

    const-string p1, "HIJACKER/watchdog"

    :goto_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/hijacker/WatchdogTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz v1, :cond_0

    const-string v1, "Watchdog watching..."

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/hijacker/Airodump;->isRunning()Z

    move-result v1

    iget-object v2, p0, Lcom/hijacker/WatchdogTask;->con:Landroid/content/Context;

    const v3, 0x7f100027

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hijacker/WatchdogTask;->con:Landroid/content/Context;

    const v4, 0x7f100026

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1, v2, v3}, Lcom/hijacker/WatchdogTask;->check(IZLjava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/hijacker/MainActivity;->aireplay_running:I

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    :cond_1
    iget-object v1, p0, Lcom/hijacker/WatchdogTask;->con:Landroid/content/Context;

    const v2, 0x7f100025

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hijacker/WatchdogTask;->con:Landroid/content/Context;

    const v3, 0x7f100024

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v4, v1, v2}, Lcom/hijacker/WatchdogTask;->check(IZLjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    sget-boolean v2, Lcom/hijacker/MDKFragment;->bf:Z

    iget-object v3, p0, Lcom/hijacker/WatchdogTask;->con:Landroid/content/Context;

    const v4, 0x7f1000da

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/hijacker/WatchdogTask;->con:Landroid/content/Context;

    const v6, 0x7f1000d9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v2, v3, v5}, Lcom/hijacker/WatchdogTask;->check(IZLjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    sget-boolean v2, Lcom/hijacker/MDKFragment;->ados:Z

    iget-object v3, p0, Lcom/hijacker/WatchdogTask;->con:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/hijacker/WatchdogTask;->con:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/hijacker/WatchdogTask;->check(IZLjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x1388

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Watchdog interrupted"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/hijacker/WatchdogTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method isRunning()Z
    .locals 2

    invoke-virtual {p0}, Lcom/hijacker/WatchdogTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hijacker/WatchdogTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/hijacker/MainActivity;->debug:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HIJACKER/watchdog"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/hijacker/MainActivity;->background:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/hijacker/MainActivity;->error_notif:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/hijacker/WatchdogTask;->con:Landroid/content/Context;

    const v3, 0x7f100190

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    sget-object v0, Lcom/hijacker/MainActivity;->error_notif:Landroidx/core/app/NotificationCompat$Builder;

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    sget-object p1, Lcom/hijacker/MainActivity;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v0, 0x1

    sget-object v1, Lcom/hijacker/MainActivity;->error_notif:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/hijacker/ErrorDialog;

    invoke-direct {v0}, Lcom/hijacker/ErrorDialog;-><init>()V

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/hijacker/ErrorDialog;->setTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hijacker/WatchdogTask;->con:Landroid/content/Context;

    const v1, 0x7f10018f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hijacker/ErrorDialog;->setMessage(Ljava/lang/String;)V

    sget-object p1, Lcom/hijacker/MainActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "ErrorDialog"

    invoke-virtual {v0, p1, v1}, Lcom/hijacker/ErrorDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method sleep()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/hijacker/MainActivity;->last_action:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    sget-boolean v0, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz v0, :cond_0

    const-string v0, "HIJACKER/watchdog"

    const-string v1, "Watchdog waiting for 1 sec..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_1
    return-void
.end method
