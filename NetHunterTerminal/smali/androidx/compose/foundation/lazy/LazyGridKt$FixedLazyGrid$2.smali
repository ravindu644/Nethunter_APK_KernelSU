.class final Landroidx/compose/foundation/lazy/LazyGridKt$FixedLazyGrid$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyGrid.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
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
.field final synthetic $$changed:I

.field final synthetic $$default:I

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $nColumns:I

.field final synthetic $scope:Landroidx/compose/foundation/lazy/LazyGridScopeImpl;

.field final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;


# direct methods
.method constructor <init>(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/LazyGridScopeImpl;II)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/lazy/LazyGridKt$FixedLazyGrid$2;->$nColumns:I

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyGridKt$FixedLazyGrid$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyGridKt$FixedLazyGrid$2;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyGridKt$FixedLazyGrid$2;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyGridKt$FixedLazyGrid$2;->$scope:Landroidx/compose/foundation/lazy/LazyGridScopeImpl;

    iput p6, p0, Landroidx/compose/foundation/lazy/LazyGridKt$FixedLazyGrid$2;->$$changed:I

    iput p7, p0, Landroidx/compose/foundation/lazy/LazyGridKt$FixedLazyGrid$2;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/LazyGridKt$FixedLazyGrid$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 8

    iget v0, p0, Landroidx/compose/foundation/lazy/LazyGridKt$FixedLazyGrid$2;->$nColumns:I

    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyGridKt$FixedLazyGrid$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Landroidx/compose/foundation/lazy/LazyGridKt$FixedLazyGrid$2;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v3, p0, Landroidx/compose/foundation/lazy/LazyGridKt$FixedLazyGrid$2;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v4, p0, Landroidx/compose/foundation/lazy/LazyGridKt$FixedLazyGrid$2;->$scope:Landroidx/compose/foundation/lazy/LazyGridScopeImpl;

    iget p2, p0, Landroidx/compose/foundation/lazy/LazyGridKt$FixedLazyGrid$2;->$$changed:I

    or-int/lit8 v6, p2, 0x1

    iget v7, p0, Landroidx/compose/foundation/lazy/LazyGridKt$FixedLazyGrid$2;->$$default:I

    move-object v5, p1

    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/lazy/LazyGridKt;->access$FixedLazyGrid(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/LazyGridScopeImpl;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
