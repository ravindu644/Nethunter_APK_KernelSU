.class public Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;
.super Ljava/lang/Object;
.source "KaliServicesData.java"


# static fields
.field private static instance:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData; = null

.field public static isDataInitiated:Z = false


# instance fields
.field private final copyOfKaliServicesModelListFull:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;"
        }
    .end annotation
.end field

.field private final data:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final kaliServicesModelArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;"
        }
    .end annotation
.end field

.field public kaliServicesModelListFull:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
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

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelArrayList:Ljava/util/ArrayList;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->data:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->copyOfKaliServicesModelListFull:Ljava/util/List;

    return-void
.end method

.method private getInitCopyOfKaliServicesModelListFull()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->copyOfKaliServicesModelListFull:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->copyOfKaliServicesModelListFull:Ljava/util/List;

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->copyOfKaliServicesModelListFull:Ljava/util/List;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;
    .locals 2

    const-class v0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->instance:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    if-nez v1, :cond_0

    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    invoke-direct {v1}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;-><init>()V

    sput-object v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->instance:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    :cond_0
    sget-object v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->instance:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;
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
.method public addData(ILjava/util/List;Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/offsec/nethunter/SQL/KaliServicesSQL;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;

    const/4 v1, 0x4

    check-cast p2, Ljava/util/ArrayList;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;-><init>(IILjava/util/ArrayList;Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V

    new-instance p1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$5;

    invoke-direct {p1, p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$5;-><init>(Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;)V

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->setListener(Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInitCopyOfKaliServicesModelListFull()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->execute(Ljava/util/List;)V

    return-void
.end method

.method public backupData(Lcom/offsec/nethunter/SQL/KaliServicesSQL;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->backupData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deleteData(Ljava/util/List;Ljava/util/List;Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V
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
            "Lcom/offsec/nethunter/SQL/KaliServicesSQL;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;

    check-cast p1, Ljava/util/ArrayList;

    check-cast p2, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V

    new-instance p1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$6;

    invoke-direct {p1, p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$6;-><init>(Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;)V

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->setListener(Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInitCopyOfKaliServicesModelListFull()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->execute(Ljava/util/List;)V

    return-void
.end method

.method public editData(ILjava/util/List;Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/offsec/nethunter/SQL/KaliServicesSQL;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;

    const/4 v1, 0x3

    check-cast p2, Ljava/util/ArrayList;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;-><init>(IILjava/util/ArrayList;Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V

    new-instance p1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$4;

    invoke-direct {p1, p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$4;-><init>(Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;)V

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->setListener(Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInitCopyOfKaliServicesModelListFull()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->execute(Ljava/util/List;)V

    return-void
.end method

.method public getKaliServicesModels()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->data:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getKaliServicesModels(Landroid/content/Context;)Landroidx/lifecycle/MutableLiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;>;"
        }
    .end annotation

    sget-boolean v0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->isDataInitiated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->data:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    move-result-object p1

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->bindData(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->data:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    const/4 p1, 0x1

    sput-boolean p1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->isDataInitiated:Z

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->data:Landroidx/lifecycle/MutableLiveData;

    return-object p1
.end method

.method public moveData(IILcom/offsec/nethunter/SQL/KaliServicesSQL;)V
    .locals 2

    new-instance v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;-><init>(IIILcom/offsec/nethunter/SQL/KaliServicesSQL;)V

    new-instance p1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$7;

    invoke-direct {p1, p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$7;-><init>(Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;)V

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->setListener(Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInitCopyOfKaliServicesModelListFull()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->execute(Ljava/util/List;)V

    return-void
.end method

.method public refreshData()V
    .locals 2

    new-instance v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;-><init>(I)V

    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$1;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$1;-><init>(Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->setListener(Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInitCopyOfKaliServicesModelListFull()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->execute(Ljava/util/List;)V

    return-void
.end method

.method public resetData(Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V
    .locals 2

    invoke-virtual {p1}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->resetData()V

    new-instance v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;-><init>(ILcom/offsec/nethunter/SQL/KaliServicesSQL;)V

    new-instance p1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$9;

    invoke-direct {p1, p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$9;-><init>(Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;)V

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->setListener(Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInitCopyOfKaliServicesModelListFull()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->execute(Ljava/util/List;)V

    return-void
.end method

.method public restoreData(Lcom/offsec/nethunter/SQL/KaliServicesSQL;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->restoreData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p2, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;

    const/16 v0, 0x8

    invoke-direct {p2, v0, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;-><init>(ILcom/offsec/nethunter/SQL/KaliServicesSQL;)V

    new-instance p1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$8;

    invoke-direct {p1, p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$8;-><init>(Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;)V

    invoke-virtual {p2, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->setListener(Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInitCopyOfKaliServicesModelListFull()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->execute(Ljava/util/List;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public startServiceforItem(ILandroidx/appcompat/widget/SwitchCompat;Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;-><init>(II)V

    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$2;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$2;-><init>(Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;Landroidx/appcompat/widget/SwitchCompat;ILandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->setListener(Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInitCopyOfKaliServicesModelListFull()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->execute(Ljava/util/List;)V

    return-void
.end method

.method public stopServiceforItem(ILandroidx/appcompat/widget/SwitchCompat;Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;-><init>(II)V

    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;-><init>(Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;Landroidx/appcompat/widget/SwitchCompat;ILandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->setListener(Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInitCopyOfKaliServicesModelListFull()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->execute(Ljava/util/List;)V

    return-void
.end method

.method public updateKaliServicesModelListFull(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public updateRunOnChrootStartServices(ILjava/util/List;Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/offsec/nethunter/SQL/KaliServicesSQL;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;

    const/16 v1, 0xa

    check-cast p2, Ljava/util/ArrayList;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;-><init>(IILjava/util/ArrayList;Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V

    new-instance p1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$10;

    invoke-direct {p1, p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$10;-><init>(Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;)V

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->setListener(Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInitCopyOfKaliServicesModelListFull()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->execute(Ljava/util/List;)V

    return-void
.end method
