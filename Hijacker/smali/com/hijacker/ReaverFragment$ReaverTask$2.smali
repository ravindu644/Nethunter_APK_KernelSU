.class Lcom/hijacker/ReaverFragment$ReaverTask$2;
.super Ljava/lang/Object;
.source "ReaverFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/ReaverFragment$ReaverTask;->done()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hijacker/ReaverFragment$ReaverTask;


# direct methods
.method constructor <init>(Lcom/hijacker/ReaverFragment$ReaverTask;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/ReaverFragment$ReaverTask$2;->this$1:Lcom/hijacker/ReaverFragment$ReaverTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/hijacker/ReaverFragment$ReaverTask$2;->this$1:Lcom/hijacker/ReaverFragment$ReaverTask;

    iget-object v0, v0, Lcom/hijacker/ReaverFragment$ReaverTask;->this$0:Lcom/hijacker/ReaverFragment;

    iget-object v0, v0, Lcom/hijacker/ReaverFragment;->optionsContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/hijacker/ReaverFragment$ReaverTask$2;->this$1:Lcom/hijacker/ReaverFragment$ReaverTask;

    iget-object p1, p1, Lcom/hijacker/ReaverFragment$ReaverTask;->this$0:Lcom/hijacker/ReaverFragment;

    iget-object p1, p1, Lcom/hijacker/ReaverFragment;->optionsContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
