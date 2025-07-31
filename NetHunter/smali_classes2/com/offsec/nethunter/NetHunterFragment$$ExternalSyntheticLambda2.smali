.class public final synthetic Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/NetHunterFragment;

.field public final synthetic f$1:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic f$2:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/NetHunterFragment;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda2;->f$0:Lcom/offsec/nethunter/NetHunterFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda2;->f$1:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda2;->f$2:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda2;->f$0:Lcom/offsec/nethunter/NetHunterFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda2;->f$1:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda2;->f$2:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1, v2, p1}, Lcom/offsec/nethunter/NetHunterFragment;->lambda$onDeleteItemSetup$25$com-offsec-nethunter-NetHunterFragment(Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
