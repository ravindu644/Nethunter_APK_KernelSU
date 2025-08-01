.class Lcom/hijacker/MainActivity$SetupTask$4$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/MainActivity$SetupTask$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/hijacker/MainActivity$SetupTask$4;


# direct methods
.method constructor <init>(Lcom/hijacker/MainActivity$SetupTask$4;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/MainActivity$SetupTask$4$1;->this$2:Lcom/hijacker/MainActivity$SetupTask$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    sget-boolean v0, Lcom/hijacker/MainActivity;->debug:Z

    const-string v1, "HIJACKER/wpa_subthread"

    if-eqz v0, :cond_0

    const-string v0, "wpa_subthread started"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    sput v0, Lcom/hijacker/MainActivity;->progress_int:I

    :goto_0
    sget v0, Lcom/hijacker/MainActivity;->progress_int:I

    sget v3, Lcom/hijacker/MainActivity;->deauthWait:I

    if-gt v0, v3, :cond_1

    sget-boolean v0, Lcom/hijacker/MainActivity;->wpacheckcont:Z

    if-eqz v0, :cond_1

    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    sget v0, Lcom/hijacker/MainActivity;->progress_int:I

    add-int/2addr v0, v2

    sput v0, Lcom/hijacker/MainActivity;->progress_int:I

    new-instance v0, Lcom/hijacker/MainActivity$SetupTask$4$1$1;

    invoke-direct {v0, p0}, Lcom/hijacker/MainActivity$SetupTask$4$1$1;-><init>(Lcom/hijacker/MainActivity$SetupTask$4$1;)V

    invoke-static {v0}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/hijacker/MainActivity;->wpacheckcont:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/hijacker/MainActivity$SetupTask$4$1$2;

    invoke-direct {v0, p0}, Lcom/hijacker/MainActivity$SetupTask$4$1$2;-><init>(Lcom/hijacker/MainActivity$SetupTask$4$1;)V

    invoke-static {v0}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/hijacker/MainActivity;->stop(I)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "HIJACKER/Exception"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught Exception in wpa_subthread: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hijacker/MainActivity$SetupTask$4$1$3;

    invoke-direct {v0, p0}, Lcom/hijacker/MainActivity$SetupTask$4$1$3;-><init>(Lcom/hijacker/MainActivity$SetupTask$4$1;)V

    invoke-static {v0}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    sget-boolean v0, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz v0, :cond_3

    const-string v0, "wpa_subthread finished"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :goto_3
    invoke-static {v2}, Lcom/hijacker/MainActivity;->stop(I)V

    throw v0
.end method
