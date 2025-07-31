.class public final synthetic Lcom/offsec/nethunter/DeAuthFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/DeAuthFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/DeAuthFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/DeAuthFragment$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/DeAuthFragment;

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7

    iget-object v0, p0, Lcom/offsec/nethunter/DeAuthFragment$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/DeAuthFragment;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/offsec/nethunter/DeAuthFragment;->lambda$onCreateView$0$com-offsec-nethunter-DeAuthFragment(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
