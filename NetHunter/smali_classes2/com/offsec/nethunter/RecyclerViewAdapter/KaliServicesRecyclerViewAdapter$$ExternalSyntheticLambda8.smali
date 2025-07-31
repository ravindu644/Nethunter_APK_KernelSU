.class public final synthetic Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;

.field public final synthetic f$1:Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda8;->f$0:Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;

    iput-object p2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda8;->f$1:Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;

    iput p3, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda8;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda8;->f$0:Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda8;->f$1:Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;

    iget v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda8;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->lambda$onBindViewHolder$13$com-offsec-nethunter-RecyclerViewAdapter-KaliServicesRecyclerViewAdapter(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;ILandroid/view/View;)V

    return-void
.end method
