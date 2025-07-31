.class public final synthetic Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/NmapFragment;

.field public final synthetic f$1:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/NmapFragment;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda2;->f$0:Lcom/offsec/nethunter/NmapFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda2;->f$1:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda2;->f$0:Lcom/offsec/nethunter/NmapFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda2;->f$1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1, p1}, Lcom/offsec/nethunter/NmapFragment;->lambda$onCreateView$10$com-offsec-nethunter-NmapFragment(Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method
