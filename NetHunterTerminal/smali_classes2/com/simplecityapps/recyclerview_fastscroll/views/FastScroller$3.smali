.class Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;


# direct methods
.method constructor <init>(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$3;->this$0:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$3;->this$0:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mAnimatingShow:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$3;->this$0:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mAnimatingShow:Z

    return-void
.end method
