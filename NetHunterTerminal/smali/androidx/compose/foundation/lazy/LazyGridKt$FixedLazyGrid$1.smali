.class final Landroidx/compose/foundation/lazy/LazyGridKt$FixedLazyGrid$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyGrid.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyGridKt;->FixedLazyGrid(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/LazyGridScopeImpl;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/foundation/lazy/LazyListScope;",
        "Lkotlin/Unit;",
        ">;"
    }
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
.field final synthetic $nColumns:I

.field final synthetic $rows:I

.field final synthetic $scope:Landroidx/compose/foundation/lazy/LazyGridScopeImpl;


# direct methods
.method constructor <init>(IILandroidx/compose/foundation/lazy/LazyGridScopeImpl;)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/lazy/LazyGridKt$FixedLazyGrid$1;->$rows:I

    iput p2, p0, Landroidx/compose/foundation/lazy/LazyGridKt$FixedLazyGrid$1;->$nColumns:I

    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyGridKt$FixedLazyGrid$1;->$scope:Landroidx/compose/foundation/lazy/LazyGridScopeImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/LazyGridKt$FixedLazyGrid$1;->invoke(Landroidx/compose/foundation/lazy/LazyListScope;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/LazyListScope;)V
    .locals 7

    const-string v0, "$this$LazyColumn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Landroidx/compose/foundation/lazy/LazyGridKt$FixedLazyGrid$1;->$rows:I

    const/4 v3, 0x0

    new-instance v0, Landroidx/compose/foundation/lazy/LazyGridKt$FixedLazyGrid$1$1;

    iget v1, p0, Landroidx/compose/foundation/lazy/LazyGridKt$FixedLazyGrid$1;->$nColumns:I

    iget-object v4, p0, Landroidx/compose/foundation/lazy/LazyGridKt$FixedLazyGrid$1;->$scope:Landroidx/compose/foundation/lazy/LazyGridScopeImpl;

    invoke-direct {v0, v1, v4}, Landroidx/compose/foundation/lazy/LazyGridKt$FixedLazyGrid$1$1;-><init>(ILandroidx/compose/foundation/lazy/LazyGridScopeImpl;)V

    const v1, -0x3abe1676

    const/4 v4, 0x1

    invoke-static {v1, v4, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function4;

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/lazy/LazyListScope$DefaultImpls;->items$default(Landroidx/compose/foundation/lazy/LazyListScope;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    return-void
.end method
