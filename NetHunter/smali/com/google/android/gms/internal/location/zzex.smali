.class public abstract Lcom/google/android/gms/internal/location/zzex;
.super Lcom/google/android/gms/internal/location/zzeu;
.source "com.google.android.gms:play-services-location@@21.2.0"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/location/zzfa;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/location/zzev;

    sget-object v1, Lcom/google/android/gms/internal/location/zzey;->zza:Lcom/google/android/gms/internal/location/zzex;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/location/zzev;-><init>(Lcom/google/android/gms/internal/location/zzex;I)V

    sput-object v0, Lcom/google/android/gms/internal/location/zzex;->zza:Lcom/google/android/gms/internal/location/zzfa;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/location/zzeu;-><init>()V

    return-void
.end method

.method public static zzi()Lcom/google/android/gms/internal/location/zzex;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/location/zzey;->zza:Lcom/google/android/gms/internal/location/zzex;

    return-object v0
.end method

.method public static zzj(Ljava/util/Collection;)Lcom/google/android/gms/internal/location/zzex;
    .locals 3

    instance-of v0, p0, Lcom/google/android/gms/internal/location/zzeu;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/location/zzeu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzeu;->zze()Lcom/google/android/gms/internal/location/zzex;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzex;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzeu;->toArray()[Ljava/lang/Object;

    move-result-object p0

    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/location/zzex;->zzk([Ljava/lang/Object;I)Lcom/google/android/gms/internal/location/zzex;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x9

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "at index "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/location/zzex;->zzk([Ljava/lang/Object;I)Lcom/google/android/gms/internal/location/zzex;

    move-result-object p0

    return-object p0
.end method

.method static zzk([Ljava/lang/Object;I)Lcom/google/android/gms/internal/location/zzex;
    .locals 1

    if-nez p1, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/location/zzey;->zza:Lcom/google/android/gms/internal/location/zzex;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/location/zzey;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/location/zzey;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/location/zzex;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_2

    :cond_0
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    check-cast p1, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_3

    goto :goto_0

    :cond_3
    instance-of v3, p1, Ljava/util/RandomAccess;

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_9

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/location/zzeq;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/location/zzeq;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_9
    :goto_2
    return v0
.end method

.method public final hashCode()I
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzex;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    if-ge v1, v0, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/location/zzex;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/location/zzex;->zzl(I)Lcom/google/android/gms/internal/location/zzfa;

    move-result-object v0

    return-object v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public final synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/location/zzex;->zzl(I)Lcom/google/android/gms/internal/location/zzfa;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/location/zzex;->zzl(I)Lcom/google/android/gms/internal/location/zzfa;

    move-result-object p1

    return-object p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/location/zzex;->zzh(II)Lcom/google/android/gms/internal/location/zzex;

    move-result-object p1

    return-object p1
.end method

.method public final zza()Lcom/google/android/gms/internal/location/zzez;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/location/zzex;->zzl(I)Lcom/google/android/gms/internal/location/zzfa;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/location/zzex;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method zzg([Ljava/lang/Object;I)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzex;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/location/zzex;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method public zzh(II)Lcom/google/android/gms/internal/location/zzex;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzex;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/location/zzer;->zze(III)V

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzex;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/location/zzey;->zza:Lcom/google/android/gms/internal/location/zzex;

    return-object p1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/location/zzew;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/location/zzew;-><init>(Lcom/google/android/gms/internal/location/zzex;II)V

    return-object v0
.end method

.method public final zzl(I)Lcom/google/android/gms/internal/location/zzfa;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzex;->size()I

    move-result v0

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/location/zzer;->zzd(IILjava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzex;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/location/zzex;->zza:Lcom/google/android/gms/internal/location/zzfa;

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/location/zzev;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/location/zzev;-><init>(Lcom/google/android/gms/internal/location/zzex;I)V

    return-object v0
.end method
