.class Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData$4;
.super Ljava/lang/Object;
.source "CustomCommandsData.java"

# interfaces
.implements Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$CustomCommandsExecutorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->deleteData(Ljava/util/List;Ljava/util/List;Lcom/offsec/nethunter/SQL/CustomCommandsSQL;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData$4;->this$0:Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecutorPrepare()V
    .locals 0

    return-void
.end method

.method public onTaskFinished(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/CustomCommandsModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData$4;->this$0:Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->updateCustomCommandsModelListFull(Ljava/util/List;)V

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData$4;->this$0:Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getCustomCommandsModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData$4;->this$0:Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getCustomCommandsModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData$4;->this$0:Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    invoke-virtual {p1}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getCustomCommandsModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData$4;->this$0:Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getCustomCommandsModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
