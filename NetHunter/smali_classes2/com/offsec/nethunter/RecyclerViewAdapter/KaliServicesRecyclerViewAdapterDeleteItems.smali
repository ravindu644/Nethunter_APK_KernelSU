.class public Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "KaliServicesRecyclerViewAdapterDeleteItems.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems$ItemViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "KaliServiceRecycleViewChild"


# instance fields
.field private final context:Landroid/content/Context;

.field private final kaliServicesModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems;->kaliServicesModelList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems;->kaliServicesModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems;->onBindViewHolder(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems$ItemViewHolder;I)V
    .locals 1

    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems$ItemViewHolder;->-$$Nest$fgetrunOnChrootStartCheckBox(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems$ItemViewHolder;)Landroid/widget/CheckBox;

    move-result-object p1

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems;->kaliServicesModelList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {p2}, Lcom/offsec/nethunter/models/KaliServicesModel;->getServiceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems$ItemViewHolder;
    .locals 2

    iget-object p2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c005f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems$ItemViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems$ItemViewHolder;-><init>(Landroid/view/View;Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems$ItemViewHolder-IA;)V

    return-object p2
.end method
