.class public Lcom/hijacker/ErrorDialog;
.super Landroid/app/DialogFragment;
.source "ErrorDialog.java"


# instance fields
.field message:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public _wait()V
    .locals 1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    iget-object p1, p0, Lcom/hijacker/ErrorDialog;->title:Ljava/lang/String;

    if-nez p1, :cond_0

    const p1, 0x7f10008e

    invoke-virtual {p0, p1}, Lcom/hijacker/ErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hijacker/ErrorDialog;->title:Ljava/lang/String;

    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/hijacker/ErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f10011e

    new-instance v1, Lcom/hijacker/ErrorDialog$1;

    invoke-direct {v1, p0}, Lcom/hijacker/ErrorDialog$1;-><init>(Lcom/hijacker/ErrorDialog;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f100095

    new-instance v1, Lcom/hijacker/ErrorDialog$2;

    invoke-direct {v1, p0}, Lcom/hijacker/ErrorDialog$2;-><init>(Lcom/hijacker/ErrorDialog;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/hijacker/ErrorDialog;->message:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hijacker/ErrorDialog;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/hijacker/ErrorDialog;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    :goto_0
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/ErrorDialog;->message:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/ErrorDialog;->title:Ljava/lang/String;

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/hijacker/MainActivity;->background:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/hijacker/MainActivity;->error_notif:Landroidx/core/app/NotificationCompat$Builder;

    iget-object p2, p0, Lcom/hijacker/ErrorDialog;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    sget-object p1, Lcom/hijacker/MainActivity;->error_notif:Landroidx/core/app/NotificationCompat$Builder;

    iget-object p2, p0, Lcom/hijacker/ErrorDialog;->message:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    sget-object p1, Lcom/hijacker/MainActivity;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 p2, 0x1

    sget-object v0, Lcom/hijacker/MainActivity;->error_notif:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_0
    return-void
.end method
