.class Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CustomCommandsRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private final commandLabelTextView:Landroid/widget/TextView;

.field private final execEnvTextView:Landroid/widget/TextView;

.field private final execModeTextView:Landroid/widget/TextView;

.field private final runButton:Landroid/widget/Button;

.field private final runOnBootTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetcommandLabelTextView(Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;->commandLabelTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetexecEnvTextView(Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;->execEnvTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetexecModeTextView(Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;->execModeTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrunButton(Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;->runButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrunOnBootTextView(Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;->runOnBootTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0901bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;->commandLabelTextView:Landroid/widget/TextView;

    const v0, 0x7f0901c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;->execEnvTextView:Landroid/widget/TextView;

    const v0, 0x7f0901c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;->execModeTextView:Landroid/widget/TextView;

    const v0, 0x7f0901c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;->runOnBootTextView:Landroid/widget/TextView;

    const v0, 0x7f0901bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;->runButton:Landroid/widget/Button;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
