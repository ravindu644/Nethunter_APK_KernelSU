.class public Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NethunterRecyclerViewAdapterResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "NethunterRecyclerView"


# instance fields
.field private final context:Landroid/content/Context;

.field private final resultStrings:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult;->resultStrings:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult;->resultStrings:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-offsec-nethunter-RecyclerViewAdapter-NethunterRecyclerViewAdapterResult(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;Landroid/view/View;)Z
    .locals 2

    iget-object p2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult;->context:Landroid/content/Context;

    const-string v0, "clipboard"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;->-$$Nest$fgetresultTextView(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "text"

    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    iget-object p2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Copied to clipboard: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;->-$$Nest$fgetresultTextView(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult;->onBindViewHolder(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;I)V
    .locals 2

    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;->-$$Nest$fgetresultTextView(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult;->resultStrings:[Ljava/lang/String;

    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;->-$$Nest$fgetresultTextView(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    new-instance v0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult;Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;
    .locals 2

    iget-object p2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00a0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;-><init>(Landroid/view/View;Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder-IA;)V

    return-object p2
.end method
