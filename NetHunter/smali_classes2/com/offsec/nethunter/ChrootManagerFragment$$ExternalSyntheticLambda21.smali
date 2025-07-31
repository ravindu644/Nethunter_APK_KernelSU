.class public final synthetic Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/ChrootManagerFragment;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/io/File;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/ChrootManagerFragment;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda21;->f$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda21;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda21;->f$2:Ljava/io/File;

    iput-object p4, p0, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda21;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda21;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda21;->f$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda21;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda21;->f$2:Ljava/io/File;

    iget-object v3, p0, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda21;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda21;->f$4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/offsec/nethunter/ChrootManagerFragment;->lambda$setInstallChrootButton$6$com-offsec-nethunter-ChrootManagerFragment(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
