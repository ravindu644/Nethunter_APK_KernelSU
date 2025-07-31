.class Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;
.super Ljava/lang/Object;
.source "KaliServicesData.java"

# interfaces
.implements Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->stopServiceforItem(ILandroidx/appcompat/widget/SwitchCompat;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;Landroidx/appcompat/widget/SwitchCompat;ILandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->this$0:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    iput-object p2, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->val$mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iput p3, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->val$position:I

    iput-object p4, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecutorFinished(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->val$mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->val$mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget v1, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->val$position:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/KaliServicesModel;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[+]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->this$0:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getKaliServicesModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->this$0:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getKaliServicesModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->this$0:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    invoke-virtual {p1}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getKaliServicesModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->this$0:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getKaliServicesModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->val$mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->val$context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed stopping "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->this$0:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    invoke-virtual {v1}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getKaliServicesModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget v2, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/KaliServicesModel;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onExecutorPrepare()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->val$mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

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
