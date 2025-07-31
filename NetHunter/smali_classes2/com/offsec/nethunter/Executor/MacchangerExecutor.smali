.class public Lcom/offsec/nethunter/Executor/MacchangerExecutor;
.super Ljava/lang/Object;
.source "MacchangerExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/Executor/MacchangerExecutor$MacchangerExecutorListener;
    }
.end annotation


# static fields
.field public static final GETHOSTNAME:I = 0x0

.field public static final GETORIGINMAC:I = 0x3

.field public static final SETHOSTNAME:I = 0x1

.field public static final SETMAC:I = 0x2


# instance fields
.field private final actionCode:I

.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private listener:Lcom/offsec/nethunter/Executor/MacchangerExecutor$MacchangerExecutorListener;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/MacchangerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/MacchangerExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/MacchangerExecutor;->mainHandler:Landroid/os/Handler;

    iput p1, p0, Lcom/offsec/nethunter/Executor/MacchangerExecutor;->actionCode:I

    return-void
.end method


# virtual methods
.method public varargs execute([Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/MacchangerExecutor;->listener:Lcom/offsec/nethunter/Executor/MacchangerExecutor$MacchangerExecutorListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/offsec/nethunter/Executor/MacchangerExecutor;->mainHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/offsec/nethunter/Executor/MacchangerExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/offsec/nethunter/Executor/MacchangerExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/Executor/MacchangerExecutor$MacchangerExecutorListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/MacchangerExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/offsec/nethunter/Executor/MacchangerExecutor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/Executor/MacchangerExecutor$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/Executor/MacchangerExecutor;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$execute$0$com-offsec-nethunter-Executor-MacchangerExecutor(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/MacchangerExecutor;->listener:Lcom/offsec/nethunter/Executor/MacchangerExecutor$MacchangerExecutorListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/offsec/nethunter/Executor/MacchangerExecutor$MacchangerExecutorListener;->onFinished(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$execute$1$com-offsec-nethunter-Executor-MacchangerExecutor([Ljava/lang/String;)V
    .locals 5

    iget v0, p0, Lcom/offsec/nethunter/Executor/MacchangerExecutor;->actionCode:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/MacchangerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_BIN_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/macchanger -s "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/offsec/nethunter/utils/NhPaths;->BUSYBOX:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " awk \'/Permanent/ {print $3}\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1
    aget-object v0, p1, v2

    const-string v3, "^wlan.*$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/MacchangerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/changemac "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootReturnValue(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/MacchangerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_BIN_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/macchanger "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -m "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootReturnValue(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/MacchangerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "setprop net.hostname "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p1, p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/utils/ShellExecuter;->Executer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/offsec/nethunter/Executor/MacchangerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v0, "getprop net.hostname"

    invoke-virtual {p1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->Executer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/MacchangerExecutor;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/offsec/nethunter/Executor/MacchangerExecutor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/Executor/MacchangerExecutor$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/Executor/MacchangerExecutor;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setListener(Lcom/offsec/nethunter/Executor/MacchangerExecutor$MacchangerExecutorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/Executor/MacchangerExecutor;->listener:Lcom/offsec/nethunter/Executor/MacchangerExecutor$MacchangerExecutorListener;

    return-void
.end method
