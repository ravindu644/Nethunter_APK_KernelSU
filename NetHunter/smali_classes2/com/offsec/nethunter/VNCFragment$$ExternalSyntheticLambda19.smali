.class public final synthetic Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/VNCFragment;

.field public final synthetic f$1:Lcom/offsec/nethunter/utils/ShellExecuter;

.field public final synthetic f$2:Landroid/widget/CheckBox;

.field public final synthetic f$3:Landroid/content/SharedPreferences;

.field public final synthetic f$4:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/VNCFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda19;->f$0:Lcom/offsec/nethunter/VNCFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda19;->f$1:Lcom/offsec/nethunter/utils/ShellExecuter;

    iput-object p3, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda19;->f$2:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda19;->f$3:Landroid/content/SharedPreferences;

    iput-object p5, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda19;->f$4:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda19;->f$0:Lcom/offsec/nethunter/VNCFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda19;->f$1:Lcom/offsec/nethunter/utils/ShellExecuter;

    iget-object v2, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda19;->f$2:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda19;->f$3:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda19;->f$4:Landroid/widget/EditText;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/offsec/nethunter/VNCFragment;->lambda$onCreateView$8$com-offsec-nethunter-VNCFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method
