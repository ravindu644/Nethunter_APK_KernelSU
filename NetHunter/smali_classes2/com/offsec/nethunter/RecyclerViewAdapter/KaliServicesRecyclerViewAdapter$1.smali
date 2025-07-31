.class Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$1;
.super Landroid/widget/Filter;
.source "KaliServicesRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$1;->this$0:Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5

    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v2

    iget-object v2, v2, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v1

    iget-object v1, v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_2
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getKaliServicesModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getKaliServicesModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getKaliServicesModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getKaliServicesModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
