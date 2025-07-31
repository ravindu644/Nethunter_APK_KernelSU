.class public final synthetic Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/CANFragment$MainFragment;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Ljava/util/Map;

.field public final synthetic f$4:Landroid/widget/Button;

.field public final synthetic f$5:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/CANFragment$MainFragment;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/util/Map;Landroid/widget/Button;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda21;->f$0:Lcom/offsec/nethunter/CANFragment$MainFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda21;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda21;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda21;->f$3:Ljava/util/Map;

    iput-object p5, p0, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda21;->f$4:Landroid/widget/Button;

    iput-object p6, p0, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda21;->f$5:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda21;->f$0:Lcom/offsec/nethunter/CANFragment$MainFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda21;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda21;->f$2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda21;->f$3:Ljava/util/Map;

    iget-object v4, p0, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda21;->f$4:Landroid/widget/Button;

    iget-object v5, p0, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda21;->f$5:Landroid/content/SharedPreferences$Editor;

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/offsec/nethunter/CANFragment$MainFragment;->lambda$onCreateView$24$com-offsec-nethunter-CANFragment$MainFragment(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/util/Map;Landroid/widget/Button;Landroid/content/SharedPreferences$Editor;Landroid/view/View;)V

    return-void
.end method
