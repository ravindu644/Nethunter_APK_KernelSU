.class final Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Transition.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/core/TransitionKt;->createChildTransitionInternal(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/runtime/DisposableEffectScope;",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transition.kt\nandroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$1\n+ 2 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,1050:1\n62#2,5:1051\n*S KotlinDebug\n*F\n+ 1 Transition.kt\nandroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$1\n*L\n709#1:1051,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_createChildTransitionInternal:Landroidx/compose/animation/core/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;"
        }
    .end annotation
.end field

.field final synthetic $transition:Landroidx/compose/animation/core/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$1;->$this_createChildTransitionInternal:Landroidx/compose/animation/core/Transition;

    iput-object p2, p0, Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$1;->$transition:Landroidx/compose/animation/core/Transition;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 2

    const-string v0, "$this$DisposableEffect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$1;->$this_createChildTransitionInternal:Landroidx/compose/animation/core/Transition;

    iget-object v0, p0, Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$1;->$transition:Landroidx/compose/animation/core/Transition;

    invoke-virtual {p1, v0}, Landroidx/compose/animation/core/Transition;->addTransition$animation_core_release(Landroidx/compose/animation/core/Transition;)Z

    iget-object p1, p0, Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$1;->$this_createChildTransitionInternal:Landroidx/compose/animation/core/Transition;

    iget-object v0, p0, Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$1;->$transition:Landroidx/compose/animation/core/Transition;

    new-instance v1, Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$1$invoke$$inlined$onDispose$1;

    invoke-direct {v1, p1, v0}, Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$1$invoke$$inlined$onDispose$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition;)V

    check-cast v1, Landroidx/compose/runtime/DisposableEffectResult;

    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$1;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p1

    return-object p1
.end method
