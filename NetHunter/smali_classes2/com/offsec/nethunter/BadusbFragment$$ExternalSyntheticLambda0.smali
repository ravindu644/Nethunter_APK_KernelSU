.class public final synthetic Lcom/offsec/nethunter/BadusbFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/BadusbFragment$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/offsec/nethunter/BadusbFragment$$ExternalSyntheticLambda0;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/BadusbFragment$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/offsec/nethunter/BadusbFragment$$ExternalSyntheticLambda0;->f$1:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/offsec/nethunter/BadusbFragment;->lambda$loadOptions$1(Ljava/lang/String;Landroid/widget/EditText;)V

    return-void
.end method
