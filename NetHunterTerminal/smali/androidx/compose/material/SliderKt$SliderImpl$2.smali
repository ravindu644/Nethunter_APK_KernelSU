.class final Landroidx/compose/material/SliderKt$SliderImpl$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Slider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderKt;->SliderImpl(ZFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
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

.field final synthetic $colors:Landroidx/compose/material/SliderColors;

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $positionFraction:F

.field final synthetic $tickFractions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $width:F


# direct methods
.method constructor <init>(ZFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZF",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/material/SliderColors;",
            "F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/Modifier;",
            "I)V"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/compose/material/SliderKt$SliderImpl$2;->$enabled:Z

    iput p2, p0, Landroidx/compose/material/SliderKt$SliderImpl$2;->$positionFraction:F

    iput-object p3, p0, Landroidx/compose/material/SliderKt$SliderImpl$2;->$tickFractions:Ljava/util/List;

    iput-object p4, p0, Landroidx/compose/material/SliderKt$SliderImpl$2;->$colors:Landroidx/compose/material/SliderColors;

    iput p5, p0, Landroidx/compose/material/SliderKt$SliderImpl$2;->$width:F

    iput-object p6, p0, Landroidx/compose/material/SliderKt$SliderImpl$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p7, p0, Landroidx/compose/material/SliderKt$SliderImpl$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput p8, p0, Landroidx/compose/material/SliderKt$SliderImpl$2;->$$changed:I

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SliderKt$SliderImpl$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 9

    iget-boolean v0, p0, Landroidx/compose/material/SliderKt$SliderImpl$2;->$enabled:Z

    iget v1, p0, Landroidx/compose/material/SliderKt$SliderImpl$2;->$positionFraction:F

    iget-object v2, p0, Landroidx/compose/material/SliderKt$SliderImpl$2;->$tickFractions:Ljava/util/List;

    iget-object v3, p0, Landroidx/compose/material/SliderKt$SliderImpl$2;->$colors:Landroidx/compose/material/SliderColors;

    iget v4, p0, Landroidx/compose/material/SliderKt$SliderImpl$2;->$width:F

    iget-object v5, p0, Landroidx/compose/material/SliderKt$SliderImpl$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v6, p0, Landroidx/compose/material/SliderKt$SliderImpl$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget p2, p0, Landroidx/compose/material/SliderKt$SliderImpl$2;->$$changed:I

    or-int/lit8 v8, p2, 0x1

    move-object v7, p1

    invoke-static/range {v0 .. v8}, Landroidx/compose/material/SliderKt;->access$SliderImpl(ZFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
