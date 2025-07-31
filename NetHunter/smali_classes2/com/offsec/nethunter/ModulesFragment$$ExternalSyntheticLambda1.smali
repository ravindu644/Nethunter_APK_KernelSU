.class public final synthetic Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/ModulesFragment;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/Map;

.field public final synthetic f$3:Landroid/widget/ListView;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/ModulesFragment;Ljava/util/List;Ljava/util/Map;Landroid/widget/ListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda1;->f$0:Lcom/offsec/nethunter/ModulesFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda1;->f$2:Ljava/util/Map;

    iput-object p4, p0, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda1;->f$3:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda1;->f$0:Lcom/offsec/nethunter/ModulesFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda1;->f$2:Ljava/util/Map;

    iget-object v3, p0, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda1;->f$3:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Lcom/offsec/nethunter/ModulesFragment;->lambda$refreshModules$13$com-offsec-nethunter-ModulesFragment(Ljava/util/List;Ljava/util/Map;Landroid/widget/ListView;)V

    return-void
.end method
