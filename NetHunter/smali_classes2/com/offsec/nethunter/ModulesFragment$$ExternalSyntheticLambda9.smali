.class public final synthetic Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/ModulesFragment;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/ModulesFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda9;->f$0:Lcom/offsec/nethunter/ModulesFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda9;->f$0:Lcom/offsec/nethunter/ModulesFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/offsec/nethunter/ModulesFragment;->lambda$onCreateView$7$com-offsec-nethunter-ModulesFragment(Ljava/lang/String;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
