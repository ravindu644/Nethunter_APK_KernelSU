.class public interface abstract Landroidx/compose/foundation/text/selection/Selectable;
.super Ljava/lang/Object;
.source "Selectable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/selection/Selectable$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008`\u0018\u00002\u00020\u0001J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&J(\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0013H&J\n\u0010\u0014\u001a\u0004\u0018\u00010\rH&JM\u0010\u0015\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fH&\u00f8\u0001\u0000\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0008\u0010\u001e\u001a\u00020\u001fH&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006 "
    }
    d2 = {
        "Landroidx/compose/foundation/text/selection/Selectable;",
        "",
        "selectableId",
        "",
        "getSelectableId",
        "()J",
        "getBoundingBox",
        "Landroidx/compose/ui/geometry/Rect;",
        "offset",
        "",
        "getHandlePosition",
        "Landroidx/compose/ui/geometry/Offset;",
        "selection",
        "Landroidx/compose/foundation/text/selection/Selection;",
        "isStartHandle",
        "",
        "getHandlePosition-dBAh8RU",
        "(Landroidx/compose/foundation/text/selection/Selection;Z)J",
        "getLayoutCoordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "getSelectAllSelection",
        "getSelection",
        "startPosition",
        "endPosition",
        "containerLayoutCoordinates",
        "adjustment",
        "Landroidx/compose/foundation/text/selection/SelectionAdjustment;",
        "previousSelection",
        "getSelection-Xn-YAUg",
        "(JJLandroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/foundation/text/selection/SelectionAdjustment;Landroidx/compose/foundation/text/selection/Selection;Z)Landroidx/compose/foundation/text/selection/Selection;",
        "getText",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "foundation_release"
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
.method public abstract getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;
.end method

.method public abstract getHandlePosition-dBAh8RU(Landroidx/compose/foundation/text/selection/Selection;Z)J
.end method

.method public abstract getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
.end method

.method public abstract getSelectAllSelection()Landroidx/compose/foundation/text/selection/Selection;
.end method

.method public abstract getSelectableId()J
.end method

.method public abstract getSelection-Xn-YAUg(JJLandroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/foundation/text/selection/SelectionAdjustment;Landroidx/compose/foundation/text/selection/Selection;Z)Landroidx/compose/foundation/text/selection/Selection;
.end method

.method public abstract getText()Landroidx/compose/ui/text/AnnotatedString;
.end method
