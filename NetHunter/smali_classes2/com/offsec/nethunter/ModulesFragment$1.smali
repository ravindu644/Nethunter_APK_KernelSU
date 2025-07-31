.class Lcom/offsec/nethunter/ModulesFragment$1;
.super Ljava/lang/Object;
.source "ModulesFragment.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/ModulesFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/ModulesFragment;

.field final synthetic val$modules:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/ModulesFragment;Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/ModulesFragment$1;->this$0:Lcom/offsec/nethunter/ModulesFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/ModulesFragment$1;->val$modules:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/ModulesFragment$1;->val$modules:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/ModulesFragment$1;->val$modules:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
