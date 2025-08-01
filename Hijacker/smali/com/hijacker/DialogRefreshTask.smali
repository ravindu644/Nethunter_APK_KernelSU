.class Lcom/hijacker/DialogRefreshTask;
.super Landroid/os/AsyncTask;
.source "DialogRefreshTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field deviceDialog:Lcom/hijacker/DeviceDialog;


# direct methods
.method constructor <init>(Lcom/hijacker/DeviceDialog;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/hijacker/DialogRefreshTask;->deviceDialog:Lcom/hijacker/DeviceDialog;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/hijacker/DialogRefreshTask;->deviceDialog:Lcom/hijacker/DeviceDialog;

    invoke-virtual {p1}, Lcom/hijacker/DeviceDialog;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/hijacker/DialogRefreshTask;->publishProgress([Ljava/lang/Object;)V

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/hijacker/DialogRefreshTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/hijacker/DialogRefreshTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0

    iget-object p1, p0, Lcom/hijacker/DialogRefreshTask;->deviceDialog:Lcom/hijacker/DeviceDialog;

    invoke-virtual {p1}, Lcom/hijacker/DeviceDialog;->onRefresh()V

    return-void
.end method
