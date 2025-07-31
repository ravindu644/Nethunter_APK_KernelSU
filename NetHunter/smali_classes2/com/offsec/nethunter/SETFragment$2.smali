.class Lcom/offsec/nethunter/SETFragment$2;
.super Ljava/lang/Object;
.source "SETFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/SETFragment;->SetupDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/SETFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/SETFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/SETFragment$2;->this$0:Lcom/offsec/nethunter/SETFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/offsec/nethunter/SETFragment$2;->this$0:Lcom/offsec/nethunter/SETFragment;

    invoke-virtual {p1}, Lcom/offsec/nethunter/SETFragment;->RunSetup()V

    iget-object p1, p0, Lcom/offsec/nethunter/SETFragment$2;->this$0:Lcom/offsec/nethunter/SETFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/SETFragment;->-$$Nest$fgetsharedpreferences(Lcom/offsec/nethunter/SETFragment;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "set_setup_done"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
