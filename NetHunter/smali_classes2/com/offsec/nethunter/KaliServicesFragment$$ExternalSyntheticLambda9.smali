.class public final synthetic Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnCloseListener;


# instance fields
.field public final synthetic f$0:Landroid/view/Menu;


# direct methods
.method public synthetic constructor <init>(Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda9;->f$0:Landroid/view/Menu;

    return-void
.end method


# virtual methods
.method public final onClose()Z
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda9;->f$0:Landroid/view/Menu;

    invoke-static {v0}, Lcom/offsec/nethunter/KaliServicesFragment;->lambda$onCreateOptionsMenu$2(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
