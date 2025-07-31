.class public final synthetic Lcom/offsec/nethunter/ChrootManagerFragment$7$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/ChrootManagerFragment$7;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/ChrootManagerFragment$7;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/ChrootManagerFragment$7;

    iput p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/ChrootManagerFragment$7;

    iget v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/ChrootManagerFragment$7;->lambda$onExecutorFinished$2$com-offsec-nethunter-ChrootManagerFragment$7(I)V

    return-void
.end method
