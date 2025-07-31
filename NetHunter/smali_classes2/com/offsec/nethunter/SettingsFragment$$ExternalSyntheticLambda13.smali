.class public final synthetic Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/SettingsFragment;

.field public final synthetic f$1:Lcom/offsec/nethunter/utils/ShellExecuter;

.field public final synthetic f$2:Landroid/widget/Button;

.field public final synthetic f$3:Landroid/widget/TextView;

.field public final synthetic f$4:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/SettingsFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/Button;Landroid/widget/TextView;Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda13;->f$0:Lcom/offsec/nethunter/SettingsFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda13;->f$1:Lcom/offsec/nethunter/utils/ShellExecuter;

    iput-object p3, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda13;->f$2:Landroid/widget/Button;

    iput-object p4, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda13;->f$3:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda13;->f$4:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda13;->f$0:Lcom/offsec/nethunter/SettingsFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda13;->f$1:Lcom/offsec/nethunter/utils/ShellExecuter;

    iget-object v2, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda13;->f$2:Landroid/widget/Button;

    iget-object v3, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda13;->f$3:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda13;->f$4:Landroid/content/SharedPreferences;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/offsec/nethunter/SettingsFragment;->lambda$onCreateView$13$com-offsec-nethunter-SettingsFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/Button;Landroid/widget/TextView;Landroid/content/SharedPreferences;Landroid/view/View;)V

    return-void
.end method
