.class public final Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$1;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope$onDispose$1\n+ 2 Transition.kt\nandroidx/compose/animation/core/TransitionKt$createDeferredAnimation$1\n*L\n1#1,483:1\n660#2,2:484\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/compose/runtime/DisposableEffectScope$onDispose$1",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        "dispose",
        "",
        "runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $lazyAnim$inlined:Landroidx/compose/animation/core/Transition$DeferredAnimation;

.field final synthetic $this_createDeferredAnimation$inlined:Landroidx/compose/animation/core/Transition;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$DeferredAnimation;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$1$invoke$$inlined$onDispose$1;->$this_createDeferredAnimation$inlined:Landroidx/compose/animation/core/Transition;

    iput-object p2, p0, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$1$invoke$$inlined$onDispose$1;->$lazyAnim$inlined:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$1$invoke$$inlined$onDispose$1;->$this_createDeferredAnimation$inlined:Landroidx/compose/animation/core/Transition;

    iget-object v1, p0, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$1$invoke$$inlined$onDispose$1;->$lazyAnim$inlined:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    invoke-virtual {v0, v1}, Landroidx/compose/animation/core/Transition;->removeAnimation$animation_core_release(Landroidx/compose/animation/core/Transition$DeferredAnimation;)V

    return-void
.end method
