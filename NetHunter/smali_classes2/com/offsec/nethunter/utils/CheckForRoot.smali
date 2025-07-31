.class public Lcom/offsec/nethunter/utils/CheckForRoot;
.super Ljava/lang/Object;
.source "CheckForRoot.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBusyboxInstalled()Z
    .locals 1

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->BUSYBOX:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isRoot()Z
    .locals 2

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    const-string v1, "su -c \'id\'"

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->Executer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
