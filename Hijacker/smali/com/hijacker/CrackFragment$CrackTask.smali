.class Lcom/hijacker/CrackFragment$CrackTask;
.super Landroid/os/AsyncTask;
.source "CrackFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hijacker/CrackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CrackTask"
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


# static fields
.field static final JOB_CRACK:I = 0x0

.field static final JOB_TEST:I = 0x1


# instance fields
.field animator:Landroid/animation/AnimatorSet;

.field capfile:Ljava/lang/String;

.field cmd:Ljava/lang/String;

.field job:I

.field key:Ljava/lang/String;

.field mode:I

.field startTime:J

.field final synthetic this$0:Lcom/hijacker/CrackFragment;

.field wordlist:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hijacker/CrackFragment;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/hijacker/CrackFragment$CrackTask;->this$0:Lcom/hijacker/CrackFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->startTime:J

    iput p2, p0, Lcom/hijacker/CrackFragment$CrackTask;->job:I

    iput-object p3, p0, Lcom/hijacker/CrackFragment$CrackTask;->capfile:Ljava/lang/String;

    iput-object p4, p0, Lcom/hijacker/CrackFragment$CrackTask;->wordlist:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5

    invoke-virtual {p0}, Lcom/hijacker/CrackFragment$CrackTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz p1, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    iget-object v2, p0, Lcom/hijacker/CrackFragment$CrackTask;->cmd:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iget p1, p0, Lcom/hijacker/CrackFragment$CrackTask;->job:I

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Lcom/hijacker/CrackFragment$CrackTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p1, :cond_3

    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v0

    invoke-virtual {p0, v4}, Lcom/hijacker/CrackFragment$CrackTask;->publishProgress([Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/hijacker/CrackFragment$CrackTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    iget p1, p0, Lcom/hijacker/CrackFragment$CrackTask;->job:I

    if-nez p1, :cond_4

    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/hijacker/MainActivity;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/aircrack-out.txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/hijacker/Shell;->getFreeShell()Lcom/hijacker/Shell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hijacker/Shell;->getShell_out()Ljava/io/BufferedReader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cat "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/hijacker/MainActivity;->path:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/aircrack-out.txt; echo "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->key:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/hijacker/MainActivity;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hijacker/Shell;->done()V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HIJACKER/CrackTask"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/hijacker/CrackFragment$CrackTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method done()V
    .locals 6

    iget-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->this$0:Lcom/hijacker/CrackFragment;

    iget-object v0, v0, Lcom/hijacker/CrackFragment;->startBtn:Landroid/widget/Button;

    const v1, 0x7f10016b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    sget-object v0, Lcom/hijacker/MainActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/4 v0, 0x2

    new-array v2, v0, [I

    aput v1, v2, v1

    iget-object v3, p0, Lcom/hijacker/CrackFragment$CrackTask;->this$0:Lcom/hijacker/CrackFragment;

    iget v3, v3, Lcom/hijacker/CrackFragment;->normalOptHeight:I

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/hijacker/CrackFragment$CrackTask;->this$0:Lcom/hijacker/CrackFragment;

    iget-object v3, v3, Lcom/hijacker/CrackFragment;->optionsContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    new-instance v3, Lcom/hijacker/CrackFragment$CrackTask$3;

    invoke-direct {v3, p0}, Lcom/hijacker/CrackFragment$CrackTask$3;-><init>(Lcom/hijacker/CrackFragment$CrackTask;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v3, v0, [I

    aput v1, v3, v1

    iget-object v5, p0, Lcom/hijacker/CrackFragment$CrackTask;->this$0:Lcom/hijacker/CrackFragment;

    iget v5, v5, Lcom/hijacker/CrackFragment;->normalTestBtnWidth:I

    aput v5, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iget-object v5, p0, Lcom/hijacker/CrackFragment$CrackTask;->this$0:Lcom/hijacker/CrackFragment;

    iget-object v5, v5, Lcom/hijacker/CrackFragment;->speedTestBtn:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    new-instance v5, Lcom/hijacker/CrackFragment$CrackTask$4;

    invoke-direct {v5, p0}, Lcom/hijacker/CrackFragment$CrackTask$4;-><init>(Lcom/hijacker/CrackFragment$CrackTask;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/hijacker/CrackFragment$CrackTask;->animator:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v2, v0, v1

    aput-object v3, v0, v4

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->animator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/hijacker/CrackFragment$CrackTask$5;

    invoke-direct {v1, p0}, Lcom/hijacker/CrackFragment$CrackTask$5;-><init>(Lcom/hijacker/CrackFragment$CrackTask;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->animator:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->animator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    invoke-static {}, Lcom/hijacker/MainActivity;->notification()V

    return-void
.end method

.method protected onCancelled()V
    .locals 2

    invoke-virtual {p0}, Lcom/hijacker/CrackFragment$CrackTask;->done()V

    iget-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->this$0:Lcom/hijacker/CrackFragment;

    iget-object v0, v0, Lcom/hijacker/CrackFragment;->consoleView:Landroid/widget/TextView;

    const-string v1, "Interrupted"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->this$0:Lcom/hijacker/CrackFragment;

    iget-object v0, v0, Lcom/hijacker/CrackFragment;->consoleScrollView:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hijacker/MainActivity;->stop(I)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5

    invoke-virtual {p0}, Lcom/hijacker/CrackFragment$CrackTask;->done()V

    iget v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->job:I

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Key found: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Key not found\n"

    iget v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Try with different wep bit selection or more IVs\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Time: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/hijacker/CrackFragment$CrackTask;->startTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "s\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/hijacker/MainActivity;->currentFragment:I

    const v1, 0x7f09012a

    if-ne v0, v1, :cond_3

    sget-boolean v0, Lcom/hijacker/MainActivity;->background:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->this$0:Lcom/hijacker/CrackFragment;

    iget-object v0, v0, Lcom/hijacker/CrackFragment;->consoleScrollView:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    iget-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->this$0:Lcom/hijacker/CrackFragment;

    iget-object v0, v0, Lcom/hijacker/CrackFragment;->consoleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hijacker/CrackFragment;->console_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/hijacker/CrackFragment;->console_text:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/hijacker/CrackFragment$CrackTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->startTime:J

    sget-object v0, Lcom/hijacker/MainActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->this$0:Lcom/hijacker/CrackFragment;

    iget-object v0, v0, Lcom/hijacker/CrackFragment;->startBtn:Landroid/widget/Button;

    const v2, 0x7f100174

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    const-string v0, "\nRunning..."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hijacker/CrackFragment$CrackTask;->publishProgress([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->this$0:Lcom/hijacker/CrackFragment;

    iget-object v0, v0, Lcom/hijacker/CrackFragment;->consoleScrollView:Landroid/widget/ScrollView;

    const/16 v2, 0x82

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->fullScroll(I)Z

    iget v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->job:I

    const-string v2, "HIJACKER/CrackTask"

    const-string v3, "su -c "

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const-string v0, "Unknown Job"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/hijacker/CrackFragment$CrackTask;->cancel(Z)Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/hijacker/MainActivity;->aircrack_dir:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -S"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->cmd:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->this$0:Lcom/hijacker/CrackFragment;

    iget-object v0, v0, Lcom/hijacker/CrackFragment;->securityRG:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v5, 0x7f0901db

    if-eq v0, v5, :cond_3

    const v5, 0x7f0901e5

    if-eq v0, v5, :cond_2

    goto :goto_0

    :cond_2
    iput v4, p0, Lcom/hijacker/CrackFragment$CrackTask;->mode:I

    goto :goto_0

    :cond_3
    iput v1, p0, Lcom/hijacker/CrackFragment$CrackTask;->mode:I

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/hijacker/MainActivity;->aircrack_dir:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hijacker/CrackFragment$CrackTask;->capfile:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -l "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/hijacker/MainActivity;->path:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/aircrack-out.txt -a "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hijacker/CrackFragment$CrackTask;->mode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->cmd:Ljava/lang/String;

    iget-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->wordlist:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/hijacker/CrackFragment$CrackTask;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -w "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hijacker/CrackFragment$CrackTask;->wordlist:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->cmd:Ljava/lang/String;

    :cond_4
    iget v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->mode:I

    if-ne v0, v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/hijacker/CrackFragment$CrackTask;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -n "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->cmd:Ljava/lang/String;

    iget-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->this$0:Lcom/hijacker/CrackFragment;

    iget-object v0, v0, Lcom/hijacker/CrackFragment;->wepRG:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/hijacker/CrackFragment$CrackTask;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "64"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->cmd:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/hijacker/CrackFragment$CrackTask;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "512"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->cmd:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/hijacker/CrackFragment$CrackTask;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "256"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->cmd:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/hijacker/CrackFragment$CrackTask;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "152"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->cmd:Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/hijacker/CrackFragment$CrackTask;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "128"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->cmd:Ljava/lang/String;

    :cond_5
    :goto_1
    sget-boolean v0, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->cmd:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->this$0:Lcom/hijacker/CrackFragment;

    iget-object v2, v0, Lcom/hijacker/CrackFragment;->optionsContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v0, Lcom/hijacker/CrackFragment;->normalOptHeight:I

    iget-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->this$0:Lcom/hijacker/CrackFragment;

    iget-object v2, v0, Lcom/hijacker/CrackFragment;->speedTestBtn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getWidth()I

    move-result v2

    iput v2, v0, Lcom/hijacker/CrackFragment;->normalTestBtnWidth:I

    new-array v0, v4, [I

    iget-object v2, p0, Lcom/hijacker/CrackFragment$CrackTask;->this$0:Lcom/hijacker/CrackFragment;

    iget-object v2, v2, Lcom/hijacker/CrackFragment;->optionsContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v0, v3

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/hijacker/CrackFragment$CrackTask;->this$0:Lcom/hijacker/CrackFragment;

    iget-object v2, v2, Lcom/hijacker/CrackFragment;->optionsContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    new-instance v2, Lcom/hijacker/CrackFragment$CrackTask$1;

    invoke-direct {v2, p0}, Lcom/hijacker/CrackFragment$CrackTask$1;-><init>(Lcom/hijacker/CrackFragment$CrackTask;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v4, [I

    iget-object v5, p0, Lcom/hijacker/CrackFragment$CrackTask;->this$0:Lcom/hijacker/CrackFragment;

    iget-object v5, v5, Lcom/hijacker/CrackFragment;->speedTestBtn:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getWidth()I

    move-result v5

    aput v5, v2, v3

    aput v3, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-object v5, p0, Lcom/hijacker/CrackFragment$CrackTask;->this$0:Lcom/hijacker/CrackFragment;

    iget-object v5, v5, Lcom/hijacker/CrackFragment;->speedTestBtn:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    new-instance v5, Lcom/hijacker/CrackFragment$CrackTask$2;

    invoke-direct {v5, p0}, Lcom/hijacker/CrackFragment$CrackTask$2;-><init>(Lcom/hijacker/CrackFragment$CrackTask;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/hijacker/CrackFragment$CrackTask;->animator:Landroid/animation/AnimatorSet;

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v3

    aput-object v2, v4, v1

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->animator:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->animator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0901d5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hijacker/CrackFragment$CrackTask;->onProgressUpdate([Ljava/lang/String;)V

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

    const v2, 0x7f09012a

    if-ne v0, v2, :cond_0

    sget-boolean v0, Lcom/hijacker/MainActivity;->background:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask;->this$0:Lcom/hijacker/CrackFragment;

    iget-object v0, v0, Lcom/hijacker/CrackFragment;->consoleView:Landroid/widget/TextView;

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/hijacker/CrackFragment$CrackTask;->this$0:Lcom/hijacker/CrackFragment;

    iget-object p1, p1, Lcom/hijacker/CrackFragment;->consoleScrollView:Landroid/widget/ScrollView;

    const/16 v0, 0x82

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/hijacker/CrackFragment;->console_text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/hijacker/CrackFragment;->console_text:Ljava/lang/String;

    :goto_0
    return-void
.end method
