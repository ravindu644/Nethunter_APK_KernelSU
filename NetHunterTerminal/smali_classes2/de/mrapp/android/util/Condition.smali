.class public final Lde/mrapp/android/util/Condition;
.super Ljava/lang/Object;
.source "Condition.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureAtLeast(DDLjava/lang/String;)V
    .locals 6

    const-class v5, Ljava/lang/IllegalArgumentException;

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lde/mrapp/android/util/Condition;->ensureAtLeast(DDLjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureAtLeast(DDLjava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    invoke-static {p4, p5}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static ensureAtLeast(FFLjava/lang/String;)V
    .locals 1

    const-class v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, p2, v0}, Lde/mrapp/android/util/Condition;->ensureAtLeast(FFLjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureAtLeast(FFLjava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    invoke-static {p2, p3}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static ensureAtLeast(IILjava/lang/String;)V
    .locals 1

    const-class v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, p2, v0}, Lde/mrapp/android/util/Condition;->ensureAtLeast(IILjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureAtLeast(IILjava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    if-ge p0, p1, :cond_0

    invoke-static {p2, p3}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static ensureAtLeast(JJLjava/lang/String;)V
    .locals 6

    const-class v5, Ljava/lang/IllegalArgumentException;

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lde/mrapp/android/util/Condition;->ensureAtLeast(JJLjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureAtLeast(JJLjava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    invoke-static {p4, p5}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static ensureAtLeast(SSLjava/lang/String;)V
    .locals 1

    const-class v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, p2, v0}, Lde/mrapp/android/util/Condition;->ensureAtLeast(SSLjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureAtLeast(SSLjava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SS",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    if-ge p0, p1, :cond_0

    invoke-static {p2, p3}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static ensureAtMaximum(DDLjava/lang/String;)V
    .locals 6

    const-class v5, Ljava/lang/IllegalArgumentException;

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lde/mrapp/android/util/Condition;->ensureAtMaximum(DDLjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureAtMaximum(DDLjava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    invoke-static {p4, p5}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static ensureAtMaximum(FFLjava/lang/String;)V
    .locals 1

    const-class v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, p2, v0}, Lde/mrapp/android/util/Condition;->ensureAtMaximum(FFLjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureAtMaximum(FFLjava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    invoke-static {p2, p3}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static ensureAtMaximum(IILjava/lang/String;)V
    .locals 1

    const-class v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, p2, v0}, Lde/mrapp/android/util/Condition;->ensureAtMaximum(IILjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureAtMaximum(IILjava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    if-le p0, p1, :cond_0

    invoke-static {p2, p3}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static ensureAtMaximum(JJLjava/lang/String;)V
    .locals 6

    const-class v5, Ljava/lang/IllegalArgumentException;

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lde/mrapp/android/util/Condition;->ensureAtMaximum(JJLjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureAtMaximum(JJLjava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    invoke-static {p4, p5}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static ensureAtMaximum(SSLjava/lang/String;)V
    .locals 1

    const-class v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, p2, v0}, Lde/mrapp/android/util/Condition;->ensureAtMaximum(SSLjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureAtMaximum(SSLjava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SS",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    if-le p0, p1, :cond_0

    invoke-static {p2, p3}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static ensureEqual(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const-class v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, p2, v0}, Lde/mrapp/android/util/Condition;->ensureEqual(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureEqual(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    invoke-static {p2, p3}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_2
    return-void
.end method

.method public static ensureFalse(ZLjava/lang/String;)V
    .locals 1

    const-class v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, v0}, Lde/mrapp/android/util/Condition;->ensureFalse(ZLjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureFalse(ZLjava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static ensureFileExists(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    const-class v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, v0}, Lde/mrapp/android/util/Condition;->ensureFileExists(Ljava/io/File;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureFileExists(Ljava/io/File;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1, p2}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static ensureFileIsDirectory(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    const-class v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, v0}, Lde/mrapp/android/util/Condition;->ensureFileIsDirectory(Ljava/io/File;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureFileIsDirectory(Ljava/io/File;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1, p2}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static ensureFileIsNoDirectory(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    const-class v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, v0}, Lde/mrapp/android/util/Condition;->ensureFileIsNoDirectory(Ljava/io/File;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureFileIsNoDirectory(Ljava/io/File;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1, p2}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static ensureGreater(DDLjava/lang/String;)V
    .locals 6

    const-class v5, Ljava/lang/IllegalArgumentException;

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lde/mrapp/android/util/Condition;->ensureGreater(DDLjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureGreater(DDLjava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    cmpg-double v0, p0, p2

    if-gtz v0, :cond_0

    invoke-static {p4, p5}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static ensureGreater(FFLjava/lang/String;)V
    .locals 1

    const-class v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, p2, v0}, Lde/mrapp/android/util/Condition;->ensureGreater(FFLjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureGreater(FFLjava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    invoke-static {p2, p3}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static ensureGreater(IILjava/lang/String;)V
    .locals 1

    const-class v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, p2, v0}, Lde/mrapp/android/util/Condition;->ensureGreater(IILjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureGreater(IILjava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    if-gt p0, p1, :cond_0

    invoke-static {p2, p3}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static ensureGreater(JJLjava/lang/String;)V
    .locals 6

    const-class v5, Ljava/lang/IllegalArgumentException;

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lde/mrapp/android/util/Condition;->ensureGreater(JJLjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureGreater(JJLjava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    invoke-static {p4, p5}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static ensureGreater(SSLjava/lang/String;)V
    .locals 1

    const-class v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, p2, v0}, Lde/mrapp/android/util/Condition;->ensureGreater(SSLjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureGreater(SSLjava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SS",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    if-gt p0, p1, :cond_0

    invoke-static {p2, p3}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static ensureNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    const-class v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, v0}, Lde/mrapp/android/util/Condition;->ensureNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static ensureNotEmpty(Ljava/lang/Iterable;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-class v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, v0}, Lde/mrapp/android/util/Condition;->ensureNotEmpty(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureNotEmpty(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1, p2}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static ensureNotEqual(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const-class v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, p2, v0}, Lde/mrapp/android/util/Condition;->ensureNotEqual(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureNotEqual(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    invoke-static {p2, p3}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_2
    return-void
.end method

.method public static ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const-class v0, Ljava/lang/NullPointerException;

    invoke-static {p0, p1, v0}, Lde/mrapp/android/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {p1, p2}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static ensureSmaller(DDLjava/lang/String;)V
    .locals 6

    const-class v5, Ljava/lang/IllegalArgumentException;

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lde/mrapp/android/util/Condition;->ensureSmaller(DDLjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureSmaller(DDLjava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    cmpl-double v0, p0, p2

    if-ltz v0, :cond_0

    invoke-static {p4, p5}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static ensureSmaller(FFLjava/lang/String;)V
    .locals 1

    const-class v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, p2, v0}, Lde/mrapp/android/util/Condition;->ensureSmaller(FFLjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureSmaller(FFLjava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_0

    invoke-static {p2, p3}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static ensureSmaller(IILjava/lang/String;)V
    .locals 1

    const-class v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, p2, v0}, Lde/mrapp/android/util/Condition;->ensureSmaller(IILjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureSmaller(IILjava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    if-lt p0, p1, :cond_0

    invoke-static {p2, p3}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static ensureSmaller(JJLjava/lang/String;)V
    .locals 6

    const-class v5, Ljava/lang/IllegalArgumentException;

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lde/mrapp/android/util/Condition;->ensureSmaller(JJLjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureSmaller(JJLjava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    invoke-static {p4, p5}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static ensureSmaller(SSLjava/lang/String;)V
    .locals 1

    const-class v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, p2, v0}, Lde/mrapp/android/util/Condition;->ensureSmaller(SSLjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureSmaller(SSLjava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SS",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    if-lt p0, p1, :cond_0

    invoke-static {p2, p3}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static ensureTrue(ZLjava/lang/String;)V
    .locals 1

    const-class v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, v0}, Lde/mrapp/android/util/Condition;->ensureTrue(ZLjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static ensureTrue(ZLjava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {p1, p2}, Lde/mrapp/android/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method private static throwException(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/RuntimeException;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    :goto_0
    throw p1
.end method
