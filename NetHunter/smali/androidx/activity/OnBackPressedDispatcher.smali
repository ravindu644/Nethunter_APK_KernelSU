.class public final Landroidx/activity/OnBackPressedDispatcher;
.super Ljava/lang/Object;
.source "OnBackPressedDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/OnBackPressedDispatcher$Api33Impl;,
        Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;,
        Landroidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable;
    }
.end annotation


# instance fields
.field private mBackInvokedCallbackRegistered:Z

.field private mEnabledConsumer:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mFallbackOnBackPressed:Ljava/lang/Runnable;

.field private mInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

.field private mOnBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

.field final mOnBackPressedCallbacks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/activity/OnBackPressedCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mOnBackPressedCallbacks:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mBackInvokedCallbackRegistered:Z

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->mFallbackOnBackPressed:Ljava/lang/Runnable;

    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;-><init>(Landroidx/activity/OnBackPressedDispatcher;)V

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->mEnabledConsumer:Landroidx/core/util/Consumer;

    new-instance p1, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda1;-><init>(Landroidx/activity/OnBackPressedDispatcher;)V

    invoke-static {p1}, Landroidx/activity/OnBackPressedDispatcher$Api33Impl;->createOnBackInvokedCallback(Ljava/lang/Runnable;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->mOnBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    :cond_0
    return-void
.end method


# virtual methods
.method public addCallback(Landroidx/activity/OnBackPressedCallback;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/activity/OnBackPressedDispatcher;->addCancellableCallback(Landroidx/activity/OnBackPressedCallback;)Landroidx/activity/Cancellable;

    return-void
.end method

.method public addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V
    .locals 2

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    invoke-direct {v0, p0, p1, p2}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/Lifecycle;Landroidx/activity/OnBackPressedCallback;)V

    invoke-virtual {p2, v0}, Landroidx/activity/OnBackPressedCallback;->addCancellable(Landroidx/activity/Cancellable;)V

    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->updateBackInvokedCallbackState()V

    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->mEnabledConsumer:Landroidx/core/util/Consumer;

    invoke-virtual {p2, p1}, Landroidx/activity/OnBackPressedCallback;->setIsEnabledConsumer(Landroidx/core/util/Consumer;)V

    :cond_1
    return-void
.end method

.method addCancellableCallback(Landroidx/activity/OnBackPressedCallback;)Landroidx/activity/Cancellable;
    .locals 2

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mOnBackPressedCallbacks:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable;

    invoke-direct {v0, p0, p1}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable;-><init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/activity/OnBackPressedCallback;)V

    invoke-virtual {p1, v0}, Landroidx/activity/OnBackPressedCallback;->addCancellable(Landroidx/activity/Cancellable;)V

    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->updateBackInvokedCallbackState()V

    iget-object v1, p0, Landroidx/activity/OnBackPressedDispatcher;->mEnabledConsumer:Landroidx/core/util/Consumer;

    invoke-virtual {p1, v1}, Landroidx/activity/OnBackPressedCallback;->setIsEnabledConsumer(Landroidx/core/util/Consumer;)V

    :cond_0
    return-object v0
.end method

.method public hasEnabledCallbacks()Z
    .locals 2

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mOnBackPressedCallbacks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v1}, Landroidx/activity/OnBackPressedCallback;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$new$0$androidx-activity-OnBackPressedDispatcher(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->updateBackInvokedCallbackState()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mOnBackPressedCallbacks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v1}, Landroidx/activity/OnBackPressedCallback;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroidx/activity/OnBackPressedCallback;->handleOnBackPressed()V

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mFallbackOnBackPressed:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method public setOnBackInvokedDispatcher(Landroid/window/OnBackInvokedDispatcher;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->mInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->updateBackInvokedCallbackState()V

    return-void
.end method

.method updateBackInvokedCallbackState()V
    .locals 4

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->hasEnabledCallbacks()Z

    move-result v0

    iget-object v1, p0, Landroidx/activity/OnBackPressedDispatcher;->mInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Landroidx/activity/OnBackPressedDispatcher;->mBackInvokedCallbackRegistered:Z

    if-nez v3, :cond_0

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mOnBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    invoke-static {v1, v2, v0}, Landroidx/activity/OnBackPressedDispatcher$Api33Impl;->registerOnBackInvokedCallback(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mBackInvokedCallbackRegistered:Z

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mBackInvokedCallbackRegistered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mOnBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    invoke-static {v1, v0}, Landroidx/activity/OnBackPressedDispatcher$Api33Impl;->unregisterOnBackInvokedCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v2, p0, Landroidx/activity/OnBackPressedDispatcher;->mBackInvokedCallbackRegistered:Z

    :cond_1
    :goto_0
    return-void
.end method
