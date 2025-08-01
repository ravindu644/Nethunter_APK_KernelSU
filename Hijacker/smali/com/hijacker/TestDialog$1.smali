.class Lcom/hijacker/TestDialog$1;
.super Ljava/lang/Object;
.source "TestDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hijacker/TestDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/TestDialog;


# direct methods
.method constructor <init>(Lcom/hijacker/TestDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/TestDialog$1;->this$0:Lcom/hijacker/TestDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v1, p0

    const-string v2, "HIJACKER/test_thread"

    const/4 v3, 0x5

    new-array v4, v3, [Z

    fill-array-data v4, :array_0

    sget-object v0, Lcom/hijacker/MainActivity;->enable_monMode:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "su -c "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/hijacker/MainActivity;->prefix:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/hijacker/MainActivity;->airodump_dir:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/hijacker/MainActivity;->iface:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/hijacker/MainActivity;->prefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/hijacker/MainActivity;->aireplay_dir:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " --deauth 0 -a 11:22:33:44:55:66 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/hijacker/MainActivity;->iface:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/hijacker/MainActivity;->prefix:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/hijacker/MainActivity;->mdk3bf_dir:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/hijacker/MainActivity;->iface:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " b -m"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/hijacker/MainActivity;->prefix:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/hijacker/MainActivity;->reaver_dir:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -i "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/hijacker/MainActivity;->iface:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -b 00:11:22:33:44:55 -c 2"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    :try_start_0
    invoke-static {v10}, Lcom/hijacker/MainActivity;->stop(I)V

    invoke-static {v11}, Lcom/hijacker/MainActivity;->stop(I)V

    invoke-static {v7}, Lcom/hijacker/MainActivity;->stop(I)V

    const/4 v12, 0x3

    invoke-static {v12}, Lcom/hijacker/MainActivity;->stop(I)V

    invoke-static {v3}, Lcom/hijacker/MainActivity;->stop(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/16 v15, 0x2710

    add-long/2addr v13, v15

    sput-wide v13, Lcom/hijacker/MainActivity;->last_action:J

    new-instance v13, Lcom/hijacker/TestDialog$1$1;

    invoke-direct {v13, v1}, Lcom/hijacker/TestDialog$1$1;-><init>(Lcom/hijacker/TestDialog$1;)V

    invoke-static {v13}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/hijacker/Shell;->runOne(Ljava/lang/String;)V

    const-wide/16 v13, 0x1f4

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    new-instance v0, Lcom/hijacker/TestDialog$1$2;

    invoke-direct {v0, v1, v5}, Lcom/hijacker/TestDialog$1$2;-><init>(Lcom/hijacker/TestDialog$1;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {v10}, Lcom/hijacker/MainActivity;->getPIDs(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/hijacker/TestDialog$1;->this$0:Lcom/hijacker/TestDialog;

    iget-object v0, v0, Lcom/hijacker/TestDialog;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    invoke-static {v10}, Lcom/hijacker/MainActivity;->stop(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    add-long v17, v17, v15

    sput-wide v17, Lcom/hijacker/MainActivity;->last_action:J

    aput-boolean v11, v4, v10

    :goto_0
    new-instance v0, Lcom/hijacker/TestDialog$1$3;

    invoke-direct {v0, v1, v4, v8}, Lcom/hijacker/TestDialog$1$3;-><init>(Lcom/hijacker/TestDialog$1;[ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {v11}, Lcom/hijacker/MainActivity;->getPIDs(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    aput-boolean v10, v4, v11

    goto :goto_1

    :cond_1
    invoke-static {v11}, Lcom/hijacker/MainActivity;->stop(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    add-long v17, v17, v15

    sput-wide v17, Lcom/hijacker/MainActivity;->last_action:J

    aput-boolean v11, v4, v11

    :goto_1
    new-instance v0, Lcom/hijacker/TestDialog$1$4;

    invoke-direct {v0, v1, v4, v9}, Lcom/hijacker/TestDialog$1$4;-><init>(Lcom/hijacker/TestDialog$1;[ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {v7}, Lcom/hijacker/MainActivity;->getPIDs(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    aput-boolean v10, v4, v7

    goto :goto_2

    :cond_2
    invoke-static {v7}, Lcom/hijacker/MainActivity;->stop(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long/2addr v8, v15

    sput-wide v8, Lcom/hijacker/MainActivity;->last_action:J

    aput-boolean v11, v4, v7

    :goto_2
    new-instance v0, Lcom/hijacker/TestDialog$1$5;

    invoke-direct {v0, v1, v4, v6}, Lcom/hijacker/TestDialog$1$5;-><init>(Lcom/hijacker/TestDialog$1;[ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {v3}, Lcom/hijacker/MainActivity;->getPIDs(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    aput-boolean v10, v4, v12

    goto :goto_3

    :cond_3
    invoke-static {v3}, Lcom/hijacker/MainActivity;->stop(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v15

    sput-wide v5, Lcom/hijacker/MainActivity;->last_action:J

    aput-boolean v11, v4, v12

    :goto_3
    new-instance v0, Lcom/hijacker/TestDialog$1$6;

    invoke-direct {v0, v1, v4}, Lcom/hijacker/TestDialog$1$6;-><init>(Lcom/hijacker/TestDialog$1;[Z)V

    invoke-static {v0}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/hijacker/MainActivity;->checkChroot()I

    move-result v0

    const/4 v5, 0x4

    if-nez v0, :cond_4

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    aput-boolean v6, v4, v5

    new-instance v5, Lcom/hijacker/TestDialog$1$7;

    invoke-direct {v5, v1, v0}, Lcom/hijacker/TestDialog$1$7;-><init>(Lcom/hijacker/TestDialog$1;I)V

    invoke-static {v5}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    :goto_5
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hijacker/TestDialog$1$8;

    invoke-direct {v0, v1, v4}, Lcom/hijacker/TestDialog$1$8;-><init>(Lcom/hijacker/TestDialog$1;[Z)V

    invoke-static {v0}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    invoke-static {v10}, Lcom/hijacker/MainActivity;->stop(I)V

    invoke-static {v11}, Lcom/hijacker/MainActivity;->stop(I)V

    invoke-static {v7}, Lcom/hijacker/MainActivity;->stop(I)V

    invoke-static {v3}, Lcom/hijacker/MainActivity;->stop(I)V

    return-void

    :goto_7
    invoke-static {v10}, Lcom/hijacker/MainActivity;->stop(I)V

    invoke-static {v11}, Lcom/hijacker/MainActivity;->stop(I)V

    invoke-static {v7}, Lcom/hijacker/MainActivity;->stop(I)V

    invoke-static {v3}, Lcom/hijacker/MainActivity;->stop(I)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
