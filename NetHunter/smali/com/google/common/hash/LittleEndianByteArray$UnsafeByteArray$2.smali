.class final enum Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray$2;
.super Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;
.source "LittleEndianByteArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;-><init>(Ljava/lang/String;ILcom/google/common/hash/LittleEndianByteArray$1;)V

    return-void
.end method


# virtual methods
.method public getLongLittleEndian([BI)J
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "offset"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->access$200()Lsun/misc/Unsafe;

    move-result-object v0

    int-to-long v1, p2

    invoke-static {}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->access$100()I

    move-result p2

    int-to-long v3, p2

    add-long/2addr v1, v3

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public putLongLittleEndian([BIJ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "array",
            "offset",
            "value"
        }
    .end annotation

    invoke-static {p3, p4}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v4

    invoke-static {}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->access$200()Lsun/misc/Unsafe;

    move-result-object v0

    int-to-long p2, p2

    invoke-static {}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->access$100()I

    move-result p4

    int-to-long v1, p4

    add-long v2, p2, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method
