.class Lcom/offsec/nethunter/NetHunterFragment$1;
.super Ljava/lang/Object;
.source "NetHunterFragment.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/NetHunterFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/NetHunterFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/NetHunterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/NetHunterFragment$1;->this$0:Lcom/offsec/nethunter/NetHunterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment$1;->this$0:Lcom/offsec/nethunter/NetHunterFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/NetHunterFragment;->-$$Nest$fgetnethunterRecyclerViewAdapter(Lcom/offsec/nethunter/NetHunterFragment;)Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
