.class final Lcom/google/android/gms/internal/common/zzl;
.super Lcom/google/android/gms/internal/common/zzk;
.source "com.google.android.gms:play-services-basement@@18.3.0"


# instance fields
.field private final zza:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/common/zzk;-><init>()V

    iput-char p1, p0, Lcom/google/android/gms/internal/common/zzl;->zza:C

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iget-char v1, p0, Lcom/google/android/gms/internal/common/zzl;->zza:C

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    rsub-int/lit8 v4, v2, 0x5

    and-int/lit8 v5, v1, 0xf

    const-string v6, "0123456789ABCDEF"

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v0, v4

    shr-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CharMatcher.is(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 2
        0x5cs
        0x75s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data
.end method

.method public final zza(C)Z
    .locals 1

    iget-char v0, p0, Lcom/google/android/gms/internal/common/zzl;->zza:C

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
