.class public interface abstract Landroidx/compose/foundation/layout/RowScope;
.super Ljava/lang/Object;
.source "Row.kt"


# annotations
.annotation runtime Landroidx/compose/foundation/layout/LayoutScopeMarker;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/layout/RowScope$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008g\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J \u0010\u0006\u001a\u00020\u0003*\u00020\u00032\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008H\'J\u0014\u0010\u0006\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000cH\'J\u000c\u0010\r\u001a\u00020\u0003*\u00020\u0003H\'J\u001e\u0010\u000e\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011H\'\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/RowScope;",
        "",
        "align",
        "Landroidx/compose/ui/Modifier;",
        "alignment",
        "Landroidx/compose/ui/Alignment$Vertical;",
        "alignBy",
        "alignmentLineBlock",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/layout/Measured;",
        "",
        "alignmentLine",
        "Landroidx/compose/ui/layout/HorizontalAlignmentLine;",
        "alignByBaseline",
        "weight",
        "",
        "fill",
        "",
        "foundation-layout_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/ui/Modifier;
.end method

.method public abstract alignBy(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/HorizontalAlignmentLine;)Landroidx/compose/ui/Modifier;
.end method

.method public abstract alignBy(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/Measured;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation
.end method

.method public abstract alignByBaseline(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
.end method

.method public abstract weight(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;
.end method
