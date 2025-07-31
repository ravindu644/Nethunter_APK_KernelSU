.class public final synthetic Lcom/offsec/nethunter/utils/ShellExecuter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/utils/ShellExecuter$$ExternalSyntheticLambda1;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/offsec/nethunter/utils/ShellExecuter$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/utils/ShellExecuter$$ExternalSyntheticLambda1;->f$0:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/offsec/nethunter/utils/ShellExecuter$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->lambda$ReadFile_ASYNC$1(Landroid/widget/EditText;Ljava/lang/String;)V

    return-void
.end method
