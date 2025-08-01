.class Lcom/hijacker/CrackFragment$CrackTask$5;
.super Ljava/lang/Object;
.source "CrackFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/CrackFragment$CrackTask;->done()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hijacker/CrackFragment$CrackTask;


# direct methods
.method constructor <init>(Lcom/hijacker/CrackFragment$CrackTask;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/CrackFragment$CrackTask$5;->this$1:Lcom/hijacker/CrackFragment$CrackTask;

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

    iget-object p1, p0, Lcom/hijacker/CrackFragment$CrackTask$5;->this$1:Lcom/hijacker/CrackFragment$CrackTask;

    iget-object p1, p1, Lcom/hijacker/CrackFragment$CrackTask;->this$0:Lcom/hijacker/CrackFragment;

    iget-object p1, p1, Lcom/hijacker/CrackFragment;->consoleScrollView:Landroid/widget/ScrollView;

    const/16 v0, 0x82

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    iget-object p1, p0, Lcom/hijacker/CrackFragment$CrackTask$5;->this$1:Lcom/hijacker/CrackFragment$CrackTask;

    iget-object p1, p1, Lcom/hijacker/CrackFragment$CrackTask;->this$0:Lcom/hijacker/CrackFragment;

    iget-object p1, p1, Lcom/hijacker/CrackFragment;->crackScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

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
