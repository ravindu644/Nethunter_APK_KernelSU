.class public Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;
.super Lcom/offsec/nethunter/HidFragment;
.source "HidFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/HidFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowsCmdFragment"
.end annotation


# static fields
.field private static final PICKFILE_RESULT_CODE:I = 0x1


# instance fields
.field private activity:Landroid/app/Activity;

.field private configFilePath:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private loadFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/offsec/nethunter/HidFragment;-><init>()V

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method

.method static synthetic lambda$onClick$1(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method


# virtual methods
.method synthetic lambda$onClick$0$com-offsec-nethunter-HidFragment$WindowsCmdFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Ljava/io/File;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->loadFilePath:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".conf"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->getView()Landroid/view/View;

    move-result-object p1

    const p3, 0x7f0904df

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance p2, Ljava/io/OutputStreamWriter;

    invoke-direct {p2, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p2, p1}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->close()V

    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V

    iget-object p1, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->context:Landroid/content/Context;

    const-string p2, "Script saved"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->context:Landroid/content/Context;

    const-string p2, "File already exists"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->context:Landroid/content/Context;

    const-string p2, "Wrong name provided"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->getView()Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0904df

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iget-object p3, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-virtual {p3, p1, p2}, Lcom/offsec/nethunter/utils/ShellExecuter;->ReadFile_ASYNC(Ljava/lang/String;Landroid/widget/EditText;)V

    iget-object p1, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->context:Landroid/content/Context;

    const-string p2, "Script loaded"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object p1, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->context:Landroid/content/Context;

    const-string v0, "Unknown click"

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0904df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    iget-object v1, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->configFilePath:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->SaveFileContents(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->context:Landroid/content/Context;

    const-string v0, "Source updated"

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_2
    :try_start_0
    new-instance p1, Ljava/io/File;

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    iget-object v1, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->loadFilePath:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->activity:Landroid/app/Activity;

    const v1, 0x7f120117

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v0, "Name"

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const-string v0, "Please enter a name for your script."

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v1, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;Landroid/widget/EditText;)V

    const-string v0, "Ok"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "Cancel"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_2

    :pswitch_3
    :try_start_1
    new-instance p1, Ljava/io/File;

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    iget-object v1, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->loadFilePath:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->loadFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "file/*"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0904dd
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/offsec/nethunter/HidFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->activity:Landroid/app/Activity;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/configs/hid-cmd.conf"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->configFilePath:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/scripts/hid/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->loadFilePath:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0055

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0904df

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iget-object p3, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->configFilePath:Ljava/lang/String;

    invoke-virtual {p3, v0, p2}, Lcom/offsec/nethunter/utils/ShellExecuter;->ReadFile_ASYNC(Ljava/lang/String;Landroid/widget/EditText;)V

    const p2, 0x7f0904e0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const p3, 0x7f0904dd

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    const v0, 0x7f0904de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
