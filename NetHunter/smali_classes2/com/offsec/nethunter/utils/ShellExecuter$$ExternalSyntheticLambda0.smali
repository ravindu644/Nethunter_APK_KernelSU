.class public final synthetic Lcom/offsec/nethunter/utils/ShellExecuter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/TextView;

.field public final synthetic f$1:Landroid/text/Spannable;

.field public final synthetic f$2:Landroid/text/Spannable;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/text/Spannable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/utils/ShellExecuter$$ExternalSyntheticLambda0;->f$0:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/offsec/nethunter/utils/ShellExecuter$$ExternalSyntheticLambda0;->f$1:Landroid/text/Spannable;

    iput-object p3, p0, Lcom/offsec/nethunter/utils/ShellExecuter$$ExternalSyntheticLambda0;->f$2:Landroid/text/Spannable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/utils/ShellExecuter$$ExternalSyntheticLambda0;->f$0:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/offsec/nethunter/utils/ShellExecuter$$ExternalSyntheticLambda0;->f$1:Landroid/text/Spannable;

    iget-object v2, p0, Lcom/offsec/nethunter/utils/ShellExecuter$$ExternalSyntheticLambda0;->f$2:Landroid/text/Spannable;

    invoke-static {v0, v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->lambda$RunAsRootOutput$0(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/text/Spannable;)V

    return-void
.end method
