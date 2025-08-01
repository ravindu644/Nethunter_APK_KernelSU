.class Lcom/hijacker/SendLogActivity$ReportTask;
.super Landroid/os/AsyncTask;
.source "SendLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hijacker/SendLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field bugReport:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/hijacker/SendLogActivity;


# direct methods
.method private constructor <init>(Lcom/hijacker/SendLogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/SendLogActivity$ReportTask;->this$0:Lcom/hijacker/SendLogActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/hijacker/SendLogActivity$ReportTask;->bugReport:Ljava/lang/StringBuilder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/hijacker/SendLogActivity;Lcom/hijacker/SendLogActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hijacker/SendLogActivity$ReportTask;-><init>(Lcom/hijacker/SendLogActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    iget-object p1, p0, Lcom/hijacker/SendLogActivity$ReportTask;->this$0:Lcom/hijacker/SendLogActivity;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/report.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/hijacker/SendLogActivity;->report:Ljava/io/File;

    iget-object p1, p0, Lcom/hijacker/SendLogActivity$ReportTask;->this$0:Lcom/hijacker/SendLogActivity;

    iget-object p1, p1, Lcom/hijacker/SendLogActivity;->report:Ljava/io/File;

    iget-object v0, p0, Lcom/hijacker/SendLogActivity$ReportTask;->this$0:Lcom/hijacker/SendLogActivity;

    invoke-virtual {v0}, Lcom/hijacker/SendLogActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hijacker/SendLogActivity$ReportTask;->this$0:Lcom/hijacker/SendLogActivity;

    iget-object v1, v1, Lcom/hijacker/SendLogActivity;->stackTrace:Ljava/lang/String;

    iget-object v2, p0, Lcom/hijacker/SendLogActivity$ReportTask;->this$0:Lcom/hijacker/SendLogActivity;

    iget-object v2, v2, Lcom/hijacker/SendLogActivity;->shell:Ljava/lang/Process;

    invoke-static {p1, v0, v1, v2}, Lcom/hijacker/MainActivity;->createReport(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Process;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    iget-object v2, p0, Lcom/hijacker/SendLogActivity$ReportTask;->this$0:Lcom/hijacker/SendLogActivity;

    iget-object v2, v2, Lcom/hijacker/SendLogActivity;->report:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/hijacker/SendLogActivity$ReportTask;->bugReport:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hijacker/SendLogActivity$ReportTask;->bugReport:Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/hijacker/SendLogActivity$ReportTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/hijacker/SendLogActivity$ReportTask;->this$0:Lcom/hijacker/SendLogActivity;

    iget-object v0, v0, Lcom/hijacker/SendLogActivity;->progressBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hijacker/SendLogActivity$ReportTask;->this$0:Lcom/hijacker/SendLogActivity;

    iget-object p1, p1, Lcom/hijacker/SendLogActivity;->console:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p1, p0, Lcom/hijacker/SendLogActivity$ReportTask;->this$0:Lcom/hijacker/SendLogActivity;

    iget-object p1, p1, Lcom/hijacker/SendLogActivity;->console:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/hijacker/SendLogActivity$ReportTask;->bugReport:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/hijacker/SendLogActivity$ReportTask;->this$0:Lcom/hijacker/SendLogActivity;

    iget-object p1, p1, Lcom/hijacker/SendLogActivity;->sendEmailBtn:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/hijacker/SendLogActivity$ReportTask;->this$0:Lcom/hijacker/SendLogActivity;

    iget-object p1, p1, Lcom/hijacker/SendLogActivity;->console:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/hijacker/SendLogActivity$ReportTask;->this$0:Lcom/hijacker/SendLogActivity;

    const v1, 0x7f10013c

    invoke-virtual {v0, v1}, Lcom/hijacker/SendLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/hijacker/SendLogActivity$ReportTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
