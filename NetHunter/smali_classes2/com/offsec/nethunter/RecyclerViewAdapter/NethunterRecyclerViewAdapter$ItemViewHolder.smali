.class Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NethunterRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private final resultRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final runButton:Landroid/widget/Button;

.field private final titleTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetresultRecyclerView(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;->resultRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrunButton(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;->runButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettitleTextView(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;->titleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f09021c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;->titleTextView:Landroid/widget/TextView;

    const v0, 0x7f090219

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;->resultRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f09021b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;->runButton:Landroid/widget/Button;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
