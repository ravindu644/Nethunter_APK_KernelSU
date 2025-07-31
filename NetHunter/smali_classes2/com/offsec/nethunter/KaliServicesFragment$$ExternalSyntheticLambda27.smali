.class public final synthetic Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/KaliServicesFragment;

.field public final synthetic f$1:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic f$2:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/KaliServicesFragment;Landroidx/appcompat/app/AlertDialog;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda27;->f$0:Lcom/offsec/nethunter/KaliServicesFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda27;->f$1:Landroidx/appcompat/app/AlertDialog;

    iput-object p3, p0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda27;->f$2:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda27;->f$0:Lcom/offsec/nethunter/KaliServicesFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda27;->f$1:Landroidx/appcompat/app/AlertDialog;

    iget-object v2, p0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda27;->f$2:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v2, p1}, Lcom/offsec/nethunter/KaliServicesFragment;->lambda$onDeleteItemSetup$27$com-offsec-nethunter-KaliServicesFragment(Landroidx/appcompat/app/AlertDialog;Landroidx/recyclerview/widget/RecyclerView;Landroid/content/DialogInterface;)V

    return-void
.end method
