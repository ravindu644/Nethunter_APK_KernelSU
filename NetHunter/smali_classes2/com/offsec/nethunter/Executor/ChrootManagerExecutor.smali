.class public Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;
.super Ljava/lang/Object;
.source "ChrootManagerExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;
    }
.end annotation


# static fields
.field public static final BACKUP_CHROOT:I = 0x4

.field public static final CHECK_CHROOT:I = 0x0

.field public static final DOWNLOAD_CHROOT:I = 0x6

.field public static final FIND_CHROOT:I = 0x7

.field public static final INSTALL_CHROOT:I = 0x3

.field public static final ISSUE_BANNER:I = 0x8

.field public static final MOUNT_CHROOT:I = 0x1

.field public static final REMOVE_CHROOT:I = 0x5

.field public static final UNMOUNT_CHROOT:I = 0x2


# instance fields
.field private final ACTIONCODE:I

.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private listener:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;

.field private final mainHandler:Landroid/os/Handler;

.field private resultCode:I

.field private final resultString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6iwJMrFH4T9inBniV12_f4KuQj0(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;)V
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->onPreExecute()V

    return-void
.end method

.method public static synthetic $r8$lambda$P1FnrqRkWRG4Gv2_8WcydGNJaOY(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;)V
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->onPostExecute()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->resultString:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->ACTIONCODE:I

    return-void
.end method

.method private onPostExecute()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->listener:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->resultCode:I

    iget-object v2, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->resultString:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;->onExecutorFinished(ILjava/util/ArrayList;)V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/offsec/nethunter/ChrootManagerFragment;->isExecutorRunning:Z

    return-void
.end method

.method private onPreExecute()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/offsec/nethunter/ChrootManagerFragment;->isExecutorRunning:Z

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->listener:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;->onExecutorPrepare()V

    :cond_0
    return-void
.end method

.method private publishProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->listener:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;->onExecutorProgressUpdate(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "echo \"[-] Error closing streams: "

    iget v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->ACTIONCODE:I

    const-string v3, " "

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "\""

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1d

    :pswitch_0
    iget-object v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, p1, v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v7

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I

    goto/16 :goto_1d

    :pswitch_1
    iget-object v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->resultString:Ljava/util/ArrayList;

    new-instance v2, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v2}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/chrootmgr -c \"findchroot\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1d

    :pswitch_2
    :try_start_0
    iget-object v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v3, "echo \"[!] The Download has been started...Please wait.\""

    aget-object v8, p1, v7

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v0, v3, v8}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I

    const-string v0, "image-nethunter.kali.org"

    const-string v3, "kali.download"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v9, v4, :cond_b

    aget-object v0, v3, v9

    iget-object v11, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "echo \"[!] Trying to download from: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aget-object v13, p1, v7

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v11, v12, v13}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_15

    :try_start_1
    aget-object v11, p1, v4

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "minimal"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "arm64"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v11, "/nethunter-images/current/rootfs/kali-nethunter-rootfs-minimal-arm64.tar.xz"

    :cond_0
    new-instance v12, Ljava/net/URL;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "https://"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v11

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v12, Ljava/io/BufferedInputStream;

    invoke-direct {v12, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1a

    if-lt v0, v13, :cond_1

    new-instance v0, Ljava/io/BufferedOutputStream;

    const/4 v13, 0x3

    aget-object v13, p1, v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v14, v7, [Ljava/lang/String;

    invoke-static {v13, v14}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v13

    new-array v14, v7, [Ljava/nio/file/OpenOption;

    invoke-static {v13, v14}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v13, v0

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    const/16 v0, 0x400

    :try_start_3
    new-array v0, v0, [B

    const-wide/16 v14, 0x0

    :goto_2
    invoke-virtual {v12, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v8
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/4 v4, -0x1

    if-eq v8, v4, :cond_3

    move-object/from16 v16, v6

    int-to-long v5, v8

    add-long/2addr v14, v5

    long-to-float v5, v14

    int-to-float v6, v11

    div-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    :try_start_4
    invoke-direct {v1, v5}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->publishProgress(I)V

    if-eqz v13, :cond_2

    invoke-virtual {v13, v0, v7, v8}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    move-object/from16 v6, v16

    const/4 v4, 0x2

    const/4 v5, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v8, v12

    move-object/from16 v6, v16

    goto/16 :goto_17

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object/from16 v6, v16

    goto/16 :goto_9

    :catch_1
    move-exception v0

    move-object v5, v0

    move-object/from16 v6, v16

    goto/16 :goto_d

    :catch_2
    move-exception v0

    move-object v5, v0

    move-object/from16 v6, v16

    goto/16 :goto_11

    :cond_3
    move-object/from16 v16, v6

    :try_start_5
    iget-object v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v5, "echo \"[+] Download completed. It\'s time to install from storage.\""

    aget-object v6, p1, v7

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v0, v5, v6}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    move-object/from16 v6, v16

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v6, v16

    goto/16 :goto_1c

    :catch_4
    move-exception v0

    :try_start_7
    iget-object v3, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-object/from16 v6, v16

    :try_start_8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aget-object v2, p1, v7

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v3, v0, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_15

    :goto_3
    const/4 v0, 0x1

    goto/16 :goto_1b

    :catchall_1
    move-exception v0

    move-object/from16 v6, v16

    goto/16 :goto_16

    :catch_5
    move-exception v0

    move-object/from16 v6, v16

    goto :goto_4

    :catch_6
    move-exception v0

    move-object/from16 v6, v16

    goto :goto_5

    :catch_7
    move-exception v0

    move-object/from16 v6, v16

    goto :goto_6

    :catch_8
    move-exception v0

    :goto_4
    move-object v5, v0

    goto :goto_9

    :catch_9
    move-exception v0

    :goto_5
    move-object v5, v0

    goto/16 :goto_d

    :catch_a
    move-exception v0

    :goto_6
    move-object v5, v0

    goto/16 :goto_11

    :catchall_2
    move-exception v0

    move-object v3, v0

    move-object v8, v12

    goto :goto_7

    :catch_b
    move-exception v0

    move-object v5, v0

    goto :goto_8

    :catch_c
    move-exception v0

    move-object v5, v0

    goto :goto_c

    :catch_d
    move-exception v0

    move-object v5, v0

    goto/16 :goto_10

    :catchall_3
    move-exception v0

    move-object v3, v0

    const/4 v8, 0x0

    :goto_7
    const/4 v13, 0x0

    goto/16 :goto_17

    :catch_e
    move-exception v0

    move-object v5, v0

    const/4 v12, 0x0

    :goto_8
    const/4 v13, 0x0

    :goto_9
    :try_start_9
    iget-object v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "echo \"[-] Security Error: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aget-object v10, p1, v7

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v0, v8, v10}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v12, :cond_5

    :try_start_a
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_a

    :catch_f
    move-exception v0

    goto :goto_b

    :cond_5
    :goto_a
    if-eqz v13, :cond_8

    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_15

    goto/16 :goto_15

    :goto_b
    :try_start_b
    iget-object v8, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aget-object v10, p1, v7

    check-cast v10, Landroid/widget/TextView;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_15

    goto/16 :goto_14

    :catch_10
    move-exception v0

    move-object v5, v0

    const/4 v12, 0x0

    :goto_c
    const/4 v13, 0x0

    :goto_d
    :try_start_c
    iget-object v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "echo \"[-] I/O Error: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aget-object v10, p1, v7

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v0, v8, v10}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v12, :cond_6

    :try_start_d
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_e

    :catch_11
    move-exception v0

    goto :goto_f

    :cond_6
    :goto_e
    if-eqz v13, :cond_8

    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_15

    goto :goto_15

    :goto_f
    :try_start_e
    iget-object v8, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aget-object v10, p1, v7

    check-cast v10, Landroid/widget/TextView;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_15

    goto :goto_14

    :catch_12
    move-exception v0

    move-object v5, v0

    const/4 v12, 0x0

    :goto_10
    const/4 v13, 0x0

    :goto_11
    :try_start_f
    iget-object v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "echo \"[-] Invalid URL: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aget-object v10, p1, v7

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v0, v8, v10}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    if-eqz v12, :cond_7

    :try_start_10
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_12

    :catch_13
    move-exception v0

    goto :goto_13

    :cond_7
    :goto_12
    if-eqz v13, :cond_8

    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_15

    goto :goto_15

    :goto_13
    :try_start_11
    iget-object v8, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aget-object v10, p1, v7

    check-cast v10, Landroid/widget/TextView;

    :goto_14
    invoke-virtual {v8, v0, v10}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_15

    :cond_8
    :goto_15
    move-object v10, v5

    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    :goto_16
    move-object v3, v0

    move-object v8, v12

    :goto_17
    if-eqz v8, :cond_9

    :try_start_12
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_18

    :catch_14
    move-exception v0

    goto :goto_19

    :cond_9
    :goto_18
    if-eqz v13, :cond_a

    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_14
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_15

    goto :goto_1a

    :goto_19
    :try_start_13
    iget-object v5, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aget-object v2, p1, v7

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v5, v0, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I

    :cond_a
    :goto_1a
    throw v3

    :cond_b
    const/4 v0, 0x0

    :goto_1b
    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "echo \"[-] Download failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v7

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I

    const/4 v2, 0x1

    iput v2, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->resultCode:I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_15

    goto/16 :goto_1d

    :catch_15
    move-exception v0

    :goto_1c
    iget-object v2, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "echo \"[-] Unexpected error: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aget-object v3, p1, v7

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v2, v0, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I

    const/4 v2, 0x1

    iput v2, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->resultCode:I

    goto/16 :goto_1d

    :pswitch_3
    iget-object v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/chrootmgr -c \"remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v7

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I

    move-result v0

    iput v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->resultCode:I

    goto/16 :goto_1d

    :pswitch_4
    iget-object v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/chrootmgr -c \"backup "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v7

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I

    move-result v0

    iput v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->resultCode:I

    goto/16 :goto_1d

    :pswitch_5
    iget-object v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/chrootmgr -c \"restore "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v7

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I

    move-result v0

    iput v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->resultCode:I

    goto/16 :goto_1d

    :pswitch_6
    iget-object v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/killkali"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v7

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I

    move-result v0

    iput v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->resultCode:I

    goto :goto_1d

    :pswitch_7
    iget-object v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/bootkali_init"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v7

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I

    move-result v0

    iput v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->resultCode:I

    iget-object v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sleep 1 && "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_INITD_SCRIPT_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v7

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I

    goto :goto_1d

    :pswitch_8
    iget-object v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/chrootmgr -c \"status\" -p "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v7

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I

    move-result v0

    iput v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->resultCode:I

    :cond_c
    :goto_1d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs execute([Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method synthetic lambda$execute$0$com-offsec-nethunter-Executor-ChrootManagerExecutor([Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->doInBackground([Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setListener(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->listener:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;

    return-void
.end method
