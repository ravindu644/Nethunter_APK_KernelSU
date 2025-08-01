.class Lcom/hijacker/FeedbackDialog$ReportTask;
.super Landroid/os/AsyncTask;
.source "FeedbackDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hijacker/FeedbackDialog;
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
.field final synthetic this$0:Lcom/hijacker/FeedbackDialog;


# direct methods
.method private constructor <init>(Lcom/hijacker/FeedbackDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/FeedbackDialog$ReportTask;->this$0:Lcom/hijacker/FeedbackDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hijacker/FeedbackDialog;Lcom/hijacker/FeedbackDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hijacker/FeedbackDialog$ReportTask;-><init>(Lcom/hijacker/FeedbackDialog;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    iget-object p1, p0, Lcom/hijacker/FeedbackDialog$ReportTask;->this$0:Lcom/hijacker/FeedbackDialog;

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

    iput-object v0, p1, Lcom/hijacker/FeedbackDialog;->report:Ljava/io/File;

    iget-object p1, p0, Lcom/hijacker/FeedbackDialog$ReportTask;->this$0:Lcom/hijacker/FeedbackDialog;

    iget-object p1, p1, Lcom/hijacker/FeedbackDialog;->report:Ljava/io/File;

    sget-object v0, Lcom/hijacker/MainActivity;->path:Ljava/lang/String;

    invoke-static {}, Lcom/hijacker/Shell;->getFreeShell()Lcom/hijacker/Shell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hijacker/Shell;->getShell()Ljava/lang/Process;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/hijacker/MainActivity;->createReport(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Process;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/hijacker/FeedbackDialog$ReportTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/hijacker/FeedbackDialog$ReportTask;->this$0:Lcom/hijacker/FeedbackDialog;

    iget-object v0, v0, Lcom/hijacker/FeedbackDialog;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz p1, :cond_0

    const-string p1, "HIJACKER/feedbackDialog"

    const-string v0, "Report not generated"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/hijacker/FeedbackDialog$ReportTask;->this$0:Lcom/hijacker/FeedbackDialog;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/hijacker/FeedbackDialog;->report:Ljava/io/File;

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/hijacker/FeedbackDialog$ReportTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/hijacker/FeedbackDialog$ReportTask;->this$0:Lcom/hijacker/FeedbackDialog;

    iget-object v0, v0, Lcom/hijacker/FeedbackDialog;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    return-void
.end method
