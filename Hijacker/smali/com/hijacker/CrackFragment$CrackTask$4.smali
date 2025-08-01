.class Lcom/hijacker/CrackFragment$CrackTask$4;
.super Ljava/lang/Object;
.source "CrackFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    iput-object p1, p0, Lcom/hijacker/CrackFragment$CrackTask$4;->this$1:Lcom/hijacker/CrackFragment$CrackTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/hijacker/CrackFragment$CrackTask$4;->this$1:Lcom/hijacker/CrackFragment$CrackTask;

    iget-object v0, v0, Lcom/hijacker/CrackFragment$CrackTask;->this$0:Lcom/hijacker/CrackFragment;

    iget-object v0, v0, Lcom/hijacker/CrackFragment;->speedTestBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lcom/hijacker/CrackFragment$CrackTask$4;->this$1:Lcom/hijacker/CrackFragment$CrackTask;

    iget-object p1, p1, Lcom/hijacker/CrackFragment$CrackTask;->this$0:Lcom/hijacker/CrackFragment;

    iget-object p1, p1, Lcom/hijacker/CrackFragment;->speedTestBtn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
