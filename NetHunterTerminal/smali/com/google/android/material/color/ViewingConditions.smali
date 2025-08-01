.class final Lcom/google/android/material/color/ViewingConditions;
.super Ljava/lang/Object;
.source "ViewingConditions.java"


# static fields
.field public static final DEFAULT:Lcom/google/android/material/color/ViewingConditions;


# instance fields
.field private final aw:F

.field private final c:F

.field private final fl:F

.field private final flRoot:F

.field private final n:F

.field private final nbb:F

.field private final nc:F

.field private final ncb:F

.field private final rgbD:[F

.field private final z:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/google/android/material/color/ColorUtils;->whitePointD65()[F

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Lcom/google/android/material/color/ColorUtils;->yFromLstar(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x404fd4bbab8b494cL    # 63.66197723675813

    mul-double v2, v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Lcom/google/android/material/color/ViewingConditions;->make([FFFFZ)Lcom/google/android/material/color/ViewingConditions;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/ViewingConditions;

    return-void
.end method

.method private constructor <init>(FFFFFF[FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/color/ViewingConditions;->n:F

    iput p2, p0, Lcom/google/android/material/color/ViewingConditions;->aw:F

    iput p3, p0, Lcom/google/android/material/color/ViewingConditions;->nbb:F

    iput p4, p0, Lcom/google/android/material/color/ViewingConditions;->ncb:F

    iput p5, p0, Lcom/google/android/material/color/ViewingConditions;->c:F

    iput p6, p0, Lcom/google/android/material/color/ViewingConditions;->nc:F

    iput-object p7, p0, Lcom/google/android/material/color/ViewingConditions;->rgbD:[F

    iput p8, p0, Lcom/google/android/material/color/ViewingConditions;->fl:F

    iput p9, p0, Lcom/google/android/material/color/ViewingConditions;->flRoot:F

    iput p10, p0, Lcom/google/android/material/color/ViewingConditions;->z:F

    return-void
.end method

.method static make([FFFFZ)Lcom/google/android/material/color/ViewingConditions;
    .locals 22

    move/from16 v0, p1

    sget-object v1, Lcom/google/android/material/color/Cam16;->XYZ_TO_CAM16RGB:[[F

    const/4 v2, 0x0

    aget v3, p0, v2

    aget-object v4, v1, v2

    aget v5, v4, v2

    mul-float v5, v5, v3

    const/4 v6, 0x1

    aget v7, p0, v6

    aget v8, v4, v6

    mul-float v8, v8, v7

    add-float/2addr v5, v8

    const/4 v8, 0x2

    aget v9, p0, v8

    aget v4, v4, v8

    mul-float v4, v4, v9

    add-float/2addr v5, v4

    aget-object v4, v1, v6

    aget v10, v4, v2

    mul-float v10, v10, v3

    aget v11, v4, v6

    mul-float v11, v11, v7

    add-float/2addr v10, v11

    aget v4, v4, v8

    mul-float v4, v4, v9

    add-float/2addr v10, v4

    aget-object v1, v1, v8

    aget v4, v1, v2

    mul-float v3, v3, v4

    aget v4, v1, v6

    mul-float v7, v7, v4

    add-float/2addr v3, v7

    aget v1, v1, v8

    mul-float v9, v9, v1

    add-float/2addr v3, v9

    const/high16 v1, 0x41200000    # 10.0f

    div-float v4, p3, v1

    const v7, 0x3f4ccccd    # 0.8f

    add-float/2addr v4, v7

    float-to-double v11, v4

    const-wide v13, 0x3feccccccccccccdL    # 0.9

    const v9, 0x3f170a3d    # 0.59f

    cmpl-double v15, v11, v13

    if-ltz v15, :cond_0

    const v7, 0x3f666666    # 0.9f

    sub-float v7, v4, v7

    mul-float v7, v7, v1

    const v1, 0x3f30a3d7    # 0.69f

    invoke-static {v9, v1, v7}, Lcom/google/android/material/color/MathUtils;->lerp(FFF)F

    move-result v1

    goto :goto_0

    :cond_0
    sub-float v7, v4, v7

    mul-float v7, v7, v1

    const v1, 0x3f066666    # 0.525f

    invoke-static {v1, v9, v7}, Lcom/google/android/material/color/MathUtils;->lerp(FFF)F

    move-result v1

    :goto_0
    move/from16 v16, v1

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p4, :cond_1

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    neg-float v7, v0

    const/high16 v9, 0x42280000    # 42.0f

    sub-float/2addr v7, v9

    const/high16 v9, 0x42b80000    # 92.0f

    div-float/2addr v7, v9

    float-to-double v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->exp(D)D

    move-result-wide v11

    double-to-float v7, v11

    const v9, 0x3e8e38e4

    mul-float v7, v7, v9

    sub-float v7, v1, v7

    mul-float v7, v7, v4

    :goto_1
    float-to-double v11, v7

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v11, v13

    if-lez v9, :cond_2

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const-wide/16 v13, 0x0

    cmpg-double v9, v11, v13

    if-gez v9, :cond_3

    const/4 v7, 0x0

    :cond_3
    :goto_2
    const/4 v9, 0x3

    new-array v15, v9, [F

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v12, v11, v5

    mul-float v12, v12, v7

    add-float/2addr v12, v1

    sub-float/2addr v12, v7

    aput v12, v15, v2

    div-float v12, v11, v10

    mul-float v12, v12, v7

    add-float/2addr v12, v1

    sub-float/2addr v12, v7

    aput v12, v15, v6

    div-float/2addr v11, v3

    mul-float v11, v11, v7

    add-float/2addr v11, v1

    sub-float/2addr v11, v7

    aput v11, v15, v8

    const/high16 v7, 0x40a00000    # 5.0f

    mul-float v7, v7, v0

    add-float/2addr v7, v1

    div-float v7, v1, v7

    mul-float v11, v7, v7

    mul-float v11, v11, v7

    mul-float v11, v11, v7

    sub-float/2addr v1, v11

    mul-float v11, v11, v0

    const v7, 0x3dcccccd    # 0.1f

    mul-float v7, v7, v1

    mul-float v7, v7, v1

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    float-to-double v0, v0

    mul-double v0, v0, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v7, v7, v0

    add-float v0, v11, v7

    invoke-static/range {p2 .. p2}, Lcom/google/android/material/color/ColorUtils;->yFromLstar(F)F

    move-result v1

    aget v7, p0, v6

    div-float v12, v1, v7

    float-to-double v13, v12

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    const v7, 0x3fbd70a4    # 1.48f

    add-float v21, v6, v7

    const-wide v6, 0x3fc999999999999aL    # 0.2

    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    const v7, 0x3f39999a    # 0.725f

    div-float v6, v7, v6

    new-array v7, v9, [F

    aget v9, v15, v2

    mul-float v9, v9, v0

    mul-float v9, v9, v5

    float-to-double v13, v9

    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    div-double v13, v13, v17

    const-wide v8, 0x3fdae147ae147ae1L    # 0.42

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    double-to-float v11, v13

    aput v11, v7, v2

    const/4 v1, 0x1

    aget v11, v15, v1

    mul-float v11, v11, v0

    mul-float v11, v11, v10

    float-to-double v10, v11

    div-double v10, v10, v17

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v10, v10

    aput v10, v7, v1

    const/4 v5, 0x2

    aget v10, v15, v5

    mul-float v10, v10, v0

    mul-float v10, v10, v3

    float-to-double v10, v10

    div-double v10, v10, v17

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v3, v8

    aput v3, v7, v5

    aget v2, v7, v2

    const/high16 v5, 0x43c80000    # 400.0f

    mul-float v8, v2, v5

    const v9, 0x41d90a3d    # 27.13f

    add-float/2addr v2, v9

    div-float/2addr v8, v2

    const/4 v1, 0x1

    aget v1, v7, v1

    mul-float v2, v1, v5

    add-float/2addr v1, v9

    div-float/2addr v2, v1

    mul-float v5, v5, v3

    add-float/2addr v3, v9

    div-float/2addr v5, v3

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v8, v8, v1

    add-float/2addr v8, v2

    const v1, 0x3d4ccccd    # 0.05f

    mul-float v5, v5, v1

    add-float/2addr v8, v5

    mul-float v13, v8, v6

    new-instance v1, Lcom/google/android/material/color/ViewingConditions;

    float-to-double v2, v0

    const-wide/high16 v7, 0x3fd0000000000000L    # 0.25

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    move-object v11, v1

    move v14, v6

    move-object v3, v15

    move v15, v6

    move/from16 v17, v4

    move-object/from16 v18, v3

    move/from16 v19, v0

    move/from16 v20, v2

    invoke-direct/range {v11 .. v21}, Lcom/google/android/material/color/ViewingConditions;-><init>(FFFFFF[FFFF)V

    return-object v1
.end method


# virtual methods
.method public getAw()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/color/ViewingConditions;->aw:F

    return v0
.end method

.method getC()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/color/ViewingConditions;->c:F

    return v0
.end method

.method getFl()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/color/ViewingConditions;->fl:F

    return v0
.end method

.method public getFlRoot()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/color/ViewingConditions;->flRoot:F

    return v0
.end method

.method public getN()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/color/ViewingConditions;->n:F

    return v0
.end method

.method public getNbb()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/color/ViewingConditions;->nbb:F

    return v0
.end method

.method getNc()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/color/ViewingConditions;->nc:F

    return v0
.end method

.method getNcb()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/color/ViewingConditions;->ncb:F

    return v0
.end method

.method public getRgbD()[F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/color/ViewingConditions;->rgbD:[F

    return-object v0
.end method

.method getZ()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/color/ViewingConditions;->z:F

    return v0
.end method
