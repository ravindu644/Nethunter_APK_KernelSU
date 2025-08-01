.class Lcom/hijacker/InstallFirmwareDialog$InitTask;
.super Landroid/os/AsyncTask;
.source "InstallFirmwareDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hijacker/InstallFirmwareDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field backupExists:Z

.field defaultIndex:I

.field firmwarePath:Ljava/lang/String;

.field paths:[Ljava/lang/String;

.field final synthetic this$0:Lcom/hijacker/InstallFirmwareDialog;


# direct methods
.method constructor <init>(Lcom/hijacker/InstallFirmwareDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->this$0:Lcom/hijacker/InstallFirmwareDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->defaultIndex:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/hijacker/InstallFirmwareDialog$InitTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    iget-object p1, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->this$0:Lcom/hijacker/InstallFirmwareDialog;

    invoke-static {}, Lcom/hijacker/Shell;->getFreeShell()Lcom/hijacker/Shell;

    move-result-object v0

    iput-object v0, p1, Lcom/hijacker/InstallFirmwareDialog;->shell:Lcom/hijacker/Shell;

    iget-object p1, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->this$0:Lcom/hijacker/InstallFirmwareDialog;

    iget-object p1, p1, Lcom/hijacker/InstallFirmwareDialog;->shell:Lcom/hijacker/Shell;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/hijacker/Shell;->setLog(Z)V

    iget-object p1, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->this$0:Lcom/hijacker/InstallFirmwareDialog;

    iget-object p1, p1, Lcom/hijacker/InstallFirmwareDialog;->shell:Lcom/hijacker/Shell;

    invoke-static {p1}, Lcom/hijacker/MainActivity;->findFirmwarePath(Lcom/hijacker/Shell;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->firmwarePath:Ljava/lang/String;

    const-string p1, "PATH"

    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->paths:[Ljava/lang/String;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->paths:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    aget-object v0, v0, p1

    const-string v1, "/su/xbin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->defaultIndex:I

    iget-object v0, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->this$0:Lcom/hijacker/InstallFirmwareDialog;

    iget-object v1, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->paths:[Ljava/lang/String;

    aget-object p1, v1, p1

    iput-object p1, v0, Lcom/hijacker/InstallFirmwareDialog;->selectedUtilPath:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p1, Ljava/io/File;

    sget-object v0, Lcom/hijacker/MainActivity;->firm_backup_file:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    iput-boolean p1, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->backupExists:Z

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/hijacker/InstallFirmwareDialog$InitTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4

    iget-object p1, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->this$0:Lcom/hijacker/InstallFirmwareDialog;

    iget-object p1, p1, Lcom/hijacker/InstallFirmwareDialog;->positiveButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->firmwarePath:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->paths:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/hijacker/MainActivity;->devChipset:Ljava/lang/String;

    const-string v3, "4339"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/hijacker/MainActivity;->devChipset:Ljava/lang/String;

    const-string v3, "4358"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->this$0:Lcom/hijacker/InstallFirmwareDialog;

    iget-object p1, p1, Lcom/hijacker/InstallFirmwareDialog;->neutralButton:Landroid/widget/Button;

    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/hijacker/MainActivity;->firm_backup_file:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->firmwarePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->firmwarePath:Ljava/lang/String;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->this$0:Lcom/hijacker/InstallFirmwareDialog;

    iget-object p1, p1, Lcom/hijacker/InstallFirmwareDialog;->firmwareView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->this$0:Lcom/hijacker/InstallFirmwareDialog;

    const v3, 0x7f1000a4

    invoke-virtual {v0, v3}, Lcom/hijacker/InstallFirmwareDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->this$0:Lcom/hijacker/InstallFirmwareDialog;

    iget-object p1, p1, Lcom/hijacker/InstallFirmwareDialog;->firmwareView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->firmwarePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-boolean p1, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->backupExists:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->this$0:Lcom/hijacker/InstallFirmwareDialog;

    iget-object p1, p1, Lcom/hijacker/InstallFirmwareDialog;->backup_cb:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_4
    iget-object p1, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->paths:[Ljava/lang/String;

    array-length p1, p1

    if-nez p1, :cond_5

    new-array p1, v1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->this$0:Lcom/hijacker/InstallFirmwareDialog;

    const v1, 0x7f100114

    invoke-virtual {v0, v1}, Lcom/hijacker/InstallFirmwareDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    iput-object p1, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->paths:[Ljava/lang/String;

    iget-object p1, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->this$0:Lcom/hijacker/InstallFirmwareDialog;

    iget-object p1, p1, Lcom/hijacker/InstallFirmwareDialog;->utilSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_5
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->this$0:Lcom/hijacker/InstallFirmwareDialog;

    invoke-virtual {v0}, Lcom/hijacker/InstallFirmwareDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1090008

    iget-object v3, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->paths:[Ljava/lang/String;

    invoke-direct {p1, v0, v1, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v0, 0x1090009

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->this$0:Lcom/hijacker/InstallFirmwareDialog;

    iget-object v0, v0, Lcom/hijacker/InstallFirmwareDialog;->utilSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->this$0:Lcom/hijacker/InstallFirmwareDialog;

    iget-object p1, p1, Lcom/hijacker/InstallFirmwareDialog;->utilSpinner:Landroid/widget/Spinner;

    iget v0, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->defaultIndex:I

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object p1, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->this$0:Lcom/hijacker/InstallFirmwareDialog;

    iget-object p1, p1, Lcom/hijacker/InstallFirmwareDialog;->utilSpinner:Landroid/widget/Spinner;

    new-instance v0, Lcom/hijacker/InstallFirmwareDialog$InitTask$1;

    invoke-direct {v0, p0}, Lcom/hijacker/InstallFirmwareDialog$InitTask$1;-><init>(Lcom/hijacker/InstallFirmwareDialog$InitTask;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p1, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->this$0:Lcom/hijacker/InstallFirmwareDialog;

    iget-object p1, p1, Lcom/hijacker/InstallFirmwareDialog;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask;->this$0:Lcom/hijacker/InstallFirmwareDialog;

    iget-object v0, v0, Lcom/hijacker/InstallFirmwareDialog;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    return-void
.end method
