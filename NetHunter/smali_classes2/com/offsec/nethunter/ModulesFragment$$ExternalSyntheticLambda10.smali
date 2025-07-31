.class public final synthetic Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/ModulesFragment;

.field public final synthetic f$1:Landroid/widget/ListView;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/ModulesFragment;Landroid/widget/ListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda10;->f$0:Lcom/offsec/nethunter/ModulesFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda10;->f$1:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7

    iget-object v0, p0, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda10;->f$0:Lcom/offsec/nethunter/ModulesFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda10;->f$1:Landroid/widget/ListView;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/offsec/nethunter/ModulesFragment;->lambda$onCreateView$8$com-offsec-nethunter-ModulesFragment(Landroid/widget/ListView;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p1

    return p1
.end method
