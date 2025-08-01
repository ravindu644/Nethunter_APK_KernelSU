.class public Lcom/hijacker/BoundedBufferedReader;
.super Ljava/io/Reader;
.source "BoundedBufferedReader.java"


# instance fields
.field private buf:[C

.field private end:I

.field private in:Ljava/io/Reader;

.field private lastWasCR:Z

.field private mark:I

.field private markLimit:I

.field private markedLastWasCR:Z

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lcom/hijacker/BoundedBufferedReader;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/hijacker/BoundedBufferedReader;->mark:I

    iput v0, p0, Lcom/hijacker/BoundedBufferedReader;->markLimit:I

    if-lez p2, :cond_0

    iput-object p1, p0, Lcom/hijacker/BoundedBufferedReader;->in:Ljava/io/Reader;

    new-array p1, p2, [C

    iput-object p1, p0, Lcom/hijacker/BoundedBufferedReader;->buf:[C

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkNotClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/hijacker/BoundedBufferedReader;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedReader is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkOffsetAndCount(III)V
    .locals 3

    or-int v0, p1, p2

    if-ltz v0, :cond_0

    if-gt p1, p0, :cond_0

    sub-int v0, p0, p1

    if-lt v0, p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "length: %s, offset: %d, count: %d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fillBuf()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/hijacker/BoundedBufferedReader;->mark:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    iget v3, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/hijacker/BoundedBufferedReader;->markLimit:I

    if-lt v3, v4, :cond_0

    goto :goto_2

    :cond_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hijacker/BoundedBufferedReader;->buf:[C

    array-length v3, v0

    if-le v4, v3, :cond_2

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    if-le v0, v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    new-array v0, v4, [C

    iget-object v3, p0, Lcom/hijacker/BoundedBufferedReader;->buf:[C

    array-length v4, v3

    invoke-static {v3, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/hijacker/BoundedBufferedReader;->buf:[C

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/hijacker/BoundedBufferedReader;->mark:I

    if-lez v0, :cond_3

    iget-object v3, p0, Lcom/hijacker/BoundedBufferedReader;->buf:[C

    array-length v4, v3

    sub-int/2addr v4, v0

    invoke-static {v3, v0, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    iget v3, p0, Lcom/hijacker/BoundedBufferedReader;->mark:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    iget v0, p0, Lcom/hijacker/BoundedBufferedReader;->end:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/hijacker/BoundedBufferedReader;->end:I

    iput v2, p0, Lcom/hijacker/BoundedBufferedReader;->mark:I

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/hijacker/BoundedBufferedReader;->in:Ljava/io/Reader;

    iget-object v2, p0, Lcom/hijacker/BoundedBufferedReader;->buf:[C

    iget v3, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    array-length v4, v2

    sub-int/2addr v4, v3

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-eq v0, v1, :cond_4

    iget v1, p0, Lcom/hijacker/BoundedBufferedReader;->end:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/hijacker/BoundedBufferedReader;->end:I

    :cond_4
    return v0

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/hijacker/BoundedBufferedReader;->in:Ljava/io/Reader;

    iget-object v3, p0, Lcom/hijacker/BoundedBufferedReader;->buf:[C

    array-length v4, v3

    invoke-virtual {v0, v3, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-lez v0, :cond_6

    iput v1, p0, Lcom/hijacker/BoundedBufferedReader;->mark:I

    iput v2, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    iput v0, p0, Lcom/hijacker/BoundedBufferedReader;->end:I

    :cond_6
    return v0
.end method

.method private isClosed()Z
    .locals 1

    iget-object v0, p0, Lcom/hijacker/BoundedBufferedReader;->buf:[C

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeSwallowLF()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/hijacker/BoundedBufferedReader;->lastWasCR:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hijacker/BoundedBufferedReader;->chompNewline()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hijacker/BoundedBufferedReader;->lastWasCR:Z

    :cond_0
    return-void
.end method

.method private readChar()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    iget v1, p0, Lcom/hijacker/BoundedBufferedReader;->end:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/hijacker/BoundedBufferedReader;->fillBuf()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hijacker/BoundedBufferedReader;->buf:[C

    iget v1, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    aget-char v0, v0, v1

    return v0
.end method


# virtual methods
.method final chompNewline()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    iget v1, p0, Lcom/hijacker/BoundedBufferedReader;->end:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/hijacker/BoundedBufferedReader;->fillBuf()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/hijacker/BoundedBufferedReader;->buf:[C

    iget v1, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    aget-char v0, v0, v1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    :cond_1
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hijacker/BoundedBufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/hijacker/BoundedBufferedReader;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/hijacker/BoundedBufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hijacker/BoundedBufferedReader;->buf:[C

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public mark(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/hijacker/BoundedBufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/hijacker/BoundedBufferedReader;->checkNotClosed()V

    iput p1, p0, Lcom/hijacker/BoundedBufferedReader;->markLimit:I

    iget p1, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    iput p1, p0, Lcom/hijacker/BoundedBufferedReader;->mark:I

    iget-boolean p1, p0, Lcom/hijacker/BoundedBufferedReader;->lastWasCR:Z

    iput-boolean p1, p0, Lcom/hijacker/BoundedBufferedReader;->markedLastWasCR:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "markLimit < 0:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hijacker/BoundedBufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/hijacker/BoundedBufferedReader;->checkNotClosed()V

    invoke-direct {p0}, Lcom/hijacker/BoundedBufferedReader;->readChar()I

    move-result v1

    iget-boolean v2, p0, Lcom/hijacker/BoundedBufferedReader;->lastWasCR:Z

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/hijacker/BoundedBufferedReader;->readChar()I

    move-result v1

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/hijacker/BoundedBufferedReader;->lastWasCR:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read([CII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hijacker/BoundedBufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/hijacker/BoundedBufferedReader;->checkNotClosed()V

    array-length v1, p1

    invoke-static {v1, p2, p3}, Lcom/hijacker/BoundedBufferedReader;->checkOffsetAndCount(III)V

    if-nez p3, :cond_0

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/hijacker/BoundedBufferedReader;->maybeSwallowLF()V

    move v1, p3

    :cond_1
    const/4 v2, -0x1

    if-lez v1, :cond_7

    iget v3, p0, Lcom/hijacker/BoundedBufferedReader;->end:I

    iget v4, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_3

    if-lt v3, v1, :cond_2

    move v3, v1

    :cond_2
    iget-object v4, p0, Lcom/hijacker/BoundedBufferedReader;->buf:[C

    iget v5, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    invoke-static {v4, v5, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    add-int/2addr p2, v3

    sub-int/2addr v1, v3

    :cond_3
    if-eqz v1, :cond_7

    if-ge v1, p3, :cond_4

    iget-object v3, p0, Lcom/hijacker/BoundedBufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v3}, Ljava/io/Reader;->ready()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/hijacker/BoundedBufferedReader;->mark:I

    if-eq v3, v2, :cond_5

    iget v3, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    iget v4, p0, Lcom/hijacker/BoundedBufferedReader;->mark:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/hijacker/BoundedBufferedReader;->markLimit:I

    if-lt v3, v4, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/hijacker/BoundedBufferedReader;->buf:[C

    array-length v3, v3

    if-lt v1, v3, :cond_6

    iget-object v3, p0, Lcom/hijacker/BoundedBufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v3, p1, p2, v1}, Ljava/io/Reader;->read([CII)I

    move-result p1

    if-lez p1, :cond_7

    sub-int/2addr v1, p1

    iput v2, p0, Lcom/hijacker/BoundedBufferedReader;->mark:I

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/hijacker/BoundedBufferedReader;->fillBuf()I

    move-result v3

    if-ne v3, v2, :cond_1

    :cond_7
    :goto_0
    sub-int/2addr p3, v1

    if-lez p3, :cond_8

    monitor-exit v0

    return p3

    :cond_8
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public readLine(I)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hijacker/BoundedBufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/hijacker/BoundedBufferedReader;->checkNotClosed()V

    invoke-direct {p0}, Lcom/hijacker/BoundedBufferedReader;->maybeSwallowLF()V

    iget v1, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    :goto_0
    iget v2, p0, Lcom/hijacker/BoundedBufferedReader;->end:I

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/16 v5, 0xd

    const/4 v6, 0x1

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/hijacker/BoundedBufferedReader;->buf:[C

    aget-char v2, v2, v1

    if-eq v2, v4, :cond_1

    if-ne v2, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v4, Ljava/lang/String;

    iget-object v7, p0, Lcom/hijacker/BoundedBufferedReader;->buf:[C

    iget v8, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    iget v9, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    sub-int v9, v1, v9

    invoke-static {v9, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {v4, v7, v8, p1}, Ljava/lang/String;-><init>([CII)V

    add-int/2addr v1, v6

    iput v1, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    if-ne v2, v5, :cond_2

    const/4 v3, 0x1

    :cond_2
    iput-boolean v3, p0, Lcom/hijacker/BoundedBufferedReader;->lastWasCR:Z

    monitor-exit v0

    return-object v4

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hijacker/BoundedBufferedReader;->end:I

    iget v7, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    sub-int/2addr v2, v7

    add-int/lit8 v2, v2, 0x50

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lcom/hijacker/BoundedBufferedReader;->buf:[C

    iget v7, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    iget v8, p0, Lcom/hijacker/BoundedBufferedReader;->end:I

    iget v9, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    sub-int/2addr v8, v9

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    sub-int v9, p1, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v1, v2, v7, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :goto_2
    iget v2, p0, Lcom/hijacker/BoundedBufferedReader;->end:I

    iput v2, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    invoke-direct {p0}, Lcom/hijacker/BoundedBufferedReader;->fillBuf()I

    move-result v2

    const/4 v7, -0x1

    if-ne v2, v7, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    monitor-exit v0

    return-object p1

    :cond_5
    iget v2, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    :goto_4
    iget v7, p0, Lcom/hijacker/BoundedBufferedReader;->end:I

    if-ge v2, v7, :cond_9

    iget-object v7, p0, Lcom/hijacker/BoundedBufferedReader;->buf:[C

    aget-char v7, v7, v2

    if-eq v7, v4, :cond_7

    if-ne v7, v5, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    iget-object v4, p0, Lcom/hijacker/BoundedBufferedReader;->buf:[C

    iget v8, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    iget v9, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    sub-int v9, v2, v9

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    sub-int/2addr p1, v10

    invoke-static {v9, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v1, v4, v8, p1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    add-int/2addr v2, v6

    iput v2, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    if-ne v7, v5, :cond_8

    const/4 v3, 0x1

    :cond_8
    iput-boolean v3, p0, Lcom/hijacker/BoundedBufferedReader;->lastWasCR:Z

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_9
    iget-object v2, p0, Lcom/hijacker/BoundedBufferedReader;->buf:[C

    iget v7, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    iget v8, p0, Lcom/hijacker/BoundedBufferedReader;->end:I

    iget v9, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    sub-int/2addr v8, v9

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    sub-int v9, p1, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v1, v2, v7, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ready()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hijacker/BoundedBufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/hijacker/BoundedBufferedReader;->checkNotClosed()V

    iget v1, p0, Lcom/hijacker/BoundedBufferedReader;->end:I

    iget v2, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    sub-int/2addr v1, v2

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/hijacker/BoundedBufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->ready()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hijacker/BoundedBufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/hijacker/BoundedBufferedReader;->checkNotClosed()V

    iget v1, p0, Lcom/hijacker/BoundedBufferedReader;->mark:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/hijacker/BoundedBufferedReader;->mark:I

    iput v1, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    iget-boolean v1, p0, Lcom/hijacker/BoundedBufferedReader;->markedLastWasCR:Z

    iput-boolean v1, p0, Lcom/hijacker/BoundedBufferedReader;->lastWasCR:Z

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid mark"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public skip(J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    iget-object v0, p0, Lcom/hijacker/BoundedBufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/hijacker/BoundedBufferedReader;->checkNotClosed()V

    iget v1, p0, Lcom/hijacker/BoundedBufferedReader;->end:I

    iget v2, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v3, v1, p1

    if-ltz v3, :cond_0

    iget v1, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    long-to-int v2, v1

    iput v2, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    monitor-exit v0

    return-wide p1

    :cond_0
    iget v1, p0, Lcom/hijacker/BoundedBufferedReader;->end:I

    iget v2, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    iget v3, p0, Lcom/hijacker/BoundedBufferedReader;->end:I

    iput v3, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    :goto_0
    cmp-long v3, v1, p1

    if-gez v3, :cond_3

    invoke-direct {p0}, Lcom/hijacker/BoundedBufferedReader;->fillBuf()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    monitor-exit v0

    return-wide v1

    :cond_1
    iget v3, p0, Lcom/hijacker/BoundedBufferedReader;->end:I

    iget v4, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long v5, p1, v1

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    iget v1, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    int-to-long v1, v1

    add-long/2addr v1, v5

    long-to-int v2, v1

    iput v2, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    monitor-exit v0

    return-wide p1

    :cond_2
    iget v3, p0, Lcom/hijacker/BoundedBufferedReader;->end:I

    iget v4, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    iget v3, p0, Lcom/hijacker/BoundedBufferedReader;->end:I

    iput v3, p0, Lcom/hijacker/BoundedBufferedReader;->pos:I

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "charCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipLines(I)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/hijacker/BoundedBufferedReader;->readLine(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    if-lt v1, p1, :cond_1

    :catch_0
    :cond_2
    return v1
.end method
