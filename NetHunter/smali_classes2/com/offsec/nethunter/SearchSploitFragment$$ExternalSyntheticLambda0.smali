.class public final synthetic Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/SearchSploitFragment;

.field public final synthetic f$1:Landroid/widget/Button;

.field public final synthetic f$2:Landroid/view/View;

.field public final synthetic f$3:Landroid/widget/ProgressBar;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/SearchSploitFragment;Landroid/widget/Button;Landroid/view/View;Landroid/widget/ProgressBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/SearchSploitFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda0;->f$1:Landroid/widget/Button;

    iput-object p3, p0, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    iput-object p4, p0, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda0;->f$3:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/SearchSploitFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda0;->f$1:Landroid/widget/Button;

    iget-object v2, p0, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    iget-object v3, p0, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda0;->f$3:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1, v2, v3}, Lcom/offsec/nethunter/SearchSploitFragment;->lambda$onCreateView$1$com-offsec-nethunter-SearchSploitFragment(Landroid/widget/Button;Landroid/view/View;Landroid/widget/ProgressBar;)V

    return-void
.end method
