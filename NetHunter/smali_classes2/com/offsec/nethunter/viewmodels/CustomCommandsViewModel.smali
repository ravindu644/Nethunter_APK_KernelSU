.class public Lcom/offsec/nethunter/viewmodels/CustomCommandsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "CustomCommandsViewModel.java"


# instance fields
.field private mutableLiveDataCustomCommandsModelList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/CustomCommandsModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getLiveDataCustomCommandsModelList()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/CustomCommandsModel;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/offsec/nethunter/viewmodels/CustomCommandsViewModel;->mutableLiveDataCustomCommandsModelList:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/viewmodels/CustomCommandsViewModel;->mutableLiveDataCustomCommandsModelList:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object v0

    sget-boolean v1, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->isDataInitiated:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getCustomCommandsModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/viewmodels/CustomCommandsViewModel;->mutableLiveDataCustomCommandsModelList:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getCustomCommandsModels(Landroid/content/Context;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/viewmodels/CustomCommandsViewModel;->mutableLiveDataCustomCommandsModelList:Landroidx/lifecycle/MutableLiveData;

    :goto_0
    return-void
.end method
