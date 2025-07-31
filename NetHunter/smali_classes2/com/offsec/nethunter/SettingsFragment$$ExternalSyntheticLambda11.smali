.class public final synthetic Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/SettingsFragment;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/SettingsFragment;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda11;->f$0:Lcom/offsec/nethunter/SettingsFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda11;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda11;->f$0:Lcom/offsec/nethunter/SettingsFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda11;->f$1:Ljava/io/File;

    invoke-virtual {v0, v1, p1}, Lcom/offsec/nethunter/SettingsFragment;->lambda$onCreateView$11$com-offsec-nethunter-SettingsFragment(Ljava/io/File;Landroid/view/View;)V

    return-void
.end method
