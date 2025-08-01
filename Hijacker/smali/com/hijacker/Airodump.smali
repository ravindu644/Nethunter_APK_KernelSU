.class Lcom/hijacker/Airodump;
.super Ljava/lang/Object;
.source "Airodump.java"


# static fields
.field private static capFile:Ljava/lang/String; = null

.field static final cap_runnable:Ljava/lang/Runnable;

.field static cap_thread:Ljava/lang/Thread; = null

.field private static channel:I = 0x0

.field private static forWEP:Z = false

.field private static forWPA:Z = false

.field private static mac:Ljava/lang/String; = null

.field private static running:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hijacker/Airodump$1;

    invoke-direct {v0}, Lcom/hijacker/Airodump$1;-><init>()V

    sput-object v0, Lcom/hijacker/Airodump;->cap_runnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/hijacker/Airodump;->cap_runnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/hijacker/Airodump;->cap_thread:Ljava/lang/Thread;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/hijacker/Airodump;->forWPA:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/hijacker/Airodump;->forWEP:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hijacker/Airodump;->capFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/hijacker/Airodump;->capFile:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300()I
    .locals 1

    sget v0, Lcom/hijacker/Airodump;->channel:I

    return v0
.end method

.method public static addAP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V
    .locals 12

    invoke-static {p1}, Lcom/hijacker/AP;->getAPByMac(Ljava/lang/String;)Lcom/hijacker/AP;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/hijacker/AP;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/hijacker/AP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/hijacker/AP;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    :goto_0
    return-void
.end method

.method public static addST(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 8

    invoke-static {p0}, Lcom/hijacker/ST;->getSTByMac(Ljava/lang/String;)Lcom/hijacker/ST;

    move-result-object v0

    const-string v1, "na"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    move-object v3, p1

    if-nez v0, :cond_1

    new-instance v1, Lcom/hijacker/ST;

    move-object v2, p0

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/hijacker/ST;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v3

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/hijacker/ST;->update(Ljava/lang/String;IIILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method static getCapFile()Ljava/lang/String;
    .locals 1

    :goto_0
    sget-object v0, Lcom/hijacker/Airodump;->cap_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/hijacker/Airodump;->capFile:Ljava/lang/String;

    return-object v0
.end method

.method static getChannel()I
    .locals 1

    sget v0, Lcom/hijacker/Airodump;->channel:I

    return v0
.end method

.method static getMac()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hijacker/Airodump;->mac:Ljava/lang/String;

    return-object v0
.end method

.method static isRunning()Z
    .locals 1

    sget-boolean v0, Lcom/hijacker/Airodump;->running:Z

    return v0
.end method

.method public static native main(Ljava/lang/String;I)I
.end method

.method static reset()V
    .locals 1

    invoke-static {}, Lcom/hijacker/Airodump;->stop()V

    const/4 v0, 0x0

    sput v0, Lcom/hijacker/Airodump;->channel:I

    sput-boolean v0, Lcom/hijacker/Airodump;->forWPA:Z

    sput-boolean v0, Lcom/hijacker/Airodump;->forWEP:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/hijacker/Airodump;->mac:Ljava/lang/String;

    sput-object v0, Lcom/hijacker/Airodump;->capFile:Ljava/lang/String;

    return-void
.end method

.method static setAP(Lcom/hijacker/AP;)V
    .locals 1

    invoke-static {}, Lcom/hijacker/Airodump;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hijacker/AP;->mac:Ljava/lang/String;

    sput-object v0, Lcom/hijacker/Airodump;->mac:Ljava/lang/String;

    iget p0, p0, Lcom/hijacker/AP;->ch:I

    sput p0, Lcom/hijacker/Airodump;->channel:I

    return-void

    :cond_0
    const-string p0, "HIJACKER/Airodump"

    const-string v0, "Can\'t change setting while airodump is running"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Airodump is still running"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static setChannel(I)V
    .locals 1

    invoke-static {}, Lcom/hijacker/Airodump;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    sput p0, Lcom/hijacker/Airodump;->channel:I

    return-void

    :cond_0
    const-string p0, "HIJACKER/Airodump"

    const-string v0, "Can\'t change settings while airodump is running"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Airodump is still running"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static setForWEP(Z)V
    .locals 2

    invoke-static {}, Lcom/hijacker/Airodump;->isRunning()Z

    move-result v0

    const-string v1, "HIJACKER/Airodump"

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/hijacker/Airodump;->forWPA:Z

    if-nez v0, :cond_0

    sput-boolean p0, Lcom/hijacker/Airodump;->forWEP:Z

    return-void

    :cond_0
    const-string p0, "Can\'t set forWEP when forWPA is enabled"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Tried to set forWEP when forWPA is enabled"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "Can\'t change setting while airodump is running"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Airodump is still running"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static setForWPA(Z)V
    .locals 2

    invoke-static {}, Lcom/hijacker/Airodump;->isRunning()Z

    move-result v0

    const-string v1, "HIJACKER/Airodump"

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/hijacker/Airodump;->forWEP:Z

    if-nez v0, :cond_0

    sput-boolean p0, Lcom/hijacker/Airodump;->forWPA:Z

    return-void

    :cond_0
    const-string p0, "Can\'t set forWPA when forWEP is enabled"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Tried to set forWPA when forWEP is enabled"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "Can\'t change settings while airodump is running"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Airodump is still running"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static setMac(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/hijacker/Airodump;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p0, Lcom/hijacker/Airodump;->mac:Ljava/lang/String;

    return-void

    :cond_0
    const-string p0, "HIJACKER/Airodump"

    const-string v0, "Can\'t change settings while airodump is running"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Airodump is still running"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static start()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "su -c "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/hijacker/MainActivity;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hijacker/MainActivity;->airodump_dir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --update 1 --berlin 1 --band "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/hijacker/MainActivity;->band:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    sget v2, Lcom/hijacker/MainActivity;->band:I

    if-ne v2, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "a"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    sget v2, Lcom/hijacker/MainActivity;->band:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    sget v2, Lcom/hijacker/MainActivity;->band:I

    if-ne v2, v3, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "bg"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/hijacker/Airodump;->forWPA:Z

    const-string v3, "-w "

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hijacker/MainActivity;->cap_path:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/handshake "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget-boolean v2, Lcom/hijacker/Airodump;->forWEP:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "--ivs -w "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hijacker/MainActivity;->cap_path:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/wep_ivs "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget-boolean v2, Lcom/hijacker/MainActivity;->always_cap:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hijacker/MainActivity;->cap_path:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/cap "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    :goto_0
    sget v2, Lcom/hijacker/Airodump;->channel:I

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "--channel "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/hijacker/Airodump;->channel:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    sget-object v2, Lcom/hijacker/Airodump;->mac:Ljava/lang/String;

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "--bssid "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hijacker/Airodump;->mac:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hijacker/MainActivity;->iface:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/hijacker/MainActivity;->enable_on_airodump:Z

    if-eqz v1, :cond_9

    sget-object v1, Lcom/hijacker/MainActivity;->enable_monMode:Ljava/lang/String;

    invoke-static {v1}, Lcom/hijacker/Shell;->runOne(Ljava/lang/String;)V

    :cond_9
    invoke-static {}, Lcom/hijacker/Airodump;->stop()V

    sput-boolean v4, Lcom/hijacker/Airodump;->running:Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/hijacker/Airodump$2;

    invoke-direct {v2, v0}, Lcom/hijacker/Airodump$2;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    sget-boolean v0, Lcom/hijacker/Airodump;->forWPA:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/hijacker/Airodump;->forWEP:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/hijacker/MainActivity;->always_cap:Z

    if-eqz v0, :cond_a

    goto :goto_1

    :cond_a
    const/4 v0, 0x0

    sput-object v0, Lcom/hijacker/Airodump;->capFile:Ljava/lang/String;

    goto :goto_2

    :cond_b
    :goto_1
    sget-object v0, Lcom/hijacker/Airodump;->cap_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/hijacker/Airodump;->cap_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_c
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/hijacker/Airodump;->cap_runnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/hijacker/Airodump;->cap_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_2
    new-instance v0, Lcom/hijacker/Airodump$3;

    invoke-direct {v0}, Lcom/hijacker/Airodump$3;-><init>()V

    invoke-static {v0}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method static startClean()V
    .locals 0

    invoke-static {}, Lcom/hijacker/Airodump;->reset()V

    invoke-static {}, Lcom/hijacker/Airodump;->start()V

    return-void
.end method

.method static startClean(I)V
    .locals 0

    invoke-static {}, Lcom/hijacker/Airodump;->reset()V

    invoke-static {p0}, Lcom/hijacker/Airodump;->setChannel(I)V

    invoke-static {}, Lcom/hijacker/Airodump;->start()V

    return-void
.end method

.method static startClean(Lcom/hijacker/AP;)V
    .locals 0

    invoke-static {}, Lcom/hijacker/Airodump;->reset()V

    invoke-static {p0}, Lcom/hijacker/Airodump;->setAP(Lcom/hijacker/AP;)V

    invoke-static {}, Lcom/hijacker/Airodump;->start()V

    return-void
.end method

.method static stop()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/hijacker/MainActivity;->last_action:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/hijacker/Airodump;->running:Z

    new-instance v1, Lcom/hijacker/Airodump$4;

    invoke-direct {v1}, Lcom/hijacker/Airodump$4;-><init>()V

    invoke-static {v1}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/hijacker/MainActivity;->stopWPA()V

    invoke-static {}, Lcom/hijacker/Shell;->getFreeShell()Lcom/hijacker/Shell;

    move-result-object v1

    sget-boolean v2, Lcom/hijacker/MainActivity;->delete_extra:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/hijacker/Airodump;->forWPA:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/hijacker/Airodump;->forWEP:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/hijacker/MainActivity;->always_cap:Z

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/hijacker/Airodump;->getCapFile()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " rm -rf "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "*.csv"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "*.netxml"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " kill $("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pidof airodump-ng)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hijacker/Shell;->done()V

    invoke-static {}, Lcom/hijacker/AP;->saveAll()V

    invoke-static {}, Lcom/hijacker/ST;->saveAll()V

    new-instance v0, Lcom/hijacker/Airodump$5;

    invoke-direct {v0}, Lcom/hijacker/Airodump$5;-><init>()V

    invoke-static {v0}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method static writingToFile()Z
    .locals 1

    invoke-static {}, Lcom/hijacker/Airodump;->getCapFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
