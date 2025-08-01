.class Lcom/hijacker/WordlistDownloadDialog$LoadTask$1;
.super Ljava/lang/Object;
.source "WordlistDownloadDialog.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/WordlistDownloadDialog$LoadTask;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hijacker/WordlistDownloadDialog$LoadTask;


# direct methods
.method constructor <init>(Lcom/hijacker/WordlistDownloadDialog$LoadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/WordlistDownloadDialog$LoadTask$1;->this$1:Lcom/hijacker/WordlistDownloadDialog$LoadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/hijacker/WordlistDownloadDialog$LoadTask$1;->this$1:Lcom/hijacker/WordlistDownloadDialog$LoadTask;

    iget-object p1, p1, Lcom/hijacker/WordlistDownloadDialog$LoadTask;->this$0:Lcom/hijacker/WordlistDownloadDialog;

    iget-object p1, p1, Lcom/hijacker/WordlistDownloadDialog;->progressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
