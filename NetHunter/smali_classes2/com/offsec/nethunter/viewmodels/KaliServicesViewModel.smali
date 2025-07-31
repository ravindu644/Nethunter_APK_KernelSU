.class public Lcom/offsec/nethunter/viewmodels/KaliServicesViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "KaliServicesViewModel.java"


# instance fields
.field private mutableLiveDataKaliServicesModelList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
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
.method public getLiveDataKaliServicesModelList()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/offsec/nethunter/viewmodels/KaliServicesViewModel;->mutableLiveDataKaliServicesModelList:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/viewmodels/KaliServicesViewModel;->mutableLiveDataKaliServicesModelList:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v0

    sget-boolean v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->isDataInitiated:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getKaliServicesModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/viewmodels/KaliServicesViewModel;->mutableLiveDataKaliServicesModelList:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getKaliServicesModels(Landroid/content/Context;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/viewmodels/KaliServicesViewModel;->mutableLiveDataKaliServicesModelList:Landroidx/lifecycle/MutableLiveData;

    :goto_0
    return-void
.end method
