.class Lcom/offsec/nethunter/VNCFragment$5;
.super Landroid/os/CountDownTimer;
.source "VNCFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/VNCFragment;->confirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/VNCFragment;

.field final synthetic val$alert:Landroidx/appcompat/app/AlertDialog;

.field final synthetic val$sharedpreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/VNCFragment;JJLandroidx/appcompat/app/AlertDialog;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment$5;->this$0:Lcom/offsec/nethunter/VNCFragment;

    iput-object p6, p0, Lcom/offsec/nethunter/VNCFragment$5;->val$alert:Landroidx/appcompat/app/AlertDialog;

    iput-object p7, p0, Lcom/offsec/nethunter/VNCFragment$5;->val$sharedpreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    const-string v1, "wm size reset; wm density reset"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment$5;->val$sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "confirm_res"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment$5;->val$alert:Landroidx/appcompat/app/AlertDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Resetting device resolution in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " sec"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method
