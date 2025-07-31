.class public final Lcom/google/android/gms/location/zzq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.2.0"


# direct methods
.method public static zza(I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v1, :cond_1

    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "granularity %d must be a Granularity.GRANULARITY_* constant"

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public static zzb(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "GRANULARITY_FINE"

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const-string p0, "GRANULARITY_COARSE"

    return-object p0

    :cond_2
    const-string p0, "GRANULARITY_PERMISSION_LEVEL"

    return-object p0
.end method
