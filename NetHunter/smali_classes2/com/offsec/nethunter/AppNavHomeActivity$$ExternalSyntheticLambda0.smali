.class public final synthetic Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda0;->f$0:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda0;->f$0:Z

    invoke-static {v0, p1, p2}, Lcom/offsec/nethunter/AppNavHomeActivity;->lambda$showWarningDialog$4(ZLandroid/content/DialogInterface;I)V

    return-void
.end method
