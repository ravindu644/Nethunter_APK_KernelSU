.class Lcom/offsec/nethunter/KaliServicesFragment$1;
.super Ljava/lang/Object;
.source "KaliServicesFragment.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/KaliServicesFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/KaliServicesFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/KaliServicesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/KaliServicesFragment$1;->this$0:Lcom/offsec/nethunter/KaliServicesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment$1;->this$0:Lcom/offsec/nethunter/KaliServicesFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/KaliServicesFragment;->-$$Nest$fgetkaliServicesRecyclerViewAdapter(Lcom/offsec/nethunter/KaliServicesFragment;)Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->getFilter()Landroid/widget/Filter;

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
