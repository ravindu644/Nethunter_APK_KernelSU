.class public final synthetic Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/SearchSploitFragment;

.field public final synthetic f$1:Landroid/view/MenuItem;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/SearchSploitFragment;Landroid/view/MenuItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda2;->f$0:Lcom/offsec/nethunter/SearchSploitFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda2;->f$1:Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda2;->f$0:Lcom/offsec/nethunter/SearchSploitFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda2;->f$1:Landroid/view/MenuItem;

    invoke-virtual {v0, v1, p1, p2}, Lcom/offsec/nethunter/SearchSploitFragment;->lambda$onOptionsItemSelected$5$com-offsec-nethunter-SearchSploitFragment(Landroid/view/MenuItem;Landroid/content/DialogInterface;I)V

    return-void
.end method
