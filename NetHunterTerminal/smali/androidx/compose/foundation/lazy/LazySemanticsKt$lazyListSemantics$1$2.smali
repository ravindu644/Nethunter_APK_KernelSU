.class final Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LazySemantics.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1;->invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "x",
        "",
        "y"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $isVertical:Z

.field final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;


# direct methods
.method constructor <init>(ZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/lazy/LazyListState;)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$2;->$isVertical:Z

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$2;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$2;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$2;->invoke(FF)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(FF)Z
    .locals 6

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$2;->$isVertical:Z

    if-eqz v0, :cond_0

    move p1, p2

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$2;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance p2, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$2$1;

    iget-object v3, p0, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$2;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    const/4 v4, 0x0

    invoke-direct {p2, v3, p1, v4}, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$2$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;FLkotlin/coroutines/Continuation;)V

    move-object v3, p2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 p1, 0x1

    return p1
.end method
