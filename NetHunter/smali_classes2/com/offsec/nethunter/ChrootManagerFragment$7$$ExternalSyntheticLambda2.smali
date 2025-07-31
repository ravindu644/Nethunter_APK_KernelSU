.class public final synthetic Lcom/offsec/nethunter/ChrootManagerFragment$7$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/ChrootManagerFragment$7;

.field public final synthetic f$1:Landroid/widget/ProgressBar;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/ChrootManagerFragment$7;Landroid/widget/ProgressBar;ILandroidx/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7$$ExternalSyntheticLambda2;->f$0:Lcom/offsec/nethunter/ChrootManagerFragment$7;

    iput-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7$$ExternalSyntheticLambda2;->f$1:Landroid/widget/ProgressBar;

    iput p3, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7$$ExternalSyntheticLambda2;->f$2:I

    iput-object p4, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7$$ExternalSyntheticLambda2;->f$3:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7$$ExternalSyntheticLambda2;->f$0:Lcom/offsec/nethunter/ChrootManagerFragment$7;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7$$ExternalSyntheticLambda2;->f$1:Landroid/widget/ProgressBar;

    iget v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7$$ExternalSyntheticLambda2;->f$2:I

    iget-object v3, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7$$ExternalSyntheticLambda2;->f$3:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1, v2, v3}, Lcom/offsec/nethunter/ChrootManagerFragment$7;->lambda$onExecutorProgressUpdate$1$com-offsec-nethunter-ChrootManagerFragment$7(Landroid/widget/ProgressBar;ILandroidx/appcompat/app/AlertDialog;)V

    return-void
.end method
