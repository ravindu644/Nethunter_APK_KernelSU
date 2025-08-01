.class public abstract Lcom/hijacker/DeviceDialog;
.super Landroid/app/DialogFragment;
.source "DeviceDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method abstract onRefresh()V
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    new-instance v0, Lcom/hijacker/DialogRefreshTask;

    invoke-direct {v0, p0}, Lcom/hijacker/DialogRefreshTask;-><init>(Lcom/hijacker/DeviceDialog;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/hijacker/DialogRefreshTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

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
