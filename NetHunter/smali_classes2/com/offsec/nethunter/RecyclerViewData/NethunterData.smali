.class public Lcom/offsec/nethunter/RecyclerViewData/NethunterData;
.super Ljava/lang/Object;
.source "NethunterData.java"


# static fields
.field private static instance:Lcom/offsec/nethunter/RecyclerViewData/NethunterData; = null

.field public static isDataInitiated:Z = false


# instance fields
.field private final copyOfNethunterModelListFull:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/NethunterModel;",
            ">;"
        }
    .end annotation
.end field

.field private final data:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/NethunterModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final nethunterModelArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/offsec/nethunter/models/NethunterModel;",
            ">;"
        }
    .end annotation
.end field

.field public nethunterModelListFull:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/NethunterModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelArrayList:Ljava/util/ArrayList;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->data:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->copyOfNethunterModelListFull:Ljava/util/List;

    return-void
.end method

.method private getInitCopyOfNethunterModelListFull()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/NethunterModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->copyOfNethunterModelListFull:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->copyOfNethunterModelListFull:Ljava/util/List;

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->copyOfNethunterModelListFull:Ljava/util/List;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;
    .locals 2

    const-class v0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->instance:Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    if-nez v1, :cond_0

    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    invoke-direct {v1}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;-><init>()V

    sput-object v1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->instance:Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    :cond_0
    sget-object v1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->instance:Lcom/offsec/nethunter/RecyclerViewData/NethunterData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addData(ILjava/util/List;Lcom/offsec/nethunter/SQL/NethunterSQL;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/offsec/nethunter/SQL/NethunterSQL;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/offsec/nethunter/Executor/NethunterExecutor;

    const/4 v1, 0x3

    check-cast p2, Ljava/util/ArrayList;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/offsec/nethunter/Executor/NethunterExecutor;-><init>(IILjava/util/ArrayList;Lcom/offsec/nethunter/SQL/NethunterSQL;)V

    new-instance p1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$4;

    invoke-direct {p1, p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$4;-><init>(Lcom/offsec/nethunter/RecyclerViewData/NethunterData;)V

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->setListener(Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInitCopyOfNethunterModelListFull()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->execute(Ljava/util/List;)V

    return-void
.end method

.method public backupData(Lcom/offsec/nethunter/SQL/NethunterSQL;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/SQL/NethunterSQL;->backupData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deleteData(Ljava/util/List;Ljava/util/List;Lcom/offsec/nethunter/SQL/NethunterSQL;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/offsec/nethunter/SQL/NethunterSQL;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/offsec/nethunter/Executor/NethunterExecutor;

    check-cast p1, Ljava/util/ArrayList;

    check-cast p2, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/offsec/nethunter/Executor/NethunterExecutor;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/offsec/nethunter/SQL/NethunterSQL;)V

    new-instance p1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$5;

    invoke-direct {p1, p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$5;-><init>(Lcom/offsec/nethunter/RecyclerViewData/NethunterData;)V

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->setListener(Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInitCopyOfNethunterModelListFull()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->execute(Ljava/util/List;)V

    return-void
.end method

.method public editData(ILjava/util/List;Lcom/offsec/nethunter/SQL/NethunterSQL;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/offsec/nethunter/SQL/NethunterSQL;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/offsec/nethunter/Executor/NethunterExecutor;

    const/4 v1, 0x2

    check-cast p2, Ljava/util/ArrayList;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/offsec/nethunter/Executor/NethunterExecutor;-><init>(IILjava/util/ArrayList;Lcom/offsec/nethunter/SQL/NethunterSQL;)V

    new-instance p1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$3;

    invoke-direct {p1, p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$3;-><init>(Lcom/offsec/nethunter/RecyclerViewData/NethunterData;)V

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->setListener(Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInitCopyOfNethunterModelListFull()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->execute(Ljava/util/List;)V

    return-void
.end method

.method public getNethunterModels()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/NethunterModel;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->data:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getNethunterModels(Landroid/content/Context;)Landroidx/lifecycle/MutableLiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/NethunterModel;",
            ">;>;"
        }
    .end annotation

    sget-boolean v0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->isDataInitiated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->data:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lcom/offsec/nethunter/SQL/NethunterSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/NethunterSQL;

    move-result-object p1

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lcom/offsec/nethunter/SQL/NethunterSQL;->bindData(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->data:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    const/4 p1, 0x1

    sput-boolean p1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->isDataInitiated:Z

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->data:Landroidx/lifecycle/MutableLiveData;

    return-object p1
.end method

.method public moveData(IILcom/offsec/nethunter/SQL/NethunterSQL;)V
    .locals 2

    new-instance v0, Lcom/offsec/nethunter/Executor/NethunterExecutor;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/offsec/nethunter/Executor/NethunterExecutor;-><init>(IIILcom/offsec/nethunter/SQL/NethunterSQL;)V

    new-instance p1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$6;

    invoke-direct {p1, p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$6;-><init>(Lcom/offsec/nethunter/RecyclerViewData/NethunterData;)V

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->setListener(Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInitCopyOfNethunterModelListFull()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->execute(Ljava/util/List;)V

    return-void
.end method

.method public refreshData()V
    .locals 2

    new-instance v0, Lcom/offsec/nethunter/Executor/NethunterExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;-><init>(I)V

    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$1;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$1;-><init>(Lcom/offsec/nethunter/RecyclerViewData/NethunterData;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->setListener(Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInitCopyOfNethunterModelListFull()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->execute(Ljava/util/List;)V

    return-void
.end method

.method public resetData(Lcom/offsec/nethunter/SQL/NethunterSQL;)V
    .locals 2

    invoke-virtual {p1}, Lcom/offsec/nethunter/SQL/NethunterSQL;->resetData()V

    new-instance v0, Lcom/offsec/nethunter/Executor/NethunterExecutor;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;-><init>(ILcom/offsec/nethunter/SQL/NethunterSQL;)V

    new-instance p1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$8;

    invoke-direct {p1, p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$8;-><init>(Lcom/offsec/nethunter/RecyclerViewData/NethunterData;)V

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->setListener(Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInitCopyOfNethunterModelListFull()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->execute(Ljava/util/List;)V

    return-void
.end method

.method public restoreData(Lcom/offsec/nethunter/SQL/NethunterSQL;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/SQL/NethunterSQL;->restoreData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p2, Lcom/offsec/nethunter/Executor/NethunterExecutor;

    const/4 v0, 0x7

    invoke-direct {p2, v0, p1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;-><init>(ILcom/offsec/nethunter/SQL/NethunterSQL;)V

    new-instance p1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$7;

    invoke-direct {p1, p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$7;-><init>(Lcom/offsec/nethunter/RecyclerViewData/NethunterData;)V

    invoke-virtual {p2, p1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->setListener(Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInitCopyOfNethunterModelListFull()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->execute(Ljava/util/List;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public runCommandforItem(I)V
    .locals 2

    new-instance v0, Lcom/offsec/nethunter/Executor/NethunterExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;-><init>(II)V

    new-instance p1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$2;

    invoke-direct {p1, p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$2;-><init>(Lcom/offsec/nethunter/RecyclerViewData/NethunterData;)V

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->setListener(Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInitCopyOfNethunterModelListFull()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->execute(Ljava/util/List;)V

    return-void
.end method

.method public updateNethunterModelListFull(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/NethunterModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
