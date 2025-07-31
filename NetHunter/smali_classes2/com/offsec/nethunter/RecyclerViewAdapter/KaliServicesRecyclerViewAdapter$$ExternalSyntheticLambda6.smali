.class public final synthetic Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda6;->f$0:Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;

    iput p2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda6;->f$1:I

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda6;->f$0:Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;

    iget v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda6;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->lambda$onBindViewHolder$11$com-offsec-nethunter-RecyclerViewAdapter-KaliServicesRecyclerViewAdapter(ILandroid/view/View;)Z

    move-result p1

    return p1
.end method
