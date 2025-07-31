.class public final synthetic Lcom/google/common/hash/Hasher$-CC;
.super Ljava/lang/Object;
.source "Hasher.java"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    kind = 0x8
    versionHash = "7a5b85d3ee2e0991ca3502602e9389a98f55c0576b887125894a7ec03823f8d3"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static bridge synthetic $default$putBoolean(Lcom/google/common/hash/Hasher;Z)Lcom/google/common/hash/PrimitiveSink;
    .locals 0
    .param p0, "_this"    # Lcom/google/common/hash/Hasher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x1000
        }
        names = {
            "_this",
            "b"
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/google/common/hash/Hasher;->putBoolean(Z)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$putByte(Lcom/google/common/hash/Hasher;B)Lcom/google/common/hash/PrimitiveSink;
    .locals 0
    .param p0, "_this"    # Lcom/google/common/hash/Hasher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x1000
        }
        names = {
            "_this",
            "b"
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/google/common/hash/Hasher;->putByte(B)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$putBytes(Lcom/google/common/hash/Hasher;Ljava/nio/ByteBuffer;)Lcom/google/common/hash/PrimitiveSink;
    .locals 0
    .param p0, "_this"    # Lcom/google/common/hash/Hasher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x1000
        }
        names = {
            "_this",
            "bytes"
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/google/common/hash/Hasher;->putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$putBytes(Lcom/google/common/hash/Hasher;[B)Lcom/google/common/hash/PrimitiveSink;
    .locals 0
    .param p0, "_this"    # Lcom/google/common/hash/Hasher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x1000
        }
        names = {
            "_this",
            "bytes"
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/google/common/hash/Hasher;->putBytes([B)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$putBytes(Lcom/google/common/hash/Hasher;[BII)Lcom/google/common/hash/PrimitiveSink;
    .locals 0
    .param p0, "_this"    # Lcom/google/common/hash/Hasher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "_this",
            "bytes",
            "off",
            "len"
        }
    .end annotation

    invoke-interface {p0, p1, p2, p3}, Lcom/google/common/hash/Hasher;->putBytes([BII)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$putChar(Lcom/google/common/hash/Hasher;C)Lcom/google/common/hash/PrimitiveSink;
    .locals 0
    .param p0, "_this"    # Lcom/google/common/hash/Hasher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x1000
        }
        names = {
            "_this",
            "c"
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/google/common/hash/Hasher;->putChar(C)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$putDouble(Lcom/google/common/hash/Hasher;D)Lcom/google/common/hash/PrimitiveSink;
    .locals 0
    .param p0, "_this"    # Lcom/google/common/hash/Hasher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x1000
        }
        names = {
            "_this",
            "d"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lcom/google/common/hash/Hasher;->putDouble(D)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$putFloat(Lcom/google/common/hash/Hasher;F)Lcom/google/common/hash/PrimitiveSink;
    .locals 0
    .param p0, "_this"    # Lcom/google/common/hash/Hasher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x1000
        }
        names = {
            "_this",
            "f"
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/google/common/hash/Hasher;->putFloat(F)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$putInt(Lcom/google/common/hash/Hasher;I)Lcom/google/common/hash/PrimitiveSink;
    .locals 0
    .param p0, "_this"    # Lcom/google/common/hash/Hasher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x1000
        }
        names = {
            "_this",
            "i"
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/google/common/hash/Hasher;->putInt(I)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$putLong(Lcom/google/common/hash/Hasher;J)Lcom/google/common/hash/PrimitiveSink;
    .locals 0
    .param p0, "_this"    # Lcom/google/common/hash/Hasher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x1000
        }
        names = {
            "_this",
            "l"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lcom/google/common/hash/Hasher;->putLong(J)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$putShort(Lcom/google/common/hash/Hasher;S)Lcom/google/common/hash/PrimitiveSink;
    .locals 0
    .param p0, "_this"    # Lcom/google/common/hash/Hasher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x1000
        }
        names = {
            "_this",
            "s"
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/google/common/hash/Hasher;->putShort(S)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$putString(Lcom/google/common/hash/Hasher;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/PrimitiveSink;
    .locals 0
    .param p0, "_this"    # Lcom/google/common/hash/Hasher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x1000,
            0x1000
        }
        names = {
            "_this",
            "charSequence",
            "charset"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lcom/google/common/hash/Hasher;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$putUnencodedChars(Lcom/google/common/hash/Hasher;Ljava/lang/CharSequence;)Lcom/google/common/hash/PrimitiveSink;
    .locals 0
    .param p0, "_this"    # Lcom/google/common/hash/Hasher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x1000
        }
        names = {
            "_this",
            "charSequence"
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/google/common/hash/Hasher;->putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method
