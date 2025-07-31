.class public final synthetic Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult;

.field public final synthetic f$1:Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult;Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult;

    iput-object p2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$$ExternalSyntheticLambda0;->f$1:Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult;

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$$ExternalSyntheticLambda0;->f$1:Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;

    invoke-virtual {v0, v1, p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult;->lambda$onBindViewHolder$0$com-offsec-nethunter-RecyclerViewAdapter-NethunterRecyclerViewAdapterResult(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
