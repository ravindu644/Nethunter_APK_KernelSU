.class Lcom/google/common/io/BaseEncoding$3;
.super Ljava/io/Reader;
.source "BaseEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/BaseEncoding;->ignoringReader(Ljava/io/Reader;Ljava/lang/String;)Ljava/io/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$delegate:Ljava/io/Reader;

.field final synthetic val$toIgnore:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/Reader;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$delegate",
            "val$toIgnore"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$3;->val$delegate:Ljava/io/Reader;

    iput-object p2, p0, Lcom/google/common/io/BaseEncoding$3;->val$toIgnore:Ljava/lang/String;

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$3;->val$delegate:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$3;->val$delegate:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$3;->val$toIgnore:Ljava/lang/String;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    :cond_1
    return v0
.end method

.method public read([CII)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cbuf",
            "off",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
