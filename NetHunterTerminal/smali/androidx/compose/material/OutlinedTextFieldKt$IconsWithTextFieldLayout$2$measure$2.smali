.class final Landroidx/compose/material/OutlinedTextFieldKt$IconsWithTextFieldLayout$2$measure$2;
.super Lkotlin/jvm/internal/Lambda;
.source "OutlinedTextField.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/OutlinedTextFieldKt$IconsWithTextFieldLayout$2;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
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
.field final synthetic $animationProgress:F

.field final synthetic $borderPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $height:I

.field final synthetic $labelPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $placeholderPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $singleLine:Z

.field final synthetic $textFieldPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $this_Layout:Landroidx/compose/ui/layout/MeasureScope;

.field final synthetic $trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $width:I


# direct methods
.method constructor <init>(IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;FZLandroidx/compose/ui/layout/MeasureScope;)V
    .locals 0

    iput p1, p0, Landroidx/compose/material/OutlinedTextFieldKt$IconsWithTextFieldLayout$2$measure$2;->$height:I

    iput p2, p0, Landroidx/compose/material/OutlinedTextFieldKt$IconsWithTextFieldLayout$2$measure$2;->$width:I

    iput-object p3, p0, Landroidx/compose/material/OutlinedTextFieldKt$IconsWithTextFieldLayout$2$measure$2;->$leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p4, p0, Landroidx/compose/material/OutlinedTextFieldKt$IconsWithTextFieldLayout$2$measure$2;->$trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p5, p0, Landroidx/compose/material/OutlinedTextFieldKt$IconsWithTextFieldLayout$2$measure$2;->$textFieldPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p6, p0, Landroidx/compose/material/OutlinedTextFieldKt$IconsWithTextFieldLayout$2$measure$2;->$labelPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p7, p0, Landroidx/compose/material/OutlinedTextFieldKt$IconsWithTextFieldLayout$2$measure$2;->$placeholderPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p8, p0, Landroidx/compose/material/OutlinedTextFieldKt$IconsWithTextFieldLayout$2$measure$2;->$borderPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p9, p0, Landroidx/compose/material/OutlinedTextFieldKt$IconsWithTextFieldLayout$2$measure$2;->$animationProgress:F

    iput-boolean p10, p0, Landroidx/compose/material/OutlinedTextFieldKt$IconsWithTextFieldLayout$2$measure$2;->$singleLine:Z

    iput-object p11, p0, Landroidx/compose/material/OutlinedTextFieldKt$IconsWithTextFieldLayout$2$measure$2;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material/OutlinedTextFieldKt$IconsWithTextFieldLayout$2$measure$2;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 13

    const-string v0, "$this$layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Landroidx/compose/material/OutlinedTextFieldKt$IconsWithTextFieldLayout$2$measure$2;->$height:I

    iget v3, p0, Landroidx/compose/material/OutlinedTextFieldKt$IconsWithTextFieldLayout$2$measure$2;->$width:I

    iget-object v4, p0, Landroidx/compose/material/OutlinedTextFieldKt$IconsWithTextFieldLayout$2$measure$2;->$leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v5, p0, Landroidx/compose/material/OutlinedTextFieldKt$IconsWithTextFieldLayout$2$measure$2;->$trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v6, p0, Landroidx/compose/material/OutlinedTextFieldKt$IconsWithTextFieldLayout$2$measure$2;->$textFieldPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v7, p0, Landroidx/compose/material/OutlinedTextFieldKt$IconsWithTextFieldLayout$2$measure$2;->$labelPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v8, p0, Landroidx/compose/material/OutlinedTextFieldKt$IconsWithTextFieldLayout$2$measure$2;->$placeholderPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v9, p0, Landroidx/compose/material/OutlinedTextFieldKt$IconsWithTextFieldLayout$2$measure$2;->$borderPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget v10, p0, Landroidx/compose/material/OutlinedTextFieldKt$IconsWithTextFieldLayout$2$measure$2;->$animationProgress:F

    iget-boolean v11, p0, Landroidx/compose/material/OutlinedTextFieldKt$IconsWithTextFieldLayout$2$measure$2;->$singleLine:Z

    iget-object v0, p0, Landroidx/compose/material/OutlinedTextFieldKt$IconsWithTextFieldLayout$2$measure$2;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureScope;->getDensity()F

    move-result v12

    move-object v1, p1

    invoke-static/range {v1 .. v12}, Landroidx/compose/material/OutlinedTextFieldKt;->access$place(Landroidx/compose/ui/layout/Placeable$PlacementScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;FZF)V

    return-void
.end method
