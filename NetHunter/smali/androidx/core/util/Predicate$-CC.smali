.class public final synthetic Landroidx/core/util/Predicate$-CC;
.super Ljava/lang/Object;
.source "Predicate.java"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    kind = 0x8
    versionHash = "7a5b85d3ee2e0991ca3502602e9389a98f55c0576b887125894a7ec03823f8d3"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$and(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .locals 1
    .param p0, "_this"    # Landroidx/core/util/Predicate;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroidx/core/util/Predicate$$ExternalSyntheticLambda4;-><init>(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)V

    return-object v0
.end method

.method public static $default$negate(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .locals 1
    .param p0, "_this"    # Landroidx/core/util/Predicate;

    new-instance v0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroidx/core/util/Predicate$$ExternalSyntheticLambda5;-><init>(Landroidx/core/util/Predicate;)V

    return-object v0
.end method

.method public static $default$or(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .locals 1
    .param p0, "_this"    # Landroidx/core/util/Predicate;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroidx/core/util/Predicate$$ExternalSyntheticLambda1;-><init>(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)V

    return-object v0
.end method

.method public static synthetic $private$lambda$and$0(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "_this"    # Landroidx/core/util/Predicate;

    invoke-interface {p0, p2}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic $private$lambda$negate$1(Landroidx/core/util/Predicate;Ljava/lang/Object;)Z
    .locals 0
    .param p0, "_this"    # Landroidx/core/util/Predicate;

    invoke-interface {p0, p1}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static synthetic $private$lambda$or$2(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "_this"    # Landroidx/core/util/Predicate;

    invoke-interface {p0, p2}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p2}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static isEqual(Ljava/lang/Object;)Landroidx/core/util/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/core/util/Predicate<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Landroidx/core/util/Predicate$$ExternalSyntheticLambda2;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroidx/core/util/Predicate$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static synthetic lambda$isEqual$3(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$isEqual$4(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static not(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/core/util/Predicate<",
            "-TT;>;)",
            "Landroidx/core/util/Predicate<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Landroidx/core/util/Predicate;->negate()Landroidx/core/util/Predicate;

    move-result-object p0

    return-object p0
.end method
