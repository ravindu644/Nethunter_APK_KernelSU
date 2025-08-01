.class public final Lcom/google/android/material/color/HarmonizedColorAttributes;
.super Ljava/lang/Object;
.source "HarmonizedColorAttributes.java"


# static fields
.field private static final HARMONIZED_MATERIAL_ATTRIBUTES:[I


# instance fields
.field private final attributes:[I

.field private final themeOverlay:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/google/android/material/R$attr;->colorError:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/google/android/material/R$attr;->colorOnError:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/google/android/material/R$attr;->colorErrorContainer:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/google/android/material/R$attr;->colorOnErrorContainer:I

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/material/color/HarmonizedColorAttributes;->HARMONIZED_MATERIAL_ATTRIBUTES:[I

    return-void
.end method

.method private constructor <init>([II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Theme overlay should be used with the accompanying int[] attributes."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/android/material/color/HarmonizedColorAttributes;->attributes:[I

    iput p2, p0, Lcom/google/android/material/color/HarmonizedColorAttributes;->themeOverlay:I

    return-void
.end method

.method public static create([I)Lcom/google/android/material/color/HarmonizedColorAttributes;
    .locals 2

    new-instance v0, Lcom/google/android/material/color/HarmonizedColorAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/color/HarmonizedColorAttributes;-><init>([II)V

    return-object v0
.end method

.method public static create([II)Lcom/google/android/material/color/HarmonizedColorAttributes;
    .locals 1

    new-instance v0, Lcom/google/android/material/color/HarmonizedColorAttributes;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/color/HarmonizedColorAttributes;-><init>([II)V

    return-object v0
.end method

.method public static createMaterialDefaults()Lcom/google/android/material/color/HarmonizedColorAttributes;
    .locals 2

    sget-object v0, Lcom/google/android/material/color/HarmonizedColorAttributes;->HARMONIZED_MATERIAL_ATTRIBUTES:[I

    sget v1, Lcom/google/android/material/R$style;->ThemeOverlay_Material3_HarmonizedColors:I

    invoke-static {v0, v1}, Lcom/google/android/material/color/HarmonizedColorAttributes;->create([II)Lcom/google/android/material/color/HarmonizedColorAttributes;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAttributes()[I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/color/HarmonizedColorAttributes;->attributes:[I

    return-object v0
.end method

.method public getThemeOverlay()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/color/HarmonizedColorAttributes;->themeOverlay:I

    return v0
.end method
