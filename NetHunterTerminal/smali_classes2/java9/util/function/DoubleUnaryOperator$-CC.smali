.class public final synthetic Ljava9/util/function/DoubleUnaryOperator$-CC;
.super Ljava/lang/Object;
.source "DoubleUnaryOperator.java"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    kind = 0x8
    versionHash = "b9fe669522e76a1913eadf452da56796d42e756f2af239d12ad6b753581fecaa"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$andThen(Ljava9/util/function/DoubleUnaryOperator;Ljava9/util/function/DoubleUnaryOperator;)Ljava9/util/function/DoubleUnaryOperator;
    .locals 1
    .param p0, "_this"    # Ljava9/util/function/DoubleUnaryOperator;

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava9/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Ljava9/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda2;-><init>(Ljava9/util/function/DoubleUnaryOperator;Ljava9/util/function/DoubleUnaryOperator;)V

    return-object v0
.end method

.method public static $default$compose(Ljava9/util/function/DoubleUnaryOperator;Ljava9/util/function/DoubleUnaryOperator;)Ljava9/util/function/DoubleUnaryOperator;
    .locals 1
    .param p0, "_this"    # Ljava9/util/function/DoubleUnaryOperator;

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava9/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Ljava9/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda1;-><init>(Ljava9/util/function/DoubleUnaryOperator;Ljava9/util/function/DoubleUnaryOperator;)V

    return-object v0
.end method

.method public static synthetic $private$lambda$andThen$39(Ljava9/util/function/DoubleUnaryOperator;Ljava9/util/function/DoubleUnaryOperator;D)D
    .locals 0
    .param p0, "_this"    # Ljava9/util/function/DoubleUnaryOperator;

    invoke-interface {p0, p2, p3}, Ljava9/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Ljava9/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public static synthetic $private$lambda$compose$38(Ljava9/util/function/DoubleUnaryOperator;Ljava9/util/function/DoubleUnaryOperator;D)D
    .locals 0
    .param p0, "_this"    # Ljava9/util/function/DoubleUnaryOperator;

    invoke-interface {p1, p2, p3}, Ljava9/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Ljava9/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public static identity()Ljava9/util/function/DoubleUnaryOperator;
    .locals 1

    new-instance v0, Ljava9/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava9/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$identity$40(D)D
    .locals 0

    return-wide p0
.end method
