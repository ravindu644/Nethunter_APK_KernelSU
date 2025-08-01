.class Lcom/hijacker/Airodump$1;
.super Ljava/lang/Object;
.source "Airodump.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hijacker/Airodump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "ENDOFLS"

    invoke-static {}, Lcom/hijacker/Shell;->getFreeShell()Lcom/hijacker/Shell;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lcom/hijacker/Airodump;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "/handshake"

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hijacker/Airodump;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "/wep_ivs"

    goto :goto_0

    :cond_1
    sget-boolean v2, Lcom/hijacker/MainActivity;->always_cap:Z

    if-eqz v2, :cond_3

    const-string v2, "/cap"

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ls "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/hijacker/MainActivity;->cap_path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "*.cap; echo ENDOFLS"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hijacker/Shell;->getShell_out()Ljava/io/BufferedReader;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/hijacker/MainActivity;->getLastLine(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hijacker/Airodump;->access$202(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/hijacker/Airodump;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hijacker/Airodump;->access$202(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/hijacker/MainActivity;->rootView:Landroid/view/View;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saving handshake to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hijacker/Airodump;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Airodump is not supposed to be writing to a file"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/hijacker/Shell;->done()V

    throw v0

    :catch_0
    :goto_1
    invoke-virtual {v1}, Lcom/hijacker/Shell;->done()V

    return-void
.end method
