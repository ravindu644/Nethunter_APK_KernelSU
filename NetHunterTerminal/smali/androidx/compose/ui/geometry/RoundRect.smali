.class public final Landroidx/compose/ui/geometry/RoundRect;
.super Ljava/lang/Object;
.source "RoundRect.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/geometry/RoundRect$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008!\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u0000 >2\u00020\u0001:\u0001>BP\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\u0003H\u00c6\u0003J\u0019\u0010!\u001a\u00020\u0008H\u00c6\u0003\u00f8\u0001\u0000\u00f8\u0001\u0002\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\"\u0010\u0011J\u0019\u0010#\u001a\u00020\u0008H\u00c6\u0003\u00f8\u0001\u0000\u00f8\u0001\u0002\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008$\u0010\u0011J\u0019\u0010%\u001a\u00020\u0008H\u00c6\u0003\u00f8\u0001\u0000\u00f8\u0001\u0002\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008&\u0010\u0011J\u0019\u0010\'\u001a\u00020\u0008H\u00c6\u0003\u00f8\u0001\u0000\u00f8\u0001\u0002\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008(\u0010\u0011J\u001b\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008-\u0010.Jf\u0010/\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0008H\u00c6\u0001\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u00080\u00101J\u0013\u00102\u001a\u00020*2\u0008\u00103\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00104\u001a\u000205H\u00d6\u0001J(\u00106\u001a\u00020\u00032\u0006\u00107\u001a\u00020\u00032\u0006\u00108\u001a\u00020\u00032\u0006\u00109\u001a\u00020\u00032\u0006\u0010:\u001a\u00020\u0003H\u0002J\u0008\u0010;\u001a\u00020\u0000H\u0002J\u0008\u0010<\u001a\u00020=H\u0016R\u0010\u0010\r\u001a\u0004\u0018\u00010\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u000b\u001a\u00020\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\n\u001a\u00020\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0011R\u0011\u0010\u0014\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u000fR\u001c\u0010\u0007\u001a\u00020\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\u0019\u0010\u0011R\u001c\u0010\t\u001a\u00020\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\u001a\u0010\u0011R\u0011\u0010\u001b\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u000f\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006?"
    }
    d2 = {
        "Landroidx/compose/ui/geometry/RoundRect;",
        "",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "topLeftCornerRadius",
        "Landroidx/compose/ui/geometry/CornerRadius;",
        "topRightCornerRadius",
        "bottomRightCornerRadius",
        "bottomLeftCornerRadius",
        "(FFFFJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "_scaledRadiiRect",
        "getBottom",
        "()F",
        "getBottomLeftCornerRadius-kKHJgLs",
        "()J",
        "J",
        "getBottomRightCornerRadius-kKHJgLs",
        "height",
        "getHeight",
        "getLeft",
        "getRight",
        "getTop",
        "getTopLeftCornerRadius-kKHJgLs",
        "getTopRightCornerRadius-kKHJgLs",
        "width",
        "getWidth",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component5-kKHJgLs",
        "component6",
        "component6-kKHJgLs",
        "component7",
        "component7-kKHJgLs",
        "component8",
        "component8-kKHJgLs",
        "contains",
        "",
        "point",
        "Landroidx/compose/ui/geometry/Offset;",
        "contains-k-4lQ0M",
        "(J)Z",
        "copy",
        "copy-MDFrsts",
        "(FFFFJJJJ)Landroidx/compose/ui/geometry/RoundRect;",
        "equals",
        "other",
        "hashCode",
        "",
        "minRadius",
        "min",
        "radius1",
        "radius2",
        "limit",
        "scaledRadiiRect",
        "toString",
        "",
        "Companion",
        "ui-geometry_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/geometry/RoundRect$Companion;

.field private static final Zero:Landroidx/compose/ui/geometry/RoundRect;


# instance fields
.field private _scaledRadiiRect:Landroidx/compose/ui/geometry/RoundRect;

.field private final bottom:F

.field private final bottomLeftCornerRadius:J

.field private final bottomRightCornerRadius:J

.field private final left:F

.field private final right:F

.field private final top:F

.field private final topLeftCornerRadius:J

.field private final topRightCornerRadius:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroidx/compose/ui/geometry/RoundRect$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/geometry/RoundRect$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/geometry/RoundRect;->Companion:Landroidx/compose/ui/geometry/RoundRect$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v0, Landroidx/compose/ui/geometry/CornerRadius;->Companion:Landroidx/compose/ui/geometry/CornerRadius$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/CornerRadius$Companion;->getZero-kKHJgLs()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/geometry/RoundRectKt;->RoundRect-gG7oq9Y(FFFFJ)Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/geometry/RoundRect;->Zero:Landroidx/compose/ui/geometry/RoundRect;

    return-void
.end method

.method private constructor <init>(FFFFJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/geometry/RoundRect;->left:F

    iput p2, p0, Landroidx/compose/ui/geometry/RoundRect;->top:F

    iput p3, p0, Landroidx/compose/ui/geometry/RoundRect;->right:F

    iput p4, p0, Landroidx/compose/ui/geometry/RoundRect;->bottom:F

    iput-wide p5, p0, Landroidx/compose/ui/geometry/RoundRect;->topLeftCornerRadius:J

    iput-wide p7, p0, Landroidx/compose/ui/geometry/RoundRect;->topRightCornerRadius:J

    iput-wide p9, p0, Landroidx/compose/ui/geometry/RoundRect;->bottomRightCornerRadius:J

    iput-wide p11, p0, Landroidx/compose/ui/geometry/RoundRect;->bottomLeftCornerRadius:J

    return-void
.end method

.method public synthetic constructor <init>(FFFFJJJJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/compose/ui/geometry/CornerRadius;->Companion:Landroidx/compose/ui/geometry/CornerRadius$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/CornerRadius$Companion;->getZero-kKHJgLs()J

    move-result-wide v1

    move-wide v8, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v8, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    sget-object v1, Landroidx/compose/ui/geometry/CornerRadius;->Companion:Landroidx/compose/ui/geometry/CornerRadius$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/CornerRadius$Companion;->getZero-kKHJgLs()J

    move-result-wide v1

    move-wide v10, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v10, p7

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    sget-object v1, Landroidx/compose/ui/geometry/CornerRadius;->Companion:Landroidx/compose/ui/geometry/CornerRadius$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/CornerRadius$Companion;->getZero-kKHJgLs()J

    move-result-wide v1

    move-wide v12, v1

    goto :goto_2

    :cond_2
    move-wide/from16 v12, p9

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    sget-object v0, Landroidx/compose/ui/geometry/CornerRadius;->Companion:Landroidx/compose/ui/geometry/CornerRadius$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/CornerRadius$Companion;->getZero-kKHJgLs()J

    move-result-wide v0

    move-wide v14, v0

    goto :goto_3

    :cond_3
    move-wide/from16 v14, p11

    :goto_3
    const/16 v16, 0x0

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v3 .. v16}, Landroidx/compose/ui/geometry/RoundRect;-><init>(FFFFJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(FFFFJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Landroidx/compose/ui/geometry/RoundRect;-><init>(FFFFJJJJ)V

    return-void
.end method

.method public static final synthetic access$getZero$cp()Landroidx/compose/ui/geometry/RoundRect;
    .locals 1

    sget-object v0, Landroidx/compose/ui/geometry/RoundRect;->Zero:Landroidx/compose/ui/geometry/RoundRect;

    return-object v0
.end method

.method public static synthetic copy-MDFrsts$default(Landroidx/compose/ui/geometry/RoundRect;FFFFJJJJILjava/lang/Object;)Landroidx/compose/ui/geometry/RoundRect;
    .locals 14

    move-object v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Landroidx/compose/ui/geometry/RoundRect;->left:F

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Landroidx/compose/ui/geometry/RoundRect;->top:F

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Landroidx/compose/ui/geometry/RoundRect;->right:F

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Landroidx/compose/ui/geometry/RoundRect;->bottom:F

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-wide v6, v0, Landroidx/compose/ui/geometry/RoundRect;->topLeftCornerRadius:J

    goto :goto_4

    :cond_4
    move-wide/from16 v6, p5

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-wide v8, v0, Landroidx/compose/ui/geometry/RoundRect;->topRightCornerRadius:J

    goto :goto_5

    :cond_5
    move-wide/from16 v8, p7

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-wide v10, v0, Landroidx/compose/ui/geometry/RoundRect;->bottomRightCornerRadius:J

    goto :goto_6

    :cond_6
    move-wide/from16 v10, p9

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-wide v12, v0, Landroidx/compose/ui/geometry/RoundRect;->bottomLeftCornerRadius:J

    goto :goto_7

    :cond_7
    move-wide/from16 v12, p11

    :goto_7
    move p1, v2

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move-wide/from16 p5, v6

    move-wide/from16 p7, v8

    move-wide/from16 p9, v10

    move-wide/from16 p11, v12

    invoke-virtual/range {p0 .. p12}, Landroidx/compose/ui/geometry/RoundRect;->copy-MDFrsts(FFFFJJJJ)Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v0

    return-object v0
.end method

.method public static final getZero()Landroidx/compose/ui/geometry/RoundRect;
    .locals 1

    sget-object v0, Landroidx/compose/ui/geometry/RoundRect;->Companion:Landroidx/compose/ui/geometry/RoundRect$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect$Companion;->getZero()Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v0

    return-object v0
.end method

.method private final minRadius(FFFF)F
    .locals 0

    add-float/2addr p2, p3

    cmpl-float p3, p2, p4

    if-lez p3, :cond_1

    const/4 p3, 0x0

    cmpg-float p3, p2, p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_1

    div-float/2addr p4, p2

    invoke-static {p1, p4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :cond_1
    return p1
.end method

.method private final scaledRadiiRect()Landroidx/compose/ui/geometry/RoundRect;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/geometry/RoundRect;->_scaledRadiiRect:Landroidx/compose/ui/geometry/RoundRect;

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/geometry/RoundRect;

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/geometry/RoundRect;->getBottomLeftCornerRadius-kKHJgLs()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/compose/ui/geometry/RoundRect;->minRadius(FFFF)F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/geometry/RoundRect;->getTopRightCornerRadius-kKHJgLs()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/geometry/RoundRect;->getWidth()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/ui/geometry/RoundRect;->minRadius(FFFF)F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/geometry/RoundRect;->getTopRightCornerRadius-kKHJgLs()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/geometry/RoundRect;->getBottomRightCornerRadius-kKHJgLs()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/ui/geometry/RoundRect;->minRadius(FFFF)F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/geometry/RoundRect;->getBottomRightCornerRadius-kKHJgLs()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/geometry/RoundRect;->getBottomLeftCornerRadius-kKHJgLs()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/geometry/RoundRect;->getWidth()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/ui/geometry/RoundRect;->minRadius(FFFF)F

    move-result v1

    new-instance v15, Landroidx/compose/ui/geometry/RoundRect;

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/geometry/RoundRect;->getLeft()F

    move-result v2

    mul-float v3, v2, v1

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/geometry/RoundRect;->getTop()F

    move-result v2

    mul-float v4, v2, v1

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/geometry/RoundRect;->getRight()F

    move-result v2

    mul-float v5, v2, v1

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/geometry/RoundRect;->getBottom()F

    move-result v2

    mul-float v6, v2, v1

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v2

    mul-float v2, v2, v1

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v7

    mul-float v7, v7, v1

    invoke-static {v2, v7}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius(FF)J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/geometry/RoundRect;->getTopRightCornerRadius-kKHJgLs()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v2

    mul-float v2, v2, v1

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/geometry/RoundRect;->getTopRightCornerRadius-kKHJgLs()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v9

    mul-float v9, v9, v1

    invoke-static {v2, v9}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius(FF)J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/geometry/RoundRect;->getBottomRightCornerRadius-kKHJgLs()J

    move-result-wide v11

    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v2

    mul-float v2, v2, v1

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/geometry/RoundRect;->getBottomRightCornerRadius-kKHJgLs()J

    move-result-wide v11

    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v11

    mul-float v11, v11, v1

    invoke-static {v2, v11}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius(FF)J

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/geometry/RoundRect;->getBottomLeftCornerRadius-kKHJgLs()J

    move-result-wide v13

    invoke-static {v13, v14}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v2

    mul-float v2, v2, v1

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/geometry/RoundRect;->getBottomLeftCornerRadius-kKHJgLs()J

    move-result-wide v13

    invoke-static {v13, v14}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v13

    mul-float v13, v13, v1

    invoke-static {v2, v13}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius(FF)J

    move-result-wide v13

    const/4 v1, 0x0

    move-object v2, v15

    move-object/from16 v16, v15

    move-object v15, v1

    invoke-direct/range {v2 .. v15}, Landroidx/compose/ui/geometry/RoundRect;-><init>(FFFFJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v16

    iput-object v1, v0, Landroidx/compose/ui/geometry/RoundRect;->_scaledRadiiRect:Landroidx/compose/ui/geometry/RoundRect;

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/geometry/RoundRect;->left:F

    return v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/geometry/RoundRect;->top:F

    return v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/geometry/RoundRect;->right:F

    return v0
.end method

.method public final component4()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/geometry/RoundRect;->bottom:F

    return v0
.end method

.method public final component5-kKHJgLs()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/geometry/RoundRect;->topLeftCornerRadius:J

    return-wide v0
.end method

.method public final component6-kKHJgLs()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/geometry/RoundRect;->topRightCornerRadius:J

    return-wide v0
.end method

.method public final component7-kKHJgLs()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/geometry/RoundRect;->bottomRightCornerRadius:J

    return-wide v0
.end method

.method public final component8-kKHJgLs()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/geometry/RoundRect;->bottomLeftCornerRadius:J

    return-wide v0
.end method

.method public final contains-k-4lQ0M(J)Z
    .locals 7

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    iget v1, p0, Landroidx/compose/ui/geometry/RoundRect;->left:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_6

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    iget v1, p0, Landroidx/compose/ui/geometry/RoundRect;->right:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_6

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    iget v1, p0, Landroidx/compose/ui/geometry/RoundRect;->top:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_6

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    iget v1, p0, Landroidx/compose/ui/geometry/RoundRect;->bottom:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/geometry/RoundRect;->scaledRadiiRect()Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v0

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    iget v3, p0, Landroidx/compose/ui/geometry/RoundRect;->left:F

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v4

    add-float/2addr v3, v4

    const/4 v4, 0x1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v1

    iget v3, p0, Landroidx/compose/ui/geometry/RoundRect;->top:F

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v5

    add-float/2addr v3, v5

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    iget v3, p0, Landroidx/compose/ui/geometry/RoundRect;->left:F

    sub-float/2addr v1, v3

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    iget p2, p0, Landroidx/compose/ui/geometry/RoundRect;->top:F

    sub-float/2addr p1, p2

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result p2

    sub-float/2addr p1, p2

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result p2

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v0

    goto/16 :goto_0

    :cond_1
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    iget v3, p0, Landroidx/compose/ui/geometry/RoundRect;->right:F

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getTopRightCornerRadius-kKHJgLs()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v5

    sub-float/2addr v3, v5

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v1

    iget v3, p0, Landroidx/compose/ui/geometry/RoundRect;->top:F

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getTopRightCornerRadius-kKHJgLs()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v5

    add-float/2addr v3, v5

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    iget v3, p0, Landroidx/compose/ui/geometry/RoundRect;->right:F

    sub-float/2addr v1, v3

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getTopRightCornerRadius-kKHJgLs()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v3

    add-float/2addr v1, v3

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    iget p2, p0, Landroidx/compose/ui/geometry/RoundRect;->top:F

    sub-float/2addr p1, p2

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getTopRightCornerRadius-kKHJgLs()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result p2

    sub-float/2addr p1, p2

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getTopRightCornerRadius-kKHJgLs()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result p2

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getTopRightCornerRadius-kKHJgLs()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v0

    goto/16 :goto_0

    :cond_2
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    iget v3, p0, Landroidx/compose/ui/geometry/RoundRect;->right:F

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getBottomRightCornerRadius-kKHJgLs()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v5

    sub-float/2addr v3, v5

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v1

    iget v3, p0, Landroidx/compose/ui/geometry/RoundRect;->bottom:F

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getBottomRightCornerRadius-kKHJgLs()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v5

    sub-float/2addr v3, v5

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    iget v3, p0, Landroidx/compose/ui/geometry/RoundRect;->right:F

    sub-float/2addr v1, v3

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getBottomRightCornerRadius-kKHJgLs()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v3

    add-float/2addr v1, v3

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    iget p2, p0, Landroidx/compose/ui/geometry/RoundRect;->bottom:F

    sub-float/2addr p1, p2

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getBottomRightCornerRadius-kKHJgLs()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result p2

    add-float/2addr p1, p2

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getBottomRightCornerRadius-kKHJgLs()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result p2

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getBottomRightCornerRadius-kKHJgLs()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v0

    goto :goto_0

    :cond_3
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    iget v3, p0, Landroidx/compose/ui/geometry/RoundRect;->left:F

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getBottomLeftCornerRadius-kKHJgLs()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v5

    add-float/2addr v3, v5

    cmpg-float v1, v1, v3

    if-gez v1, :cond_5

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v1

    iget v3, p0, Landroidx/compose/ui/geometry/RoundRect;->bottom:F

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getBottomLeftCornerRadius-kKHJgLs()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v5

    sub-float/2addr v3, v5

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    iget v3, p0, Landroidx/compose/ui/geometry/RoundRect;->left:F

    sub-float/2addr v1, v3

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getBottomLeftCornerRadius-kKHJgLs()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    iget p2, p0, Landroidx/compose/ui/geometry/RoundRect;->bottom:F

    sub-float/2addr p1, p2

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getBottomLeftCornerRadius-kKHJgLs()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result p2

    add-float/2addr p1, p2

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getBottomLeftCornerRadius-kKHJgLs()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result p2

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getBottomLeftCornerRadius-kKHJgLs()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v0

    :goto_0
    div-float/2addr v1, p2

    div-float/2addr p1, v0

    mul-float v1, v1, v1

    mul-float p1, p1, p1

    add-float/2addr v1, p1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2

    :cond_5
    return v4

    :cond_6
    :goto_1
    return v2
.end method

.method public final copy-MDFrsts(FFFFJJJJ)Landroidx/compose/ui/geometry/RoundRect;
    .locals 15

    new-instance v14, Landroidx/compose/ui/geometry/RoundRect;

    const/4 v13, 0x0

    move-object v0, v14

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    invoke-direct/range {v0 .. v13}, Landroidx/compose/ui/geometry/RoundRect;-><init>(FFFFJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v14
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/geometry/RoundRect;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/geometry/RoundRect;

    iget v1, p0, Landroidx/compose/ui/geometry/RoundRect;->left:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Landroidx/compose/ui/geometry/RoundRect;->left:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/ui/geometry/RoundRect;->top:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Landroidx/compose/ui/geometry/RoundRect;->top:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/compose/ui/geometry/RoundRect;->right:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Landroidx/compose/ui/geometry/RoundRect;->right:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Landroidx/compose/ui/geometry/RoundRect;->bottom:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Landroidx/compose/ui/geometry/RoundRect;->bottom:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Landroidx/compose/ui/geometry/RoundRect;->topLeftCornerRadius:J

    iget-wide v5, p1, Landroidx/compose/ui/geometry/RoundRect;->topLeftCornerRadius:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Landroidx/compose/ui/geometry/RoundRect;->topRightCornerRadius:J

    iget-wide v5, p1, Landroidx/compose/ui/geometry/RoundRect;->topRightCornerRadius:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Landroidx/compose/ui/geometry/RoundRect;->bottomRightCornerRadius:J

    iget-wide v5, p1, Landroidx/compose/ui/geometry/RoundRect;->bottomRightCornerRadius:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Landroidx/compose/ui/geometry/RoundRect;->bottomLeftCornerRadius:J

    iget-wide v5, p1, Landroidx/compose/ui/geometry/RoundRect;->bottomLeftCornerRadius:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->equals-impl0(JJ)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getBottom()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/geometry/RoundRect;->bottom:F

    return v0
.end method

.method public final getBottomLeftCornerRadius-kKHJgLs()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/geometry/RoundRect;->bottomLeftCornerRadius:J

    return-wide v0
.end method

.method public final getBottomRightCornerRadius-kKHJgLs()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/geometry/RoundRect;->bottomRightCornerRadius:J

    return-wide v0
.end method

.method public final getHeight()F
    .locals 2

    iget v0, p0, Landroidx/compose/ui/geometry/RoundRect;->bottom:F

    iget v1, p0, Landroidx/compose/ui/geometry/RoundRect;->top:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getLeft()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/geometry/RoundRect;->left:F

    return v0
.end method

.method public final getRight()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/geometry/RoundRect;->right:F

    return v0
.end method

.method public final getTop()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/geometry/RoundRect;->top:F

    return v0
.end method

.method public final getTopLeftCornerRadius-kKHJgLs()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/geometry/RoundRect;->topLeftCornerRadius:J

    return-wide v0
.end method

.method public final getTopRightCornerRadius-kKHJgLs()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/geometry/RoundRect;->topRightCornerRadius:J

    return-wide v0
.end method

.method public final getWidth()F
    .locals 2

    iget v0, p0, Landroidx/compose/ui/geometry/RoundRect;->right:F

    iget v1, p0, Landroidx/compose/ui/geometry/RoundRect;->left:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/compose/ui/geometry/RoundRect;->left:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/geometry/RoundRect;->top:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/geometry/RoundRect;->right:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/geometry/RoundRect;->bottom:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/ui/geometry/RoundRect;->topLeftCornerRadius:J

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/ui/geometry/RoundRect;->topRightCornerRadius:J

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/ui/geometry/RoundRect;->bottomRightCornerRadius:J

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/ui/geometry/RoundRect;->bottomLeftCornerRadius:J

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->getTopRightCornerRadius-kKHJgLs()J

    move-result-wide v2

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->getBottomRightCornerRadius-kKHJgLs()J

    move-result-wide v4

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->getBottomLeftCornerRadius-kKHJgLs()J

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Landroidx/compose/ui/geometry/RoundRect;->left:F

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->toStringAsFixed(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Landroidx/compose/ui/geometry/RoundRect;->top:F

    invoke-static {v11, v10}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->toStringAsFixed(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Landroidx/compose/ui/geometry/RoundRect;->right:F

    invoke-static {v11, v10}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->toStringAsFixed(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Landroidx/compose/ui/geometry/RoundRect;->bottom:F

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->toStringAsFixed(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/CornerRadius;->equals-impl0(JJ)Z

    move-result v9

    const/16 v11, 0x29

    const-string v12, "RoundRect(rect="

    if-eqz v9, :cond_2

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/geometry/CornerRadius;->equals-impl0(JJ)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/geometry/CornerRadius;->equals-impl0(JJ)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v2

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v3

    cmpg-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", radius="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v0

    invoke-static {v0, v10}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->toStringAsFixed(FI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v3

    invoke-static {v3, v10}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->toStringAsFixed(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v0

    invoke-static {v0, v10}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->toStringAsFixed(FI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", topLeft="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/CornerRadius;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", topRight="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/CornerRadius;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", bottomRight="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/CornerRadius;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", bottomLeft="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/CornerRadius;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
