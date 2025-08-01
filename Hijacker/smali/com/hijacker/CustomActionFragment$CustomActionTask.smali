.class Lcom/hijacker/CustomActionFragment$CustomActionTask;
.super Landroid/os/AsyncTask;
.source "CustomActionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hijacker/CustomActionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomActionTask"
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
.field shell:Lcom/hijacker/Shell;

.field sizeAnimator:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lcom/hijacker/CustomActionFragment;


# direct methods
.method constructor <init>(Lcom/hijacker/CustomActionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/CustomActionFragment$CustomActionTask;->this$0:Lcom/hijacker/CustomActionFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    invoke-static {}, Lcom/hijacker/Shell;->getFreeShell()Lcom/hijacker/Shell;

    move-result-object p1

    iput-object p1, p0, Lcom/hijacker/CustomActionFragment$CustomActionTask;->shell:Lcom/hijacker/Shell;

    sget-object p1, Lcom/hijacker/CustomActionFragment;->selectedAction:Lcom/hijacker/CustomAction;

    iget-object v0, p0, Lcom/hijacker/CustomActionFragment$CustomActionTask;->shell:Lcom/hijacker/Shell;

    sget-object v1, Lcom/hijacker/CustomActionFragment;->targetDevice:Lcom/hijacker/Device;

    invoke-virtual {p1, v0, v1}, Lcom/hijacker/CustomAction;->run(Lcom/hijacker/Shell;Lcom/hijacker/Device;)V

    iget-object p1, p0, Lcom/hijacker/CustomActionFragment$CustomActionTask;->shell:Lcom/hijacker/Shell;

    invoke-virtual {p1}, Lcom/hijacker/Shell;->getShell_out()Ljava/io/BufferedReader;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "ENDOFCUSTOM"

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/hijacker/CustomActionFragment$CustomActionTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    new-array v3, v4, [Ljava/lang/String;

    aput-object v2, v3, v0

    invoke-virtual {p0, v3}, Lcom/hijacker/CustomActionFragment$CustomActionTask;->publishProgress([Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-boolean p1, Lcom/hijacker/MainActivity;->debug:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "HIJACKER/CustomCMDFrag"

    if-eqz p1, :cond_1

    :try_start_1
    const-string p1, "thread done"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    invoke-virtual {p0}, Lcom/hijacker/CustomActionFragment$CustomActionTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/hijacker/CustomActionFragment;->selectedAction:Lcom/hijacker/CustomAction;

    invoke-virtual {p1}, Lcom/hijacker/CustomAction;->hasProcessName()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/hijacker/MainActivity;->debug:Z

    const-string v2, "Killing process named "

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/hijacker/CustomActionFragment;->selectedAction:Lcom/hijacker/CustomAction;

    invoke-virtual {v3}, Lcom/hijacker/CustomAction;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-array p1, v4, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hijacker/CustomActionFragment;->selectedAction:Lcom/hijacker/CustomAction;

    invoke-virtual {v2}, Lcom/hijacker/CustomAction;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    invoke-virtual {p0, p1}, Lcom/hijacker/CustomActionFragment$CustomActionTask;->publishProgress([Ljava/lang/Object;)V

    sget-object p1, Lcom/hijacker/CustomActionFragment;->selectedAction:Lcom/hijacker/CustomAction;

    invoke-virtual {p1}, Lcom/hijacker/CustomAction;->getProcessName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hijacker/MainActivity;->getPIDs(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " kill "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hijacker/Shell;->runOne(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/hijacker/CustomActionFragment;->selectedAction:Lcom/hijacker/CustomAction;

    invoke-virtual {p1}, Lcom/hijacker/CustomAction;->hasStopCmd()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-boolean p1, Lcom/hijacker/MainActivity;->debug:Z

    const-string v2, "Running: "

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/hijacker/CustomActionFragment;->selectedAction:Lcom/hijacker/CustomAction;

    invoke-virtual {v3}, Lcom/hijacker/CustomAction;->getStopCmd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-array p1, v4, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hijacker/CustomActionFragment;->selectedAction:Lcom/hijacker/CustomAction;

    invoke-virtual {v2}, Lcom/hijacker/CustomAction;->getStopCmd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Lcom/hijacker/CustomActionFragment$CustomActionTask;->publishProgress([Ljava/lang/Object;)V

    sget-object p1, Lcom/hijacker/CustomActionFragment;->selectedAction:Lcom/hijacker/CustomAction;

    invoke-virtual {p1}, Lcom/hijacker/CustomAction;->getStopCmd()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hijacker/Shell;->runOne(Ljava/lang/String;)V

    :cond_5
    const-string p1, "Interrupted"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hijacker/CustomActionFragment$CustomActionTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    const-string p1, "Done"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hijacker/CustomActionFragment$CustomActionTask;->publishProgress([Ljava/lang/Object;)V

    :goto_2
    iget-object p1, p0, Lcom/hijacker/CustomActionFragment$CustomActionTask;->shell:Lcom/hijacker/Shell;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/hijacker/Shell;->done()V

    :cond_7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/hijacker/CustomActionFragment$CustomActionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method done()V
    .locals 3

    iget-object v0, p0, Lcom/hijacker/CustomActionFragment$CustomActionTask;->this$0:Lcom/hijacker/CustomActionFragment;

    iget-object v0, v0, Lcom/hijacker/CustomActionFragment;->startBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/hijacker/CustomActionFragment$CustomActionTask;->this$0:Lcom/hijacker/CustomActionFragment;

    iget-object v0, v0, Lcom/hijacker/CustomActionFragment;->startBtn:Landroid/widget/Button;

    const v2, 0x7f10016b

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    sget-object v0, Lcom/hijacker/MainActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v2, v0, v2

    iget-object v2, p0, Lcom/hijacker/CustomActionFragment$CustomActionTask;->this$0:Lcom/hijacker/CustomActionFragment;

    iget v2, v2, Lcom/hijacker/CustomActionFragment;->normalOptHeight:I

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/hijacker/CustomActionFragment$CustomActionTask;->sizeAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/hijacker/CustomActionFragment$CustomActionTask;->this$0:Lcom/hijacker/CustomActionFragment;

    iget-object v1, v1, Lcom/hijacker/CustomActionFragment;->optionsContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/hijacker/CustomActionFragment$CustomActionTask;->sizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/hijacker/CustomActionFragment$CustomActionTask$2;

    invoke-direct {v1, p0}, Lcom/hijacker/CustomActionFragment$CustomActionTask$2;-><init>(Lcom/hijacker/CustomActionFragment$CustomActionTask;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/hijacker/CustomActionFragment$CustomActionTask;->sizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/hijacker/CustomActionFragment$CustomActionTask$3;

    invoke-direct {v1, p0}, Lcom/hijacker/CustomActionFragment$CustomActionTask$3;-><init>(Lcom/hijacker/CustomActionFragment$CustomActionTask;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/hijacker/CustomActionFragment$CustomActionTask;->sizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/hijacker/CustomActionFragment$CustomActionTask;->sizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-static {}, Lcom/hijacker/MainActivity;->notification()V

    return-void
.end method

.method protected onCancelled()V
    .locals 0

    invoke-virtual {p0}, Lcom/hijacker/CustomActionFragment$CustomActionTask;->done()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hijacker/CustomActionFragment$CustomActionTask;->done()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/hijacker/CustomActionFragment$CustomActionTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    iget-object v0, p0, Lcom/hijacker/CustomActionFragment$CustomActionTask;->this$0:Lcom/hijacker/CustomActionFragment;

    iget-object v0, v0, Lcom/hijacker/CustomActionFragment;->startBtn:Landroid/widget/Button;

    const v1, 0x7f100174

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    sget-object v0, Lcom/hijacker/MainActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    new-array v0, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nRunning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/hijacker/CustomActionFragment;->selectedAction:Lcom/hijacker/CustomAction;

    invoke-virtual {v3}, Lcom/hijacker/CustomAction;->getStartCmd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {p0, v0}, Lcom/hijacker/CustomActionFragment$CustomActionTask;->publishProgress([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/hijacker/CustomActionFragment$CustomActionTask;->this$0:Lcom/hijacker/CustomActionFragment;

    iget-object v0, v0, Lcom/hijacker/CustomActionFragment;->consoleScrollView:Landroid/widget/ScrollView;

    const/16 v2, 0x82

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->fullScroll(I)Z

    sget-boolean v0, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Running: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hijacker/CustomActionFragment;->selectedAction:Lcom/hijacker/CustomAction;

    invoke-virtual {v2}, Lcom/hijacker/CustomAction;->getStartCmd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HIJACKER/CustomCMDFrag"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/hijacker/CustomActionFragment$CustomActionTask;->this$0:Lcom/hijacker/CustomActionFragment;

    iget-object v2, v0, Lcom/hijacker/CustomActionFragment;->optionsContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v0, Lcom/hijacker/CustomActionFragment;->normalOptHeight:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/hijacker/CustomActionFragment$CustomActionTask;->this$0:Lcom/hijacker/CustomActionFragment;

    iget-object v2, v2, Lcom/hijacker/CustomActionFragment;->optionsContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    aput v2, v0, v3

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/hijacker/CustomActionFragment$CustomActionTask;->sizeAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/hijacker/CustomActionFragment$CustomActionTask;->this$0:Lcom/hijacker/CustomActionFragment;

    iget-object v1, v1, Lcom/hijacker/CustomActionFragment;->optionsContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/hijacker/CustomActionFragment$CustomActionTask;->sizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/hijacker/CustomActionFragment$CustomActionTask$1;

    invoke-direct {v1, p0}, Lcom/hijacker/CustomActionFragment$CustomActionTask$1;-><init>(Lcom/hijacker/CustomActionFragment$CustomActionTask;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/hijacker/CustomActionFragment$CustomActionTask;->sizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/hijacker/CustomActionFragment$CustomActionTask;->sizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hijacker/CustomActionFragment$CustomActionTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    sget v0, Lcom/hijacker/MainActivity;->currentFragment:I

    const v2, 0x7f09012b

    if-ne v0, v2, :cond_0

    sget-boolean v0, Lcom/hijacker/MainActivity;->background:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hijacker/CustomActionFragment$CustomActionTask;->this$0:Lcom/hijacker/CustomActionFragment;

    iget-object v0, v0, Lcom/hijacker/CustomActionFragment;->consoleView:Landroid/widget/TextView;

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/hijacker/CustomActionFragment$CustomActionTask;->this$0:Lcom/hijacker/CustomActionFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionFragment;->consoleScrollView:Landroid/widget/ScrollView;

    const/16 v0, 0x82

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/hijacker/CustomActionFragment;->console_text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/hijacker/CustomActionFragment;->console_text:Ljava/lang/String;

    :goto_0
    return-void
.end method
