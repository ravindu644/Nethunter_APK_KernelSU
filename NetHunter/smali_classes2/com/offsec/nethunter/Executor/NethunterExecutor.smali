.class public Lcom/offsec/nethunter/Executor/NethunterExecutor;
.super Ljava/lang/Object;
.source "NethunterExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;
    }
.end annotation


# static fields
.field public static final ADDDATA:I = 0x3

.field public static final BACKUPDATA:I = 0x6

.field public static final DELETEDATA:I = 0x4

.field public static final EDITDATA:I = 0x2

.field public static final GETITEMRESULTS:I = 0x0

.field public static final MOVEDATA:I = 0x5

.field public static final RESETDATA:I = 0x8

.field public static final RESTOREDATA:I = 0x7

.field public static final RUNCMDFORITEM:I = 0x1


# instance fields
.field private final actionCode:I

.field private dataArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private listener:Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;

.field private final mainHandler:Landroid/os/Handler;

.field private nethunterSQL:Lcom/offsec/nethunter/SQL/NethunterSQL;

.field private originalPositionIndex:I

.field private position:I

.field private selectedPositionsIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selectedTargetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private targetPositionIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->mainHandler:Landroid/os/Handler;

    iput p1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->actionCode:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->mainHandler:Landroid/os/Handler;

    iput p1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->actionCode:I

    iput p2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->position:I

    return-void
.end method

.method public constructor <init>(IIILcom/offsec/nethunter/SQL/NethunterSQL;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->mainHandler:Landroid/os/Handler;

    iput p1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->actionCode:I

    iput p2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->originalPositionIndex:I

    iput p3, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->targetPositionIndex:I

    iput-object p4, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->nethunterSQL:Lcom/offsec/nethunter/SQL/NethunterSQL;

    return-void
.end method

.method public constructor <init>(IILjava/util/ArrayList;Lcom/offsec/nethunter/SQL/NethunterSQL;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/offsec/nethunter/SQL/NethunterSQL;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->mainHandler:Landroid/os/Handler;

    iput p1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->actionCode:I

    iput p2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->position:I

    iput-object p3, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->nethunterSQL:Lcom/offsec/nethunter/SQL/NethunterSQL;

    return-void
.end method

.method public constructor <init>(ILcom/offsec/nethunter/SQL/NethunterSQL;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->mainHandler:Landroid/os/Handler;

    iput p1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->actionCode:I

    iput-object p2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->nethunterSQL:Lcom/offsec/nethunter/SQL/NethunterSQL;

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/offsec/nethunter/SQL/NethunterSQL;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/offsec/nethunter/SQL/NethunterSQL;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->mainHandler:Landroid/os/Handler;

    iput p1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->actionCode:I

    iput-object p2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->selectedPositionsIndex:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->selectedTargetIds:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->nethunterSQL:Lcom/offsec/nethunter/SQL/NethunterSQL;

    return-void
.end method

.method private performTask(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/NethunterModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/NethunterModel;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->actionCode:I

    const-string v1, "1"

    const-string v2, "\\n"

    if-eqz v0, :cond_a

    const/4 v3, 0x1

    if-eq v0, v3, :cond_9

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->nethunterSQL:Lcom/offsec/nethunter/SQL/NethunterSQL;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/SQL/NethunterSQL;->bindData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    :cond_1
    if-eqz p1, :cond_c

    iget v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->originalPositionIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/NethunterModel;

    iget v1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->originalPositionIndex:I

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->originalPositionIndex:I

    iget v2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->targetPositionIndex:I

    if-ge v1, v2, :cond_2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->targetPositionIndex:I

    :cond_2
    iget v1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->targetPositionIndex:I

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->nethunterSQL:Lcom/offsec/nethunter/SQL/NethunterSQL;

    iget v1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->originalPositionIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->targetPositionIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/offsec/nethunter/SQL/NethunterSQL;->moveData(Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto/16 :goto_3

    :cond_3
    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->selectedPositionsIndex:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->selectedPositionsIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->nethunterSQL:Lcom/offsec/nethunter/SQL/NethunterSQL;

    iget-object v1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->selectedTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/SQL/NethunterSQL;->deleteData(Ljava/util/List;)V

    goto/16 :goto_3

    :cond_5
    if-eqz p1, :cond_c

    iget v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->position:I

    sub-int/2addr v0, v3

    new-instance v12, Lcom/offsec/nethunter/models/NethunterModel;

    iget-object v6, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    iget-object v2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    iget-object v2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    iget-object v2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    iget-object v2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/offsec/nethunter/models/NethunterModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {p1, v0, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->position:I

    sub-int/2addr v0, v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/NethunterModel;

    new-instance v1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iget-object v2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/models/NethunterModel;->setResult([Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->nethunterSQL:Lcom/offsec/nethunter/SQL/NethunterSQL;

    iget v1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->position:I

    iget-object v2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/offsec/nethunter/SQL/NethunterSQL;->addData(ILjava/util/List;)V

    goto/16 :goto_3

    :cond_7
    if-eqz p1, :cond_c

    iget v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/NethunterModel;

    iget-object v6, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/models/NethunterModel;->setTitle(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/models/NethunterModel;->setCommand(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/models/NethunterModel;->setDelimiter(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/models/NethunterModel;->setRunOnCreate(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iget-object v2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/models/NethunterModel;->setResult([Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->nethunterSQL:Lcom/offsec/nethunter/SQL/NethunterSQL;

    iget v1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/offsec/nethunter/SQL/NethunterSQL;->editData(Ljava/lang/Integer;Ljava/util/List;)V

    goto :goto_3

    :cond_9
    if-eqz p1, :cond_c

    iget v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/NethunterModel;

    new-instance v1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iget v3, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->position:I

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/offsec/nethunter/models/NethunterModel;

    invoke-virtual {v3}, Lcom/offsec/nethunter/models/NethunterModel;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/models/NethunterModel;->setResult([Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/offsec/nethunter/models/NethunterModel;

    invoke-virtual {v3}, Lcom/offsec/nethunter/models/NethunterModel;->getRunOnCreate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v4, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v4}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    invoke-virtual {v3}, Lcom/offsec/nethunter/models/NethunterModel;->getCommand()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_b
    const-string v4, "Please click RUN button manually."

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v4}, Lcom/offsec/nethunter/models/NethunterModel;->setResult([Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    :goto_3
    return-object p1
.end method


# virtual methods
.method public execute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/NethunterModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->listener:Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->mainHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/offsec/nethunter/Executor/NethunterExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/offsec/nethunter/Executor/NethunterExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/offsec/nethunter/Executor/NethunterExecutor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/Executor/NethunterExecutor$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/Executor/NethunterExecutor;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$execute$0$com-offsec-nethunter-Executor-NethunterExecutor(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->listener:Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;->onFinished(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$execute$1$com-offsec-nethunter-Executor-NethunterExecutor(Ljava/util/List;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->performTask(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/offsec/nethunter/Executor/NethunterExecutor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/Executor/NethunterExecutor$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/Executor/NethunterExecutor;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setListener(Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->listener:Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;

    return-void
.end method
