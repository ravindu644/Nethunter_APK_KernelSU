.class public final synthetic Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/regex/Matcher;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Ljava/util/regex/Matcher;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment$$ExternalSyntheticLambda1;->f$0:Ljava/util/regex/Matcher;

    iput-object p2, p0, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment$$ExternalSyntheticLambda1;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment$$ExternalSyntheticLambda1;->f$0:Ljava/util/regex/Matcher;

    iget-object v1, p0, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment$$ExternalSyntheticLambda1;->f$1:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;->lambda$loadOptions$0(Ljava/util/regex/Matcher;Landroid/widget/EditText;)V

    return-void
.end method
