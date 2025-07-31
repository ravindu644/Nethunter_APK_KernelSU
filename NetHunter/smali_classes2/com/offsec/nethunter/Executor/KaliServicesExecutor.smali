.class public Lcom/offsec/nethunter/Executor/KaliServicesExecutor;
.super Ljava/lang/Object;
.source "KaliServicesExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;
    }
.end annotation


# static fields
.field public static final ADDDATA:I = 0x4

.field public static final BACKUPDATA:I = 0x7

.field public static final DELETEDATA:I = 0x5

.field public static final EDITDATA:I = 0x3

.field public static final GETITEMSTATUS:I = 0x0

.field public static final MOVEDATA:I = 0x6

.field public static final RESETDATA:I = 0x9

.field public static final RESTOREDATA:I = 0x8

.field public static final START_SERVICE_FOR_ITEM:I = 0x1

.field public static final STOP_SERVICE_FOR_ITEM:I = 0x2

.field public static final UPDATE_RUNONCHROOTSTART_SCRIPTS:I = 0xa


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

.field private kaliServicesSQL:Lcom/offsec/nethunter/SQL/KaliServicesSQL;

.field private listener:Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;

.field private final mainHandler:Landroid/os/Handler;

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

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->mainHandler:Landroid/os/Handler;

    iput p1, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->actionCode:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->mainHandler:Landroid/os/Handler;

    iput p1, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->actionCode:I

    iput p2, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    return-void
.end method

.method public constructor <init>(IIILcom/offsec/nethunter/SQL/KaliServicesSQL;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->mainHandler:Landroid/os/Handler;

    iput p1, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->actionCode:I

    iput p2, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->originalPositionIndex:I

    iput p3, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->targetPositionIndex:I

    iput-object p4, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->kaliServicesSQL:Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    return-void
.end method

.method public constructor <init>(IILjava/util/ArrayList;Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/offsec/nethunter/SQL/KaliServicesSQL;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->mainHandler:Landroid/os/Handler;

    iput p1, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->actionCode:I

    iput p2, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    iput-object p3, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->kaliServicesSQL:Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    return-void
.end method

.method public constructor <init>(ILcom/offsec/nethunter/SQL/KaliServicesSQL;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->mainHandler:Landroid/os/Handler;

    iput p1, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->actionCode:I

    iput-object p2, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->kaliServicesSQL:Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V
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
            "Lcom/offsec/nethunter/SQL/KaliServicesSQL;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->mainHandler:Landroid/os/Handler;

    iput p1, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->actionCode:I

    iput-object p2, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->selectedPositionsIndex:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->selectedTargetIds:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->kaliServicesSQL:Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    return-void
.end method

.method private performTask(Ljava/util/List;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->actionCode:I

    const-string v3, "[+] Service is running"

    const-string v4, "[-] Service is NOT running"

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    if-eqz v1, :cond_6

    iget v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    iget-object v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->setServiceName(Ljava/lang/String;)V

    iget v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    iget-object v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->setCommandforStartService(Ljava/lang/String;)V

    iget v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    iget-object v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->setCommandforStopService(Ljava/lang/String;)V

    iget v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    iget-object v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->setCommandforCheckServiceStatus(Ljava/lang/String;)V

    iget v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    iget-object v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->setRunOnChrootStart(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->kaliServicesSQL:Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    iget v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->editData(Ljava/lang/Integer;Ljava/util/List;)V

    invoke-direct/range {p0 .. p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->updateRunOnChrootStartScripts(Ljava/util/List;)V

    goto/16 :goto_4

    :pswitch_2
    if-eqz v1, :cond_6

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    iget-object v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->kaliServicesSQL:Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    invoke-virtual {v2, v1}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->bindData(Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_4

    :pswitch_3
    if-eqz v1, :cond_6

    new-instance v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    iget v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->originalPositionIndex:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->getServiceName()Ljava/lang/String;

    move-result-object v11

    iget v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->originalPositionIndex:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->getCommandforStartService()Ljava/lang/String;

    move-result-object v12

    iget v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->originalPositionIndex:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->getCommandforStopService()Ljava/lang/String;

    move-result-object v13

    iget v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->originalPositionIndex:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->getCommandforCheckServiceStatus()Ljava/lang/String;

    move-result-object v14

    iget v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->originalPositionIndex:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->getRunOnChrootStart()Ljava/lang/String;

    move-result-object v15

    iget v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->originalPositionIndex:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->getStatus()Ljava/lang/String;

    move-result-object v16

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/offsec/nethunter/models/KaliServicesModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->originalPositionIndex:I

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->originalPositionIndex:I

    iget v4, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->targetPositionIndex:I

    if-ge v3, v4, :cond_0

    sub-int/2addr v4, v9

    iput v4, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->targetPositionIndex:I

    :cond_0
    iget v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->targetPositionIndex:I

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->kaliServicesSQL:Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    iget v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->originalPositionIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->targetPositionIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->moveData(Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto/16 :goto_4

    :pswitch_4
    if-eqz v1, :cond_6

    iget-object v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->selectedPositionsIndex:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->selectedPositionsIndex:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->kaliServicesSQL:Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    iget-object v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->selectedTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->deleteData(Ljava/util/List;)V

    goto/16 :goto_4

    :pswitch_5
    if-eqz v1, :cond_6

    iget v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    sub-int/2addr v2, v9

    new-instance v3, Lcom/offsec/nethunter/models/KaliServicesModel;

    iget-object v4, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    iget-object v4, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Ljava/lang/String;

    iget-object v4, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    iget-object v4, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Ljava/lang/String;

    iget-object v4, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    const-string v16, ""

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Lcom/offsec/nethunter/models/KaliServicesModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->updateRunOnChrootStartScripts(Ljava/util/List;)V

    :cond_2
    iget-object v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->kaliServicesSQL:Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    iget v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    iget-object v4, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->addData(ILjava/util/List;)V

    goto/16 :goto_4

    :pswitch_6
    if-eqz v1, :cond_6

    iget v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    iget-object v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->setServiceName(Ljava/lang/String;)V

    iget v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    iget-object v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->setCommandforStartService(Ljava/lang/String;)V

    iget v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    iget-object v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->setCommandforStopService(Ljava/lang/String;)V

    iget v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    iget-object v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->setCommandforCheckServiceStatus(Ljava/lang/String;)V

    iget v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    iget-object v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->setRunOnChrootStart(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->updateRunOnChrootStartScripts(Ljava/util/List;)V

    iget-object v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->kaliServicesSQL:Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    iget v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->editData(Ljava/lang/Integer;Ljava/util/List;)V

    goto/16 :goto_4

    :pswitch_7
    if-eqz v1, :cond_6

    iget v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    new-instance v5, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v5}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iget v6, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v6}, Lcom/offsec/nethunter/models/KaliServicesModel;->getCommandforStopService()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootReturnValue(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    move-object v3, v4

    :cond_3
    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->setStatus(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_8
    if-eqz v1, :cond_6

    iget v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    new-instance v5, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v5}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iget v6, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v6}, Lcom/offsec/nethunter/models/KaliServicesModel;->getCommandforStartService()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootReturnValue(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->setStatus(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_9
    if-eqz v1, :cond_6

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/offsec/nethunter/models/KaliServicesModel;

    new-instance v6, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v6}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/offsec/nethunter/utils/NhPaths;->BUSYBOX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ps | grep -v grep | grep -w \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/offsec/nethunter/models/KaliServicesModel;->getCommandforCheckServiceStatus()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootReturnValue(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    move-object v6, v3

    goto :goto_3

    :cond_5
    move-object v6, v4

    :goto_3
    invoke-virtual {v5, v6}, Lcom/offsec/nethunter/models/KaliServicesModel;->setStatus(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    :goto_4
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateRunOnChrootStartScripts(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/KaliServicesModel;->getRunOnChrootStart()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/KaliServicesModel;->getCommandforStartService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {p1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cat << \'EOF\' > "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/kaliservices\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\nEOF"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/offsec/nethunter/Executor/KaliServicesExecutor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/Executor/KaliServicesExecutor;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$execute$0$com-offsec-nethunter-Executor-KaliServicesExecutor(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->listener:Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;->onTaskFinished(Ljava/util/List;)V

    :cond_0
    const/4 p1, 0x0

    sput-boolean p1, Lcom/offsec/nethunter/ChrootManagerFragment;->isExecutorRunning:Z

    return-void
.end method

.method synthetic lambda$execute$1$com-offsec-nethunter-Executor-KaliServicesExecutor(Ljava/util/List;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->performTask(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/offsec/nethunter/Executor/KaliServicesExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/Executor/KaliServicesExecutor;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setListener(Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->listener:Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;

    return-void
.end method
