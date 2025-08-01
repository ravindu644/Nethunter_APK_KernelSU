.class public Lcom/hijacker/SendLogActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SendLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hijacker/SendLogActivity$SetupTask;,
        Lcom/hijacker/SendLogActivity$ReportTask;
    }
.end annotation


# static fields
.field static busybox:Ljava/lang/String;


# instance fields
.field console:Landroid/widget/TextView;

.field progressBar:Landroid/view/View;

.field report:Ljava/io/File;

.field rootView:Landroid/view/View;

.field sendEmailBtn:Landroid/view/View;

.field shell:Ljava/lang/Process;

.field shell_in:Ljava/io/PrintWriter;

.field shell_out:Ljava/io/BufferedReader;

.field stackTrace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "_"

    const-string v1, " "

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/hijacker/SendLogActivity;->requestWindowFeature(I)Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/hijacker/SendLogActivity;->setFinishOnTouchOutside(Z)V

    const v2, 0x7f0c001d

    invoke-virtual {p0, v2}, Lcom/hijacker/SendLogActivity;->setContentView(I)V

    const v2, 0x7f09003f

    invoke-virtual {p0, v2}, Lcom/hijacker/SendLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/hijacker/SendLogActivity;->rootView:Landroid/view/View;

    const v2, 0x7f090157

    invoke-virtual {p0, v2}, Lcom/hijacker/SendLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/hijacker/SendLogActivity;->progressBar:Landroid/view/View;

    const v2, 0x7f090089

    invoke-virtual {p0, v2}, Lcom/hijacker/SendLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/hijacker/SendLogActivity;->console:Landroid/widget/TextView;

    const v2, 0x7f09017e

    invoke-virtual {p0, v2}, Lcom/hijacker/SendLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/hijacker/SendLogActivity;->sendEmailBtn:Landroid/view/View;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hijacker/SendLogActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/bin/busybox"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/hijacker/SendLogActivity;->busybox:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hijacker/SendLogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "exception"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/hijacker/SendLogActivity;->stackTrace:Ljava/lang/String;

    const-string v3, "HIJACKER/SendLog"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hijacker/SendLogActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, Lcom/hijacker/SendLogActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/hijacker/MainActivity;->versionName:Ljava/lang/String;

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v2, Lcom/hijacker/MainActivity;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v2, Lcom/hijacker/MainActivity;->deviceModel:Ljava/lang/String;

    sget-object v2, Lcom/hijacker/MainActivity;->deviceModel:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/hijacker/MainActivity;->deviceModel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/hijacker/MainActivity;->deviceModel:Ljava/lang/String;

    :cond_0
    sget-object v2, Lcom/hijacker/MainActivity;->deviceModel:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->deviceModel:Ljava/lang/String;

    new-instance v0, Lcom/hijacker/SendLogActivity$SetupTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hijacker/SendLogActivity$SetupTask;-><init>(Lcom/hijacker/SendLogActivity;Lcom/hijacker/SendLogActivity$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, v1, p1}, Lcom/hijacker/SendLogActivity$SetupTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    array-length p1, p3

    const/4 p2, 0x0

    if-lez p1, :cond_0

    aget p1, p3, p2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p3, p0, Lcom/hijacker/SendLogActivity;->shell:Ljava/lang/Process;

    const/16 v0, 0x8

    if-nez p3, :cond_1

    iget-object p1, p0, Lcom/hijacker/SendLogActivity;->progressBar:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/hijacker/SendLogActivity;->console:Landroid/widget/TextView;

    const p2, 0x7f100040

    invoke-virtual {p0, p2}, Lcom/hijacker/SendLogActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    new-instance p1, Lcom/hijacker/SendLogActivity$ReportTask;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/hijacker/SendLogActivity$ReportTask;-><init>(Lcom/hijacker/SendLogActivity;Lcom/hijacker/SendLogActivity$1;)V

    sget-object p3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p3, p2}, Lcom/hijacker/SendLogActivity$ReportTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/hijacker/SendLogActivity;->progressBar:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/hijacker/SendLogActivity;->console:Landroid/widget/TextView;

    const p2, 0x7f10003f

    invoke-virtual {p0, p2}, Lcom/hijacker/SendLogActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public onRestart(Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/hijacker/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/hijacker/SendLogActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/hijacker/SendLogActivity;->finish()V

    return-void
.end method

.method public onUseEmail(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "plain/text"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "droid.hijacker@gmail.com"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.SUBJECT"

    const-string v1, "Hijacker bug report"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/hijacker/SendLogActivity;->report:Ljava/io/File;

    const-string v1, "com.hijacker.provider"

    invoke-static {p0, v1, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v0, 0x7f10013a

    invoke-virtual {p0, v0}, Lcom/hijacker/SendLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/hijacker/SendLogActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public stopAll()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "airodump-ng"

    const-string v2, "aireplay-ng"

    const-string v3, "aircrack-ng"

    const-string v4, "mdk3"

    const-string v5, "reaver"

    const-string v6, "reaver-wash"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/hijacker/SendLogActivity;->busybox:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pidof"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x6

    if-ge v4, v5, :cond_0

    aget-object v5, v1, v4

    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "; echo ENDOFPIDOF\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hijacker/SendLogActivity;->shell_in:Ljava/io/PrintWriter;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/hijacker/SendLogActivity;->shell_in:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    const/4 v1, 0x0

    :goto_1
    const-string v2, "Exception: "

    const-string v4, "HIJACKER/SendLog"

    if-nez v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/hijacker/SendLogActivity;->shell_out:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_2
    const-string v5, "ENDOFPIDOF"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    array-length v5, v1

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_2

    aget-object v7, v1, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/hijacker/SendLogActivity;->shell_out:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "HIJACKER/stopAll"

    const-string v1, "Nothing found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_4
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HIJACKER/Killing..."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/hijacker/SendLogActivity;->shell_in:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kill "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hijacker/SendLogActivity;->shell_in:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    return-void
.end method
