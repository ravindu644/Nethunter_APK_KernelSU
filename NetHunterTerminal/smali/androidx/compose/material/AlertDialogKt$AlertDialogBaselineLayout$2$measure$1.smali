.class final Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2$measure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AlertDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
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
.field final synthetic $textPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $textPositionY:I

.field final synthetic $titlePlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $titlePositionY:I


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;I)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2$measure$1;->$titlePlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p2, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2$measure$1;->$titlePositionY:I

    iput-object p3, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2$measure$1;->$textPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p4, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2$measure$1;->$textPositionY:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2$measure$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 8

    const-string v0, "$this$layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2$measure$1;->$titlePlaceable:Landroidx/compose/ui/layout/Placeable;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iget v4, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2$measure$1;->$titlePositionY:I

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    :goto_0
    iget-object v2, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2$measure$1;->$textPlaceable:Landroidx/compose/ui/layout/Placeable;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    iget v4, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2$measure$1;->$textPositionY:I

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    :goto_1
    return-void
.end method
