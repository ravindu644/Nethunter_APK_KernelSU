.class Lcom/offsec/nethunter/AppNavHomeActivity$1;
.super Ljava/lang/Object;
.source "AppNavHomeActivity.java"

# interfaces
.implements Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor$CopyBootFilesExecutorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/AppNavHomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/AppNavHomeActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$1;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    iput-object p2, p0, Lcom/offsec/nethunter/AppNavHomeActivity$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecutorFinished(Ljava/lang/Object;)V
    .locals 4

    iget-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$1;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-virtual {p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "AppNavHomeActivity"

    const-string v0, "Application context is null. Cannot proceed."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->getBusyboxPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/utils/NhPaths;->BUSYBOX:Ljava/lang/String;

    invoke-static {p1}, Lcom/offsec/nethunter/SQL/NethunterSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/NethunterSQL;

    invoke-static {p1}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    invoke-static {p1}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    invoke-static {p1}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/USBArsenalSQL;

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity$1;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-virtual {v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->setDefaultSharePreference()V

    invoke-static {}, Lcom/offsec/nethunter/utils/CheckForRoot;->isBusyboxInstalled()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "NetHunter app cannot be run properly"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity$1;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    const-string v3, "No busybox is detected, please make sure you have busybox installed!!"

    invoke-virtual {v0, v2, v3, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->showWarningDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.offsec.nhterm"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$1;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    const-string v0, "NetHunter terminal is not installed yet."

    invoke-virtual {p1, v2, v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->showWarningDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    iget-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$1;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-static {p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->-$$Nest$misAllRequiredPermissionsGranted(Lcom/offsec/nethunter/AppNavHomeActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$1;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-static {p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->-$$Nest$msetRootView(Lcom/offsec/nethunter/AppNavHomeActivity;)V

    :cond_3
    return-void
.end method

.method public onExecutorPrepare()V
    .locals 4

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity$1;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-virtual {v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "AppNavHomeActivity"

    const-string v1, "Context is null. Cannot proceed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Copying files..."

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c00c5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public onFinished(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :pswitch_1
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_2
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_1

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$1;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    const-string v0, "NetHunter app cannot be run properly"

    const-string v2, "Failed to copy files, please check your storage permission!!"

    invoke-virtual {p1, v0, v2, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->showWarningDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onPrepare()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity$1;->val$progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Copying files..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity$1;->val$progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity$1;->val$progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
