.class Lcom/offsec/nethunter/SearchSploitFragment$1;
.super Ljava/lang/Object;
.source "SearchSploitFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/SearchSploitFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/SearchSploitFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/SearchSploitFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/SearchSploitFragment$1;->this$0:Lcom/offsec/nethunter/SearchSploitFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/SearchSploitFragment$1;->this$0:Lcom/offsec/nethunter/SearchSploitFragment;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/offsec/nethunter/SearchSploitFragment;->-$$Nest$fputsel_search(Lcom/offsec/nethunter/SearchSploitFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/SearchSploitFragment$1;->this$0:Lcom/offsec/nethunter/SearchSploitFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/SearchSploitFragment;->-$$Nest$mloadExploits(Lcom/offsec/nethunter/SearchSploitFragment;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment$1;->this$0:Lcom/offsec/nethunter/SearchSploitFragment;

    invoke-static {v0, p1}, Lcom/offsec/nethunter/SearchSploitFragment;->-$$Nest$fputsel_search(Lcom/offsec/nethunter/SearchSploitFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/SearchSploitFragment$1;->this$0:Lcom/offsec/nethunter/SearchSploitFragment;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/offsec/nethunter/SearchSploitFragment;->-$$Nest$fputsel_search(Lcom/offsec/nethunter/SearchSploitFragment;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/SearchSploitFragment$1;->this$0:Lcom/offsec/nethunter/SearchSploitFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/SearchSploitFragment;->-$$Nest$mloadExploits(Lcom/offsec/nethunter/SearchSploitFragment;)V

    const/4 p1, 0x0

    return p1
.end method
