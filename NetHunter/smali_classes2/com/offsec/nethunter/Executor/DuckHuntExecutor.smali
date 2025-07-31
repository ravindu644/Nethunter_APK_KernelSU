.class public Lcom/offsec/nethunter/Executor/DuckHuntExecutor;
.super Ljava/lang/Object;
.source "DuckHuntExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/Executor/DuckHuntExecutor$DuckHuntExecutorListener;
    }
.end annotation


# static fields
.field public static final ATTACK:Ljava/lang/Object;


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private listener:Lcom/offsec/nethunter/Executor/DuckHuntExecutor$DuckHuntExecutorListener;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/Executor/DuckHuntExecutor;->ATTACK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/DuckHuntExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/DuckHuntExecutor;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private varargs performTask(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_2

    :cond_0
    aget-object p1, p2, v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_1
    aget-object p1, p2, v2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    aget-object p1, p2, v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const-string p1, ""

    goto :goto_2

    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "/dev/hidg0"

    const-string v4, "/dev/hidg1"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_5

    aget-object v5, v2, v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "stat -c \'%a\' "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "666"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    aget-object p2, p2, v3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    :goto_2
    return-object p1
.end method


# virtual methods
.method public varargs execute(I[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/DuckHuntExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/offsec/nethunter/Executor/DuckHuntExecutor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/offsec/nethunter/Executor/DuckHuntExecutor$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/Executor/DuckHuntExecutor;I[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$execute$0$com-offsec-nethunter-Executor-DuckHuntExecutor(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/DuckHuntExecutor;->listener:Lcom/offsec/nethunter/Executor/DuckHuntExecutor$DuckHuntExecutorListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/offsec/nethunter/Executor/DuckHuntExecutor$DuckHuntExecutorListener;->onTaskFinished(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$execute$1$com-offsec-nethunter-Executor-DuckHuntExecutor(I[Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/offsec/nethunter/Executor/DuckHuntExecutor;->performTask(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/offsec/nethunter/Executor/DuckHuntExecutor;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/offsec/nethunter/Executor/DuckHuntExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/offsec/nethunter/Executor/DuckHuntExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/Executor/DuckHuntExecutor;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setListener(Lcom/offsec/nethunter/Executor/DuckHuntExecutor$DuckHuntExecutorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/Executor/DuckHuntExecutor;->listener:Lcom/offsec/nethunter/Executor/DuckHuntExecutor$DuckHuntExecutorListener;

    return-void
.end method
