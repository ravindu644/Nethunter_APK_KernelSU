.class public abstract Lcom/google/common/escape/UnicodeEscaper;
.super Lcom/google/common/escape/Escaper;
.source "UnicodeEscaper.java"


# annotations
.annotation runtime Lcom/google/common/escape/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field private static final DEST_PAD:I = 0x20


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/escape/Escaper;-><init>()V

    return-void
.end method

.method protected static codePointAt(Ljava/lang/CharSequence;II)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "seq",
            "index",
            "end"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ge p1, p2, :cond_5

    add-int/lit8 v0, p1, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const v1, 0xd800

    if-lt p1, v1, :cond_4

    const v1, 0xdfff

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0xdbff

    const-string v2, "\'"

    const-string v3, " in \'"

    const-string v4, " at index "

    const-string v5, "\' with value "

    if-gt p1, v1, :cond_3

    if-ne v0, p2, :cond_1

    neg-int p0, p1

    return p0

    :cond_1
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Expected low surrogate but got char \'"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected low surrogate character \'"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    :goto_0
    return p1

    :cond_5
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index exceeds specified range"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static growBuffer([CII)[C
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dest",
            "index",
            "size"
        }
    .end annotation

    if-ltz p2, :cond_1

    new-array p2, p2, [C

    if-lez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object p2

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Cannot increase internal buffer any further"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/common/escape/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/google/common/escape/UnicodeEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected abstract escape(I)[C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cp"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method protected final escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "index"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Lcom/google/common/escape/Platform;->charBufferFromThreadLocal()[C

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge p2, v0, :cond_6

    invoke-static {p1, p2, v0}, Lcom/google/common/escape/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v5

    if-ltz v5, :cond_5

    invoke-virtual {p0, v5}, Lcom/google/common/escape/UnicodeEscaper;->escape(I)[C

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    :goto_1
    add-int/2addr v5, p2

    if-eqz v6, :cond_4

    sub-int v7, p2, v3

    add-int v8, v4, v7

    array-length v9, v6

    add-int/2addr v9, v8

    array-length v10, v1

    if-ge v10, v9, :cond_1

    sub-int v10, v0, p2

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x20

    invoke-static {v1, v4, v9}, Lcom/google/common/escape/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v1

    :cond_1
    if-lez v7, :cond_2

    invoke-virtual {p1, v3, p2, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    move v4, v8

    :cond_2
    array-length p2, v6

    if-lez p2, :cond_3

    array-length p2, v6

    invoke-static {v6, v2, v1, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, v6

    add-int/2addr v4, p2

    :cond_3
    move v3, v5

    :cond_4
    invoke-virtual {p0, p1, v5, v0}, Lcom/google/common/escape/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result p2

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Trailing high surrogate at end of input"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    sub-int p2, v0, v3

    if-lez p2, :cond_8

    add-int/2addr p2, v4

    array-length v5, v1

    if-ge v5, p2, :cond_7

    invoke-static {v1, v4, p2}, Lcom/google/common/escape/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v1

    :cond_7
    invoke-virtual {p1, v3, v0, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    move v4, p2

    :cond_8
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V

    return-object p1
.end method

.method protected nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "csq",
            "start",
            "end"
        }
    .end annotation

    :goto_0
    if-ge p2, p3, :cond_2

    invoke-static {p1, p2, p3}, Lcom/google/common/escape/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/common/escape/UnicodeEscaper;->escape(I)[C

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    add-int/2addr p2, v0

    goto :goto_0

    :cond_2
    :goto_2
    return p2
.end method
