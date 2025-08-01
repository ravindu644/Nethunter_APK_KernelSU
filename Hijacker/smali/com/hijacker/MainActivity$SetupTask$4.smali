.class Lcom/hijacker/MainActivity$SetupTask$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/MainActivity$SetupTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hijacker/MainActivity$SetupTask;


# direct methods
.method constructor <init>(Lcom/hijacker/MainActivity$SetupTask;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/MainActivity$SetupTask$4;->this$1:Lcom/hijacker/MainActivity$SetupTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    sget-boolean v0, Lcom/hijacker/MainActivity;->debug:Z

    const-string v1, "HIJACKER/wpa_thread"

    if-eqz v0, :cond_0

    const-string v0, "Started wpa_thread"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/hijacker/MainActivity$SetupTask$4$1;

    invoke-direct {v2, p0}, Lcom/hijacker/MainActivity$SetupTask$4$1;-><init>(Lcom/hijacker/MainActivity$SetupTask$4;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/hijacker/Airodump;->getCapFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/hijacker/Shell;->getFreeShell()Lcom/hijacker/Shell;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v2, :cond_2

    :try_start_0
    sget-boolean v5, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz v5, :cond_1

    const-string v5, "cap file not found, airodump is probably not running..."

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_2
    sget-boolean v5, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz v5, :cond_3

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v5, 0x1

    sput-boolean v5, Lcom/hijacker/MainActivity;->wpacheckcont:Z

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {v3}, Lcom/hijacker/Shell;->getShell_out()Ljava/io/BufferedReader;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_9

    :try_start_1
    sget-boolean v8, Lcom/hijacker/MainActivity;->wpacheckcont:Z

    if-eqz v8, :cond_9

    sget-boolean v8, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz v8, :cond_4

    const-string v8, "Checking cap file..."

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/hijacker/MainActivity;->aircrack_dir:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; echo ENDOFAIR"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    const-string v9, "ENDOFAIR"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x38

    if-lt v9, v10, :cond_7

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v11, 0x31

    if-eq v9, v11, :cond_6

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v11, 0x32

    if-eq v9, v11, :cond_6

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x33

    if-ne v8, v9, :cond_7

    :cond_6
    const/4 v7, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_8
    :goto_2
    const-wide/16 v8, 0x2bc

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_6

    :cond_9
    :goto_3
    sput-boolean v4, Lcom/hijacker/MainActivity;->wpacheckcont:Z

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {v3}, Lcom/hijacker/Shell;->done()V

    if-eqz v7, :cond_a

    sget-object v0, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    invoke-static {v0}, Lcom/hijacker/Airodump;->startClean(Lcom/hijacker/AP;)V

    :cond_a
    new-instance v0, Lcom/hijacker/MainActivity$SetupTask$4$2;

    invoke-direct {v0, p0, v7, v2}, Lcom/hijacker/MainActivity$SetupTask$4$2;-><init>(Lcom/hijacker/MainActivity$SetupTask$4;ZLjava/lang/String;)V

    :goto_4
    invoke-static {v0}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V

    goto :goto_7

    :catchall_0
    move-exception v1

    const/4 v7, 0x0

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    :goto_5
    const/4 v7, 0x0

    :goto_6
    :try_start_2
    const-string v5, "HIJACKER/Exception"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught Exception in wpa_thread: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sput-boolean v4, Lcom/hijacker/MainActivity;->wpacheckcont:Z

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {v3}, Lcom/hijacker/Shell;->done()V

    if-eqz v7, :cond_b

    sget-object v0, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    invoke-static {v0}, Lcom/hijacker/Airodump;->startClean(Lcom/hijacker/AP;)V

    :cond_b
    new-instance v0, Lcom/hijacker/MainActivity$SetupTask$4$2;

    invoke-direct {v0, p0, v7, v2}, Lcom/hijacker/MainActivity$SetupTask$4$2;-><init>(Lcom/hijacker/MainActivity$SetupTask$4;ZLjava/lang/String;)V

    goto :goto_4

    :goto_7
    return-void

    :catchall_1
    move-exception v1

    :goto_8
    sput-boolean v4, Lcom/hijacker/MainActivity;->wpacheckcont:Z

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {v3}, Lcom/hijacker/Shell;->done()V

    if-eqz v7, :cond_c

    sget-object v0, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    invoke-static {v0}, Lcom/hijacker/Airodump;->startClean(Lcom/hijacker/AP;)V

    :cond_c
    new-instance v0, Lcom/hijacker/MainActivity$SetupTask$4$2;

    invoke-direct {v0, p0, v7, v2}, Lcom/hijacker/MainActivity$SetupTask$4$2;-><init>(Lcom/hijacker/MainActivity$SetupTask$4;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V

    throw v1
.end method
