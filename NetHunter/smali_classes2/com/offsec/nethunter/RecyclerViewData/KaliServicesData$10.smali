.class Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$10;
.super Ljava/lang/Object;
.source "KaliServicesData.java"

# interfaces
.implements Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->updateRunOnChrootStartServices(ILjava/util/List;Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$10;->this$0:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecutorFinished(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$10;->this$0:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->updateKaliServicesModelListFull(Ljava/util/List;)V

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$10;->this$0:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getKaliServicesModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$10;->this$0:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getKaliServicesModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$10;->this$0:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    invoke-virtual {p1}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getKaliServicesModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$10;->this$0:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getKaliServicesModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onExecutorPrepare()V
    .locals 0

    return-void
.end method

.method public onTaskFinished(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
