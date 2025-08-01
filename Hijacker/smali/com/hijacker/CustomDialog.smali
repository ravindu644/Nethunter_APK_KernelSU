.class public Lcom/hijacker/CustomDialog;
.super Landroid/app/DialogFragment;
.source "CustomDialog.java"


# instance fields
.field cancelable:Z

.field message:Ljava/lang/String;

.field negativeText:Ljava/lang/String;

.field neutralText:Ljava/lang/String;

.field onNegativeClick:Ljava/lang/Runnable;

.field onNeutralClick:Ljava/lang/Runnable;

.field onPositiveClick:Ljava/lang/Runnable;

.field positiveText:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hijacker/CustomDialog;->cancelable:Z

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

    iget-boolean p1, p0, Lcom/hijacker/CustomDialog;->cancelable:Z

    invoke-virtual {p0, p1}, Lcom/hijacker/CustomDialog;->setCancelable(Z)V

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/hijacker/CustomDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/hijacker/CustomDialog;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_0
    iget-object v0, p0, Lcom/hijacker/CustomDialog;->message:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_1
    iget-object v0, p0, Lcom/hijacker/CustomDialog;->positiveText:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/hijacker/CustomDialog$1;

    invoke-direct {v1, p0}, Lcom/hijacker/CustomDialog$1;-><init>(Lcom/hijacker/CustomDialog;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_2
    iget-object v0, p0, Lcom/hijacker/CustomDialog;->neutralText:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/hijacker/CustomDialog$2;

    invoke-direct {v1, p0}, Lcom/hijacker/CustomDialog$2;-><init>(Lcom/hijacker/CustomDialog;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_3
    iget-object v0, p0, Lcom/hijacker/CustomDialog;->negativeText:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/hijacker/CustomDialog$3;

    invoke-direct {v1, p0}, Lcom/hijacker/CustomDialog$3;-><init>(Lcom/hijacker/CustomDialog;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_4
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

.method public setCancelable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hijacker/CustomDialog;->cancelable:Z

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/CustomDialog;->message:Ljava/lang/String;

    return-void
.end method

.method public setNegativeButton(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/CustomDialog;->negativeText:Ljava/lang/String;

    iput-object p2, p0, Lcom/hijacker/CustomDialog;->onNegativeClick:Ljava/lang/Runnable;

    return-void
.end method

.method public setNeutralButton(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/CustomDialog;->neutralText:Ljava/lang/String;

    iput-object p2, p0, Lcom/hijacker/CustomDialog;->onNeutralClick:Ljava/lang/Runnable;

    return-void
.end method

.method public setPositiveButton(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/CustomDialog;->positiveText:Ljava/lang/String;

    iput-object p2, p0, Lcom/hijacker/CustomDialog;->onPositiveClick:Ljava/lang/Runnable;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/CustomDialog;->title:Ljava/lang/String;

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/hijacker/MainActivity;->background:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
