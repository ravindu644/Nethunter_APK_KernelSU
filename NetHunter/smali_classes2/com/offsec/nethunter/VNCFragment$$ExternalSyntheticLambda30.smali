.class public final synthetic Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda30;->f$0:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda30;->f$0:Landroid/content/SharedPreferences;

    invoke-static {v0, p1, p2}, Lcom/offsec/nethunter/VNCFragment;->lambda$getAlertDialog$31(Landroid/content/SharedPreferences;Landroid/content/DialogInterface;I)V

    return-void
.end method
