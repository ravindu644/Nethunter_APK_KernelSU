.class public Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;
.super Ljava/lang/Object;
.source "CustomCommandsExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$CustomCommandsExecutorListener;
    }
.end annotation


# static fields
.field public static final ADDDATA:I = 0x2

.field public static final ANDROID_CMD_FAIL:I = 0x65

.field public static final ANDROID_CMD_SUCCESS:I = 0x64

.field public static final BACKUPDATA:I = 0x5

.field public static final DELETEDATA:I = 0x3

.field public static final EDITDATA:I = 0x1

.field public static final KALI_CMD_FAIL:I = 0x67

.field public static final KALI_CMD_SUCCESS:I = 0x66

.field public static final MOVEDATA:I = 0x4

.field public static final RESETDATA:I = 0x7

.field public static final RESTOREDATA:I = 0x6

.field public static final RUNCMD:I

.field private static context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final actionCode:I

.field private customCommandsSQL:Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

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

.field private listener:Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$CustomCommandsExecutorListener;

.field private final mainHandler:Landroid/os/Handler;

.field private originalPositionIndex:I

.field private position:I

.field private returnValue:I

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
.method public constructor <init>(IIILcom/offsec/nethunter/SQL/CustomCommandsSQL;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->mainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->returnValue:I

    iput p1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->actionCode:I

    iput p2, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->originalPositionIndex:I

    iput p3, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->targetPositionIndex:I

    iput-object p4, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->customCommandsSQL:Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    return-void
.end method

.method public constructor <init>(IILandroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->mainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->returnValue:I

    iput p1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->actionCode:I

    iput p2, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->context:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(IILjava/util/ArrayList;Lcom/offsec/nethunter/SQL/CustomCommandsSQL;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/offsec/nethunter/SQL/CustomCommandsSQL;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->mainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->returnValue:I

    iput p1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->actionCode:I

    iput p2, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    iput-object p3, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->dataArrayList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->customCommandsSQL:Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    return-void
.end method

.method public constructor <init>(ILcom/offsec/nethunter/SQL/CustomCommandsSQL;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->mainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->returnValue:I

    iput p1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->actionCode:I

    iput-object p2, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->customCommandsSQL:Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/offsec/nethunter/SQL/CustomCommandsSQL;)V
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
            "Lcom/offsec/nethunter/SQL/CustomCommandsSQL;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->mainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->returnValue:I

    iput p1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->actionCode:I

    iput-object p2, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->selectedPositionsIndex:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->selectedTargetIds:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->customCommandsSQL:Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    return-void
.end method

.method private performTask(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/CustomCommandsModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/CustomCommandsModel;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->actionCode:I

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eq v0, v5, :cond_7

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_3

    if-eq v0, v4, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->customCommandsSQL:Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->bindData(Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_3

    :cond_1
    if-eqz p1, :cond_e

    new-instance v0, Lcom/offsec/nethunter/models/CustomCommandsModel;

    iget v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->originalPositionIndex:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getCommandLabel()Ljava/lang/String;

    move-result-object v7

    iget v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->originalPositionIndex:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getCommand()Ljava/lang/String;

    move-result-object v8

    iget v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->originalPositionIndex:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getRuntimeEnv()Ljava/lang/String;

    move-result-object v9

    iget v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->originalPositionIndex:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getExecutionMode()Ljava/lang/String;

    move-result-object v10

    iget v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->originalPositionIndex:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getRunOnBoot()Ljava/lang/String;

    move-result-object v11

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/offsec/nethunter/models/CustomCommandsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->originalPositionIndex:I

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->originalPositionIndex:I

    iget v2, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->targetPositionIndex:I

    if-ge v1, v2, :cond_2

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->targetPositionIndex:I

    :cond_2
    iget v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->targetPositionIndex:I

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->customCommandsSQL:Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    iget v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->originalPositionIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->targetPositionIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->moveData(Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto/16 :goto_3

    :cond_3
    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->selectedPositionsIndex:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->selectedPositionsIndex:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->customCommandsSQL:Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    iget-object v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->selectedTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->deleteData(Ljava/util/List;)V

    goto/16 :goto_3

    :cond_5
    if-eqz p1, :cond_e

    iget v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    sub-int/2addr v0, v5

    new-instance v12, Lcom/offsec/nethunter/models/CustomCommandsModel;

    iget-object v6, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    iget-object v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    iget-object v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    iget-object v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    iget-object v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/offsec/nethunter/models/CustomCommandsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->updateRunOnBootScripts(Ljava/util/List;)V

    :cond_6
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->customCommandsSQL:Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    iget v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    iget-object v2, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->addData(ILjava/util/List;)V

    goto/16 :goto_3

    :cond_7
    if-eqz p1, :cond_e

    iget v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/CustomCommandsModel;

    iget-object v6, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/models/CustomCommandsModel;->setCommandLabel(Ljava/lang/String;)V

    iget v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/CustomCommandsModel;

    iget-object v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/models/CustomCommandsModel;->setCommand(Ljava/lang/String;)V

    iget v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/CustomCommandsModel;

    iget-object v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/models/CustomCommandsModel;->setRuntimeEnv(Ljava/lang/String;)V

    iget v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/CustomCommandsModel;

    iget-object v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/models/CustomCommandsModel;->setExecutionMode(Ljava/lang/String;)V

    iget v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/CustomCommandsModel;

    iget-object v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/models/CustomCommandsModel;->setRunOnBoot(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->updateRunOnBootScripts(Ljava/util/List;)V

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->customCommandsSQL:Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    iget v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->editData(Ljava/lang/Integer;Ljava/util/List;)V

    goto/16 :goto_3

    :cond_8
    if-eqz p1, :cond_e

    iget v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getExecutionMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "interactive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android"

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getRuntimeEnv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->run_cmd_android(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    iget v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getRuntimeEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kali"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->run_cmd(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/offsec/nethunter/service/NotificationChannelService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.offsec.nethunter.CUSTOMCOMMAND_START"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget v2, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v2}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getRuntimeEnv()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ENV"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget v3, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v3}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getCommand()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CMD"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getRuntimeEnv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iget v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootReturnValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->returnValue:I

    if-nez v0, :cond_b

    const/16 v0, 0x64

    goto :goto_1

    :cond_b
    const/16 v0, 0x65

    :goto_1
    iput v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->returnValue:I

    goto :goto_3

    :cond_c
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iget v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootReturnValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->returnValue:I

    if-nez v0, :cond_d

    const/16 v0, 0x66

    goto :goto_2

    :cond_d
    const/16 v0, 0x67

    :goto_2
    iput v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->returnValue:I

    :cond_e
    :goto_3
    return-object p1
.end method

.method public static run_cmd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-static {v0, p0}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    sget-object v0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static run_cmd_android(Ljava/lang/String;)V
    .locals 1

    const-string v0, "/system/bin/sh"

    invoke-static {v0, p0}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    sget-object v0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateRunOnBootScripts(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/CustomCommandsModel;",
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

    check-cast v1, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getRunOnBoot()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getRuntimeEnv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getCommand()Ljava/lang/String;

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

    const-string v2, "/runonboot_services\n"

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
            "Lcom/offsec/nethunter/models/CustomCommandsModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$execute$0$com-offsec-nethunter-Executor-CustomCommandsExecutor(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->listener:Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$CustomCommandsExecutorListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$CustomCommandsExecutorListener;->onTaskFinished(Ljava/util/List;)V

    :cond_0
    const/4 p1, 0x0

    sput-boolean p1, Lcom/offsec/nethunter/ChrootManagerFragment;->isExecutorRunning:Z

    iget p1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->returnValue:I

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/offsec/nethunter/service/NotificationChannelService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.offsec.nethunter.CUSTOMCOMMAND_FINISH"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "RETURNCODE"

    iget v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->returnValue:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {p2}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getCommand()Ljava/lang/String;

    move-result-object p2

    const-string v1, "CMD"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p2, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    return-void
.end method

.method synthetic lambda$execute$1$com-offsec-nethunter-Executor-CustomCommandsExecutor(Ljava/util/List;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->performTask(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, p1}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setListener(Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$CustomCommandsExecutorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->listener:Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$CustomCommandsExecutorListener;

    return-void
.end method
